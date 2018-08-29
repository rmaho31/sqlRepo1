-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
USE bank_db;

-- create the Accounts table
CREATE TABLE Accounts (
  ID 		    	INT            PRIMARY KEY  AUTO_INCREMENT,
  account_holder    VARCHAR(50)    NOT NULL,
  balance    		DECIMAL(18,2)  NOT NULL,
  fees      		DECIMAL(18,2)  NOT NULL
); 

-- insert some rows into the Accounts table
INSERT INTO Accounts VALUES
(1, 'Rachel Baumann', 8,888.00, 250.0),
(2, 'Michael Page', 5444.00, 175.00),
(3, 'Angie Snyder', 3,333.00, 88.00),
(4, 'Robert Mahoney', 3,322, 88.00);

-- create Transactions table
CREATE TABLE Transactions (
  ID 		    INT 			PRIMARY KEY  AUTO_INCREMENT,
  amount    	DECIMAL(18,2)	NOT NULL,
  txn_type    	VARCHAR(10)		NOT NULL,
  account_ID    INT				NOT NULL,
  FOREIGN KEY (account_ID) REFERENCES Accounts(ID)
);

-- insert some rows into the Transactions table
INSERT INTO Transactions VALUES
(1, 500, 'Deposit', 3),
(2, -200, 'Withdrawal', 4),
(3, 200, 'Deposit', 4),
(4, 248, 'Deposit', 1);


-- create a user and grant privileges to that user
-- GRANT SELECT, INSERT, DELETE, UPDATE
-- ON mma.*
-- TO mma_user@localhost
-- IDENTIFIED BY 'sesame';