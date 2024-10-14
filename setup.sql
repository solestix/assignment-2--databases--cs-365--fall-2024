DDROP DATABASE IF EXISTS passwords;
CREATE DATABASE passwords DEFAULT CHARACTER SET utf8mb4;
USE passwords;

SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = UNHEX(SHA2('nothing to see here', 256));
SET @init_vector = RANDOM_BYTES(16);

CREATE TABLE IF NOT EXISTS user (
  first_name   VARCHAR(128) NOT NULL,
  last_name    VARCHAR(128) NOT NULL,
  email        VARCHAR(128) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS website (
  site_name    VARCHAR(256) NOT NULL,
  domain       VARCHAR(256) NOT NULL,
  PRIMARY KEY (site_id)
);

CREATE TABLE IF NOT EXISTS password (
  username     VARCHAR(128)   NOT NULL,
  password     VARBINARY(512) NOT NULL,
  time_created TIMESTAMP      NOT NULL,
  comment      MEDIUMTEXT     NOT NULL,
  PRIMARY KEY (user_id, site_id)
);

INSERT INTO user
VALUES (1, 'James', 'Harden', 'JHard94@gmail.com'),
       (2, 'Hatfield', 'Mackey', 'Mkay@yahoo.com'),
       (3, 'Harvey', 'Buzz', 'lightyear@gmail.com'),
       (4, 'Saul', 'Stew', 'goodman@gmail.com'),
       (5, 'Barney', 'Jones', 'beerbro@outlook.com');




