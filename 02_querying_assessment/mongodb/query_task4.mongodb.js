// Task 4: Total Revenue Summary
// At the end of the trading period, the owner wants a single figure that shows how much revenue
// the truck has generated across all recorded orders. This number will be used in their
// financial summary report, so the result should be returned as a single value named total_revenue.
//
// Hint: Write an aggregation query on the orders collection to calculate the total revenue from all orders combined.
// The result should be a single document with a field named total_revenue.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task4_bonus.sql

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
จากโจทย์ ข้อนี้ต้องการหาผลรวมของรายได้ทั้งหมดจากทุกออเดอร์
โดยผลลัพธ์ต้องเป็นค่าเดียว สำหรับใช้ในรายงานทางการเงิน และต้องตั้งชื่อ field ว่า total_revenue

จากข้อมูลที่ให้มา
ใช้ collection ชื่อ orders
รายได้ของแต่ละออเดอร์ถูกเก็บอยู่ใน field total_price (ชนิด Decimal128)

แนวคิดที่ใช้
ต้องรวมค่าของ total_price จากทุก document
ใช้ MongoDB Aggregation Framework
ใช้ $group เพื่อรวมทุก document ให้เป็นกลุ่มเดียว โดยกำหนด _id: null
ใช้ $sum เพื่อหาผลรวมของ total_price
ตั้งชื่อผลลัพธ์เป็น total_revenue
*/

use("chrome-burger-db");

db.getCollection("orders").aggregate([
  {
    $group: {
      _id: null,
      total_revenue: { $sum: "$total_price" },
    },
  },
]);
