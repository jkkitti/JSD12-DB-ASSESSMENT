// Task 3: Stock Replenishment Check
// Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
// that are already well-stocked. They need a list of every ingredient with a stock level
// of 100 or more so those can be deprioritised in this week's order.
//
// Hint: Write a query to find all ingredients in the ingredients collection that have a stock_level of 100.00 or more.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task3_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
//

/*  
Your thinking
จากการอ่านโจทย์ ข้อนี้ต้องการหาวัตถุดิบที่มีสต็อกเหลืออยู่เยอะ
เพื่อช่วยให้ผู้จัดการสามารถ “ลดความสำคัญ” ในการสั่งของรอบถัดไปได้

โดยเงื่อนไขสำคัญคือ
ต้องเลือกข้อมูลจาก collection ชื่อ ingredients
สนใจ field stock_level
เลือกเฉพาะรายการที่มีค่า มากกว่าหรือเท่ากับ 100

ข้อมูลที่ต้องการ
ข้อมูลวัตถุดิบทั้งหมดที่เข้าเงื่อนไข (อาจรวม name, stock_level, unit)

แนวคิดที่ใช้
ใช้ MongoDB find() เพื่อดึงข้อมูล
ใช้ operator $gte (greater than or equal) เพื่อกรองค่า stock_level >= 100
*/

use("chrome-burger-db");

db.getCollection("ingredients").find(
  { stock_level: { $gte: Decimal128("100.00") } },
  { name: 1, stock_level: 1, unit: 1 },
);
