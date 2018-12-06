-- create user.
CREATE USER 'sampleuser'@'localhost' IDENTIFIED by 'changeme';
GRANT ALL PRIVILEGES ON *.* TO 'sampleuser'@'localhost';
-- create db.
CREATE DATABASE playdb;
use playdb;
-- create table.
CREATE TABLE IF NOT EXISTS account (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name varchar(20) NOT NULL UNIQUE,
  password varchar(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS entry (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  accountid int NOT NULL,
  title varchar(100),
  body text
  FOREIGN KEY(accountid) REFERENCES account(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS image (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  entryid int NOT NULL,
  url varchar(100) NOT NULL
) ENGINE=InnoDB;