-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
--
-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js

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
ผู้จัดการต้องการ รายชื่อพนักงานที่เป็น Cook (พ่อครัว/แม่ครัว)
โดยต้องการแค่:
first_name (ชื่อจริง)
last_name (นามสกุล)

ข้อมูลที่ต้องใช้:
ใช้ข้อมูลจาก 1 ตาราง 
Staff 
first_name ชื่อ
last_name นามสกุล
role ตำแหน่งงาน

Logic ที่ใช้:
ใช้ SELECT เพื่อเลือก column ที่ต้องการ (first_name, last_name)
ใช้ FROM เพื่อระบุ table (Staff)
ใช้ WHERE เพื่อกรองเฉพาะพนักงานที่มี role = 'Cook'
*/

SELECT first_name, last_name
FROM Staff
WHERE role = 'Cook';