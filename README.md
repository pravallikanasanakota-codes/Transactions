# Transactions & ACID Properties

## 

This task demonstrates the use of **SQL transactions** and explains the **ACID properties** to ensure data consistency and safety in database systems.

---

## 📌 Task Objectives
- Execute multiple SQL statements as a single transaction
- Use `START TRANSACTION`, `COMMIT`, and `ROLLBACK`
- Simulate failure scenarios
- Understand and apply ACID properties
- Handle concurrent data updates
- Prevent dirty reads using isolation levels
- Map transactions to a real-world banking system

---

## 🛠 Tools Used
- MySQL Workbench  
(Alternatives: PostgreSQL / SQLite)

---

## 🗄 Database Description
A simple **banking system** is implemented using a `bank_accounts` table to demonstrate:
- Money transfer
- Rollback on failure
- Concurrent update handling

---

## 🔐 ACID Properties Explained
- **Atomicity**: Ensures all operations in a transaction succeed or none do  
- **Consistency**: Maintains database rules and constraints  
- **Isolation**: Prevents interference between concurrent transactions  
- **Durability**: Ensures committed data is permanently saved  

---

## 💻 SQL Script
The SQL script includes:
- Database and table creation
- Sample data insertion
- Successful transaction using `COMMIT`
- Failed transaction using `ROLLBACK`
- Isolation level configuration
- Concurrent transaction handling

File:  
`task13_transactions.sql`

---

## ✅ Final Outcome
- Transactions executed successfully
- Data consistency maintained
- Rollback handled failures correctly
- Isolation level used to prevent dirty reads
- Real-world banking scenario demonstrated

---

## 📂 Repository Structure
