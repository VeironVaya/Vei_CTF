CREATE DATABASE IF NOT EXISTS ctfdb;

USE ctfdb;

CREATE TABLE IF NOT EXISTS flag (
    id INT AUTO_INCREMENT PRIMARY KEY,
    flag VARCHAR(255)
);

INSERT INTO flag (flag) VALUES ('CSM{CIAqzhxRqc}');

-- create user
CREATE USER 'dausmini'@'%' IDENTIFIED BY 'passnyadausmini' REQUIRE NONE;

-- grant them access only to ctfdb
GRANT ALL PRIVILEGES ON ctfdb.* TO 'dausmini'@'%';

FLUSH PRIVILEGES;
