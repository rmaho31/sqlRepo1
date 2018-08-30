INSERT INTO ACCOUNTS VALUES 
(6,'Ghost','8586','0');

UPDATE accounts SET fees = 100 WHERE balance <= 100000;

INSERT INTO accounts (account_holder, balance, fees) VALUES
('Jackie Chan', '324324', '100');

insert INTO accounts VALUES
(11, 'Batman', '234943923', '100');

INSERT INTO accounts VALUES
(12, 'Robin', '234', '100');

INSERT INTO accounts (account_holder, balance, fees) VALUES
('Gypsy','2000','100'),
('Lone Ranger','53322','100');

DELETE FROM accounts where ID = 16;

DELETE FROM accounts where ID = 18;

UPDATE accounts SET fees = 250;

UPDATE accounts SET fees = 100 WHERE balance > 100000;