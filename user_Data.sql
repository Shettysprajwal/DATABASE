CREATE DATABASE IF NOT EXISTS user_data;
USE user_date;

CREATE TABLE IF NOT EXISTS user (
  user_id bigint NOT NULL AUTO_INCREMENT,
  user_name varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  user_email varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  user_password varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci

select * from user;		
insert into user(user_id,user_name,user_email,user_password)values('100','prahwal','prajwal@gmail.com' ,'Prajwal@1');
insert into user(user_id,user_name,user_email,user_password)values('10','test','prajwal@gmail.com' ,'Prajwal@1');
