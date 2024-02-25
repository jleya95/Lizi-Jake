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
image_path varchar(30) NULL
)

INSERT INTO dragons (dragon_number, name, habitat, size, cost, nest, trait, description) VALUES ('117','ANTEDILUVIAN BASILISK', 
'Golden & Amethyst Caves', 'Large', 'Gold & Amethyst', '1 egg', 'Shy', 'It wasn''t until the early 2010s that all guilds finally agreed that the Antediluvian Basilisk was in fact, a dragon. The Guild of Highlands was the last holdout, claiming that it was a snake.')
,('121','ARCHAIC WHISKERED LUNG DRAGON', 
'Golden Cave', 'Large', 'Gold && Amethyst && Amethyst', '3 eggs', 'Playful', 'Everything about this species is baffling to dracologists, including its combination of fur, seales, and feathers; its frigid body temperature of 42 degrees Celsius (107 degrees Fahrenheit); and its apparent ability to absorb nutrients from the air.')
,('150', 'AERIAL RECLUSE', 'Crimson, Golden, & Amethyst Caves', 'Large', 'Meat & Gold & Amethyst',
'2 eggs', 'Helpful', 'The Aerial Recluse spends most of its time at an altitude of 9,000 to 12,000 meters (approximately 30,000 to 40,000 feet). Although it typically stays well away from humans, its mating season frequently disrupts air travel.')
, ('40', 'AGED SEA SERPENT', 'Golden Cave', 'Small', 'Gold & Gold & Amethyst',
'1 egg', 'Helpful', 'Fossils that look virtually identical in morphology to the Aged Sea Serpent have been found dating back over 200 million years.'),
('3', 'ALGAL LINDWORM', 'Golden & Amethyst Caves', 'Hatchling', 'Egg & Milk & Milk & Milk',
null, 'Helpful', 'The Algal Lindworm lives in lakes and subsists off algae for most of its life. It only turns carnivorous during its brief mating season, eating fish, aquatic birds, and even the odd manatee'),
('51', 'ALOOF GRYPHDRAGON', 'Crimson, Golden, & Amethyst Caves', 'Small', 'Coin', '3 eggs',
'Shy', 'The Aloof Gryphdragon can be summoned with an onyx amulet, but finds the practice to be extremely offensive.'),
('67', 'ANCIENT ONE', 'Golden Cave', 'Medium', 'Coin & Meat & Gold', '2 eggs', 'Shy',
'Since the beginning of reliable recordkeeping, circa 1850, there have been no known instances of an Ancient One dying of natural causes or even showing signs of degenerative aging.'),
('172', 'AUGURAL FAE', 'Crimson, Golden, & Amethyst Caves', 'Small', 'Meat & Gold & Amethyst', '2 eggs',
'Helpful', 'Now considered an invasive species throughout much of the world, the Augural Fae was intentionally distribduted by humans in a misguided attempt to control dragonmice populations.')