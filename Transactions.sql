-- ============================================
 Transactions & ACID Properties
-- ============================================

-- Create database
CREATE DATABASE IF NOT EXISTS transaction_demo;
USE transaction_demo;

-- ============================================
-- Create bank_accounts table
-- ============================================
CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY,
    holder_name VARCHAR(50),
    balance DECIMAL(10,2)
);

-- ============================================
-- Insert initial data
-- ============================================
INSERT INTO bank_accounts VALUES
(1, 'Alice', 5000.00),
(2, 'Bob', 3000.00);

-- ============================================
-- Example 1: Successful transaction (COMMIT)
-- ============================================
START TRANSACTION;

UPDATE bank_accounts
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE bank_accounts
SET balance = balance + 1000
WHERE account_id = 2;

COMMIT;

-- ============================================
-- Example 2: Failed transaction (ROLLBACK)
-- ============================================
START TRANSACTION;

UPDATE bank_accounts
SET balance = balance - 10000
WHERE account_id = 1;

-- Error condition simulated
ROLLBACK;

-- ============================================
-- Set isolation level to prevent dirty reads
-- ============================================
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- ============================================
-- Example 3: Concurrent update handling
-- ============================================
START TRANSACTION;

SELECT balance
FROM bank_accounts
WHERE account_id = 1
FOR UPDATE;

UPDATE bank_accounts
SET balance = balance - 500
WHERE account_id = 1;

COMMIT;

-- ============================================
-- Check final balances
-- ============================================
SELECT * FROM bank_accounts;
