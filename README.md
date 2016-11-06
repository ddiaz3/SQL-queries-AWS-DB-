# SQL-queries-AWS-DB

Just a few examples of Postgre queries ran on a AWS DB during a training. A few simple joins ran during the end 

SELECT item_description, item_no, shelf_price
FROM products 
WHERE shelf_price IS NULL OR item_no > 902
LIMIT 10 

SELECT COUNT (*)
FROM PRODUCTS

SELECT LOWER(item_description), UPPER(item_description), INITCAP(LOWER(item_description))
FROM products 
LIMIT 10 

SELECT INITCAP('abcdefg')
FROM DUAL
---oracle dummy table uses dual 

SELECT'Daniel'||' '||'Smith'

SELECT MOD(17,3)
SELECT 17/3

SELECT 5*6/(10+2)

SELECT TRUNC(400.67)
SELECT ROUND(436.67,-1)

SELECT LPAD ('ABCDEFG',',',3)
SELECT LENGTH('ABCDFG')

SELECT MAX(shelf_price), MIN(shelf_price), TRUNC(AVG(shelf_price)), SUM(shelf_price)
FROM products

SELECT COUNT (*)
FROM SALES  3049913

SELECT DISTINCT category_name
FROM SALES

SELECT COUNT(DISTINCT vendor_name)
FROM products 

--finding most expensive item in cateogory name column 

SELECT category_name, MAX(shelf_price)
FROM products 
GROUP BY category_name
HAVING MAX(shelf_price) > 50 
ORDER BY MAX(shelf_price) DESC

--alias are used to
SELECT pack, shelf_price, TRUNC(shelf_price/pack) AS price_per_pack
FROM products 
LIMIT 100 

SELECT now(), timeofday()
SELECT current_date, current_time, current_timestamp, localtime 
SELECT AGE(date '11-JAN-94')

SELECT AGE(date '08-SEP-70', date '11-JAN-1994')

SELECT AGE(timestamp'11-JAN-94')

SELECT DATE_PART('hour', current_timestamp), DATE_PART('day', current_timestamp)

--Joining tables (example)join keyword

SELECT e.first_name,e.last_name,d.department_name
FROM employees e JOIN departments d
Where e.department_id = d.department_id 
LIMIT 10 
'
#joins examples 

SELECT sa.category_name,sa.description, st.name, st.store_address 
FROM sales sa
LEFT JOIN stores st 
USING (store)
WHERE st.store_address is NULL 

--join with products table and sales table 

SELECT item_no,description, p.category_name,vendor_name, item, s.category_name
FROM products p
LEFT JOIN sales s 
ON p.item_no = s.item 
WHERE s.item IS NULL 
AND p.category_name LIKE '%TEQ%'
ORDER BY vendor_name

SELECT item_no,description, p.category_name,vendor_name, item, s.category_name
FROM products p
LEFT JOIN sales s 


SELECT sa.category_name,sa.description, st.name, st.store_address 
FROM sales sa
LEFT JOIN stores st 
USING (store)
WHERE st.store_address is NULL 

--join with products table and sales table 

SELECT item_no,description, p.category_name,vendor_name, item, s.category_name
FROM products p
LEFT JOIN sales s 
ON p.item_no = s.item 
WHERE s.item IS NULL 
AND p.category_name LIKE '%TEQ%'
ORDER BY vendor_name

SELECT item_no,description, p.category_name,vendor_name, item, s.category_name
FROM products p
LEFT JOIN sales s 
ON p.item_no = s.item 
WHERE s.item IS NULL 







