--#1-1
CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

--#1-2
INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Ted Theodore Logan', 17, 170, 'San Dimas', 'blue'),
('Bill S Preston Esquire', 18, 180, 'San Dimas', 'gold'),
('Tessa Schamanski', 22, 157, 'Yuba City', 'pink'),
('Levi Melton', 15, 165, 'Spanish Fork', 'purple'),
('Tom Jones', 82, 170, 'Las Vegas', 'chartreuse' );

--#1-3
SELECT * FROM person
ORDER BY height DESC;

--#1-4
SELECT * FROM person 
ORDER BY height;

--#1-5
SELECT * FROM person 
ORDER BY age DESC;

--#1-6
SELECT * FROM person 
WHERE age > 20;

--#1-7
SELECT * FROM person 
WHERE age = 18;

--#1-8
SELECT * FROM person 
WHERE age < 20 OR age > 30;

--#1-9
SELECT * FROM person 
WHERE age != 27;

--#1-10
SELECT * FROM person 
WHERE favorite_color != 'red';

--#1-11
SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';

--#1-12
SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

--#1-13
SELECT * FROM person 
WHERE favorite_color IN ('orange', 'green', 'blue');

--#1-14
SELECT * FROM person 
WHERE favorite_color IN ('yellow', 'purple');

--#2-1
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id TEXT,
    product_name TEXT,
    product_price FLOAT(2),
    quantity INTEGER
);

--#2-2
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
('Bob Ross', 'pistol ping pong ball launcher', 6.00, 1),
('Bob Ross', 'rifle ping pong ball launcher', 10.00, 3),
('Guy Fieri', 'microwave potato baker bag', 8.00, 75),
('Rachel Ray', 'stawberry apron', 15.00, 5),
('Dr Oz', 'cloth face masks', 8.00, 50);

--#2-3
SELECT * FROM orders;

--#2-4
SELECT SUM(quantity)
FROM orders;

--#2-5
SELECT SUM(quantity*product_price)
FROM orders;

--#2-6
SELECT SUM(quantity*product_price)
FROM orders
WHERE person_id = 'Bob Ross';

--#3-1
INSERT INTO artist 
(name)
VALUES
('DJ Smith'),
('Kimberly Johnson'),
('That One Guy');

--#3-2
SELECT * FROM artist 
ORDER BY name DESC
LIMIT(10);

--#3-3
SELECT * FROM artist 
ORDER BY name 
LIMIT(5);

--#3-4
SELECT * FROM artist
WHERE name LIKE 'Black%' ;

--#3-5
SELECT * FROM artist 
WHERE name LIKE '%Black%';

--#4-1
SELECT * FROM employee
WHERE city = 'Calgary';

--#4-2
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

--#4-3
SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;

--#4-4
SELECT * FROM employee
WHERE reports_to = 2;

--#4-5
SELECT COUNT(city)
FROM employee
WHERE city = 'Lethbridge';

--#5-1
SELECT COUNT(billing_country) 
FROM invoice
WHERE billing_country = 'USA';

--#5-2
SELECT MAX(total) FROM invoice;

--#5-3
SELECT MIN(total) FROM invoice;

--#5-4
SELECT * FROM invoice
WHERE total > 5;

--#5-5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

--#5-6
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN (CA, TX, AZ);

--#5-7
SELECT AVG(total)
FROM invoice;

--#5-8
SELECT SUM(total)
FROM invoice;