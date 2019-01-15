-- [zhaohe@localhost ~]$ systemctl start mariadb
-- [zhaohe@localhost ~]$ mysql -u root -p
-- Enter password: 
-- Welcome to the MariaDB monitor.  Commands end with ; or \g.
-- Your MariaDB connection id is 8
-- Server version: 10.3.10-MariaDB MariaDB Server

-- Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

-- Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

-- MariaDB [(none)]> 

CREATE TABLE IF NOT EXISTS `person`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `username` VARCHAR(100) NOT NULL,
   `password` VARCHAR(40) NOT NULL,
   `age` INT NOT NULL,
   `registerDate` DATE,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO person(username,password,age,registerDate) VALUES("hello1","123456",12,NOW());
INSERT INTO person(username,password,age,registerDate) VALUES("hello2","123456",12,NOW());