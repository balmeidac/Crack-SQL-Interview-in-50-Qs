--  QUESTION 1 Recyclable and Low Fat Products
--  Table: Products

--  +-------------+---------+
--  | Column Name | Type    |
--  +-------------+---------+
--  | product_id  | int     |
--  | low_fats    | enum    |
--  | recyclable  | enum    |
--  +-------------+---------+
--  product_id is the primary key (column with unique values) for this table.
--  low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
--  recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

-- QUESTION 1
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

-- The result format is in the following example.

-- Example 1:

-- Input: 
-- Products table:
-- +-------------+----------+------------+
-- | product_id  | low_fats | recyclable |
-- +-------------+----------+------------+
-- | 0           | Y        | N          |
-- | 1           | Y        | Y          |
-- | 2           | N        | Y          |
-- | 3           | Y        | Y          |
-- | 4           | N        | N          |
-- +-------------+----------+------------+
-- Output: 
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+
-- Explanation: Only products 1 and 3 are both low fat and recyclable.

-- ANSWER 1
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.

-- Select the product_id of products that meet the conditions
SELECT product_id
-- The data is selected from the products table
FROM products
-- Filter the rows where the low_fats column has a value of 'Y' (Yes, low fats)
WHERE low_fats = 'Y'
-- Additionally, filter the rows where the recyclable column also has a value of 'Y' (Yes, recyclable)
AND recyclable = 'Y';
