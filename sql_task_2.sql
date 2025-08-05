use task_1_db;

-- Using INSERT INTO for adding rows
INSERT INTO users(FullName, UserEmail, UserAddress)
VALUES( 'vijay', 'v.vijay@example.com', 'Address1');

INSERT INTO users(FullName, UserEmail, UserAddress)
VALUES( 'sujay', 's.sujay@yahoo.com', 'Address2'),( 'ajay', 'a.ajay@oracle.com', 'Address3'),
( 'jay', 'j.jay@yahoo.com', 'Address4'),( 'raja', 'r.raja@yahoo.com', 'Address5');
-- Inserting Rows which have Null as a data
INSERT INTO users(FullName, UserEmail, UserAddress)
VALUES( 'ramesh', 'ra.ramesh@example.com',NULL ),( NULL, 'su.suresh@example.com', 'Address7');

-- Handling missing values using NULL or default
UPDATE users
SET UserAddress = IFNULL(UserAddress, 'Unknown')
WHERE FullName = 'ramesh';
UPDATE users
SET fullname = IFNULL(fullname, 'Unknown')
WHERE useraddress = 'address7';

-- Using UPDATE and DELETE with WHERE conditions
UPDATE users
SET UserAddress = 'Newyork'
WHERE UserAddress = 'Address4';
DELETE FROM users
WHERE UserAddress = 'Address5';

select * from users;
