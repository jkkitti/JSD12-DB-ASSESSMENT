// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

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
สำหรับโจทย์นี้ ผมเข้าใจว่าผู้จัดการต้องการตรวจสอบผลงานของพนักงานชื่อ Jane Doe
โดยต้องการดูเฉพาะข้อมูลของออเดอร์ที่พนักงานคนนี้เป็นผู้ดูแล

ข้อมูลที่ต้องการมีเพียง:
วันที่สั่งซื้อ (order_date)
มูลค่ารวมของออเดอร์ (total_price)

ดังนั้น:
ข้อมูลจะอยู่ใน collection orders
ต้องกรองข้อมูลเฉพาะออเดอร์ที่เป็นของ "Jane Doe"
ใช้เงื่อนไขในการค้นหา (filter) เช่น staff_name: "Jane Doe"
และเลือกเฉพาะ field ที่ต้องการด้วย projection

แนวคิด:
ใช้ .find() เพื่อค้นหาข้อมูล
ใช้เงื่อนไข filter เพื่อเลือกเฉพาะ Jane Doe
ใช้ projection เพื่อแสดงเฉพาะ order_date และ total_price
*/

use("chrome-burger-db");

db.orders.find(
  {
    "staff.first_name": "Jane",
    "staff.last_name": "Doe",
  },
  {
    _id: 0,
    order_date: 1,
    total_price: 1,
  },
);
