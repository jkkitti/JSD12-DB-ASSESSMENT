-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
--
/*
ในโจทย์นี้ ผมเข้าใจว่า:
เจ้าของร้านต้องการดูว่า พนักงานแต่ละคนทำออเดอร์ไปกี่รายการ
เพื่อนำไปใช้ประเมินว่าใครทำงานหนักที่สุด
และต้องการให้ เรียงจากคนที่ทำมากที่สุด ไป น้อยที่สุด

ข้อมูลที่ต้องใช้:
ใช้ 2 ตาราง
Staff
staff_id ใช้เชื่อมกับ Orders
first_name, last_name ใช้แสดงชื่อพนักงาน

Orders
order_id ใช้นับจำนวนออเดอร์
staff_id บอกว่าออเดอร์นี้ใครเป็นคน

Logic ที่ใช้:
ใช้ JOIN เพื่อเชื่อม Staff กับ Orders
ใช้ CONCAT เพื่อ ชื่อ + นามสกุล เป็น full name
ใช้ COUNT() เพื่อนับจำนวน order ต่อคน
ใช้ GROUP BY เพื่อรวมข้อมูลตามพนักงานแต่ละคน
ใช้ ORDER BY เพื่อเรียงจากมาก ไป น้อย
*/

/*
SELECT
    CONCAT(s.first_name, ' ', s.last_name) AS full_name,
    COUNT(o.order_id) AS total_orders
FROM Staff s
JOIN Orders o ON s.staff_id = o.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY total_orders DESC;
*/

SELECT
    CONCAT(s.first_name, ' ', s.last_name) AS full_name,
    COUNT(o.order_id) AS total_orders
FROM Staff s
JOIN Orders o ON s.staff_id = o.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY total_orders DESC;