// Task 1: Budget Meal Deal
// The owner wants to introduce a budget-friendly meal deal promotion and needs to identify
// which menu items could be included. To qualify, an item must be priced under $10.00,
// so they can offer good value without cutting too deep into margins.
//
// Hint: Write a query to find all menu items in the menu_items collection that have a price less than 10.00.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task1_bonus.sql

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
สำหรับโจทย์นี้ ผมเข้าใจว่าเจ้าของร้านต้องการเลือกเมนูที่มีราคาถูกเพื่อทำโปรโมชัน “Budget Meal Deal”
โดยเงื่อนไขคือ เมนูต้องมีราคาต่ำกว่า 10 ดอลลาร์
ดังนั้น:
ข้อมูลที่ต้องใช้คือ ชื่อเมนู และราคา
ข้อมูลอยู่ใน collection ชื่อ menu_items
field ที่เกี่ยวข้องคือ price

แนวทางการแก้:
query ข้อมูลจาก collection menu_items
โดยกรองเฉพาะ document ที่มี price น้อยกว่า 10.00
ใช้ operator ของ MongoDB คือ $lt (less than)

หมายเหตุ:price ใน dataset เป็น Decimal128 
ดังนั้นต้องเขียนเป็น Decimal128("10.00")
ในการเปรียบเทียบให้ถูก type
*/

use("chrome-burger-db");

db.menu_items.find({
  price: { $lt: Decimal128("10.00") },
});
