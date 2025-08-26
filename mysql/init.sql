CREATE DATABASE IF NOT EXISTS ctf;
USE ctf;

CREATE TABLE IF NOT EXISTS flags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  flag VARCHAR(255) NOT NULL
);
INSERT INTO flags (flag) VALUES ('CSM{PGApJJXcgj}');

-- Create a CTF user that matches your repository files:
-- username is in: www/omaga/watdis.txt  -> dausmini
-- password is in: ftp/alahsiaboi.txt   -> passnyadausmini
CREATE USER IF NOT EXISTS 'dausmini'@'%' IDENTIFIED BY 'passnyadausmini';
GRANT SELECT ON ctf.* TO 'dausmini'@'%';
FLUSH PRIVILEGES;
