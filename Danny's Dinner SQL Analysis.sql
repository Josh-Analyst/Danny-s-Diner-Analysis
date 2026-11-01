CREATE SCHEMA dannys_diner;
SET search_path = dannys_diner;

CREATE TABLE sales (
  "customer_id" VARCHAR(1),
  "order_date" DATE,
  "product_id" INTEGER
);

INSERT INTO sales
  ("customer_id", "order_date", "product_id")
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  "product_id" INTEGER,
  "product_name" VARCHAR(5),
  "price" INTEGER
);

INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  "customer_id" VARCHAR(1),
  "join_date" DATE
);

INSERT INTO members
  ("customer_id", "join_date")
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');

-- Run all sales table
  SELECT *
  FROM sales

-- Run all menu table
  SELECT *
  FROM menu

-- Run all members table
SELECT *
FROM members

--1. What is the total amount each customer spent at the restaurant?
SELECT customer_id,
       SUM(price) AS Total_price
FROM sales as s
INNER JOIN menu as m
ON s.product_id = m.product_id
group by customer_id

--2. How many days has each customer visited the restaurant?
SELECT customer_id,
       COUNT(order_date) AS Number_of_customer_visted
FROM sales
Group by customer_id

-- 3. What was the first item from the menu purchased by each customer?
SELECT s.customer_id,
       m.product_name
FROM menu AS m
INNER JOIN sales AS s
ON m.product_id = s.product_id
WHERE order_date = '2021-01-01'

-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT customer_id,
       SUM(price) AS Total_price,
       Count(customer_id) AS number_of_time_purchased
FROM sales as s
INNER JOIN menu as m
ON s.product_id = m.product_id
WHERE customer_id = 'A'
group by customer_id;

-- 5. Which item was the most popular for each customer?
SELECT
    s.customer_id,
    m.product_name,
    COUNT(*) AS purchase_count
FROM sales AS s
INNER JOIN menu AS m
    ON s.product_id = m.product_id
GROUP BY
    s.customer_id,
    m.product_name
HAVING COUNT(*) = (
    SELECT MAX(product_count)
    FROM (
        SELECT COUNT(*) AS product_count
        FROM sales AS s2
        WHERE s2.customer_id = s.customer_id
        GROUP BY s2.product_id
    ) AS ProductCounts
)
ORDER BY s.customer_id;