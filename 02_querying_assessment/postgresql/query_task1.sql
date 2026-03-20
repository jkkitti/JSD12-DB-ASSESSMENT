-- Task 1: Sides Menu Board
-- The owner wants to update the printed menu board that displays only the side dishes.
-- They need a list of every item in the 'Side' category along with its current price,
-- so the designer can produce an accurate board without having to check each item manually.
--
-- Hint: Write a query to find the name and price of all menu items that are in the 'Side' category.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task1_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.

-- ---------------------------------------------------------------------
-- Your thinking:
-- ---------------------------------------------------------------------
/* คุณเข้าใจโจทย์นี้ว่าอย่างไร
ให้แสดงเมนูทั้งหมดที่อยู่ในหมวด 'Side' (ของทานเล่น)
พร้อมกับ ชื่อเมนู (name) และ ราคา (price)

ต้องใช้ข้อมูลอะไรบ้าง, ใช้ table ไหน
-- ชื่อเมนู (name) และ ราคา (price)
-- โดยใช้ข้อมูลจากตาราง MenuItems เท่านั้น เพราะในตารางนี้มี name, price, category

ใช้แนวคิด SQL อะไร 
ใช้ SELECT เพื่อเลือก column ที่ต้องการ (name, price)
ใช้ FROM เพื่อระบุ table (MenuItems)
ใช้ WHERE เพื่อกรองเฉพาะ category = 'Side'
*/

SELECT name, price
FROM MenuItems
WHERE category = 'Side';