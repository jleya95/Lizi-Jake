USE master
GO

--drop database if it exists
IF DB_ID('Wyrmspan_SQL') IS NOT NULL
BEGIN
	ALTER DATABASE Wyrmspan_SQL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Wyrmspan_SQL;
END

CREATE DATABASE Wyrmspan_SQL
GO

USE Wyrmspan_SQL
GO

--create tables
CREATE TABLE users (
	user_id int IDENTITY(1,1) NOT NULL,
	username varchar(50) NOT NULL,
	password_hash varchar(200) NOT NULL,
	salt varchar(200) NOT NULL,
	user_role varchar(50) NOT NULL
	CONSTRAINT PK_user PRIMARY KEY (user_id)
)

--populate default data
INSERT INTO users (username, password_hash, salt, user_role) VALUES ('user','Jg45HuwT7PZkfuKTz6IB90CtWY4=','LHxP4Xh7bN0=','user');
INSERT INTO users (username, password_hash, salt, user_role) VALUES ('admin','YhyGVQ+Ch69n4JMBncM4lNF/i9s=', 'Ar/aB2thQTI=','admin');

GO

CREATE TABLE dragons (
dragon_id int IDENTITY(1,1) NOT NULL, 
dragon_number int NOT NULL, 
name varchar (max) NOT NULL, 
habitat varchar(max)NOT NULL, 
size varchar(30) NOT NULL,
cost varchar(max) NULL, 
nest varchar (max) NULL, 
trait varchar(30) NULL,
description varchar (max) NULL,
)

INSERT INTO dragons (dragon_number, name, habitat, size, cost, nest, trait, description) VALUES ('117','ANTEDILUVIAN BASILISK', 
'Golden & Amethyst Caves', 'Large', 'Gold & Amethyst', '1 egg', 'Shy', 'It wasn''t until the early 2010s that all guilds finally agreed that the Antediluvian Basilisk was in fact, a dragon. The Guild of Highlands was the last holdout, claiming that it was a snake.');
INSERT INTO dragons (dragon_number, name, habitat, size, cost, nest, trait, description) VALUES ('121','ARCHAIC WHISKERED LUNG DRAGON', 
'Golden Cave', 'Large', 'Gold && Amethyst && Amethyst', '3 eggs', 'Playful', 'Everything about this species is baffling to dracologists, including its combination of fur, seales, and feathers; its frigid body temperature of 42 degrees Celsius (107 degrees Fahrenheit); and its apparent ability to absorb nutrients from the air.');