-- Question 1: Check which users have access (USER_ID, USERNAME, CREATED, PASSWORD_CHANGE_DATE) from USER_USERS
SELECT user_id, username, created, password_change_date
FROM user_users;

-- Question 2: Check what tables are present by displaying everything in USER_TABLES
SELECT *
FROM user_tables;

-- Question 3: Describe the ORDERS table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'ORDERS'
ORDER BY column_id;

-- Question 4: Describe the PRODUCTLIST table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'PRODUCTLIST'
ORDER BY column_id;

-- Question 5: Describe the REVIEWS table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'REVIEWS'
ORDER BY column_id;

-- Question 6: Describe the STOREFRONT table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'STOREFRONT'
ORDER BY column_id;

-- Question 7: Describe the USERBASE table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'USERBASE'
ORDER BY column_id;

-- Question 8: Describe the USERLIBRARY table (structure)
SELECT column_name, data_type, data_length, nullable
FROM user_tab_columns
WHERE table_name = 'USERLIBRARY'
ORDER BY column_id;

-- Question 9: Display everything in the ORDERS table
SELECT *
FROM orders;

-- Question 10: Display everything in the PRODUCTLIST table
SELECT *
FROM productlist;

-- Question 11: Display everything in the REVIEWS table
SELECT *
FROM reviews;

-- Question 12: Display everything in the STOREFRONT table
SELECT *
FROM storefront;

-- Question 13: Display everything in the USERBASE table
SELECT *
FROM userbase;

-- Question 14: Display everything in the USERLIBRARY table
SELECT *
FROM userlibrary;

-- Question 15: Check constraints (TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS) from USER_CONSTRAINTS
SELECT table_name, constraint_name, constraint_type, status
FROM user_constraints;

-- Question 16: Check views (VIEW_NAME and TEXT) from USER_VIEWS
SELECT view_name, text
FROM user_views;

-- Question 17: Display every USERNAME in alphabetical order
SELECT username
FROM userbase
ORDER BY username;

-- Question 18: Yahoo email users (FIRSTNAME, LASTNAME, USERNAME, PASSWORD, EMAIL)
SELECT firstname, lastname, username, password, email
FROM userbase
WHERE LOWER(email) LIKE '%@yahoo.%';

-- Question 19: Users with less than $25 (USERNAME, BIRTHDAY, WALLETFUNDS)
SELECT username, birthday, walletfunds
FROM userbase
WHERE walletfunds < 25;

-- Question 20: Users with more than 100 HOURSPLAYED (USERID and PRODUCTCODE)
SELECT userid, productcode
FROM userlibrary
WHERE hoursplayed > 100;
