/*
   Krill setup SQL

   Before running these queries, it is recommended that you change the password 
   'krillpassword' to something apropriate.
*/

-- Create the database user
CREATE USER 
   'krill'@'localhost' 
IDENTIFIED BY  
   'krillpassword'
;

-- Set up the grants for the user
GRANT USAGE ON 
   * . * 
TO  
   'krill'@'localhost' 
IDENTIFIED BY  
   'krillpassword' 
WITH 
   MAX_QUERIES_PER_HOUR 0
   MAX_CONNECTIONS_PER_HOUR 0
   MAX_UPDATES_PER_HOUR 0
   MAX_USER_CONNECTIONS 0
;

-- Create the database
CREATE DATABASE IF NOT EXISTS  
   `krill`
;

-- Set up the privileges for krill on krill
GRANT ALL PRIVILEGES ON  
   `krill` . * 
TO  
   'krill'@'localhost'
;