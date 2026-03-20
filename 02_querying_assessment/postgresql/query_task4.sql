-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

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
ผู้จัดการต้องการรู้ว่า มีวัตถุดิบอะไรบ้างที่มาจากซัพพลายเออร์ชื่อ 'Freshest Farm Produce'
เพื่อประเมินว่าถ้าซัพพลายเออร์นี้ส่งของช้า จะกระทบกับเมนูอะไรบ้าง

ข้อมูลที่ต้องใช้:
ใช้ 2 ตาราง
Suppliers
supplier_id ใช้เชื่อมกับ Ingredients
name ใช้ filter ว่าเป็น 'Freshest Farm Produce'

Ingredients
name ชื่อวัตถุดิบที่ต้องการแสดง
supplier_id ใช้เชื่อมกับ Suppliers

Logic ที่ใช้:
ใช้ JOIN เพื่อเชื่อม Suppliers กับ Ingredients
ใช้ WHERE เพื่อกรองเฉพาะ supplier ที่ชื่อ 'Freshest Farm Produce'
ใช้ SELECT เพื่อดึงเฉพาะชื่อวัตถุดิบ
*/

SELECT i.name AS ingredient_name
FROM Ingredients i
JOIN Suppliers s ON i.supplier_id = s.supplier_id
WHERE s.name = 'Freshest Farm Produce';