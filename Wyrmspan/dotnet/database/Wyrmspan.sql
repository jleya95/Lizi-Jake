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
'Helpful', 'Now considered an invasive species throughout much of the world, the Augural Fae was intentionally distribduted by humans in a misguided attempt to control dragonmice populations.'),
('105', 'AUSTRALOPITHECUS', 'Amethyst Cave', 'Large', 'Amethyst', '3 eggs', 'Shy', 'This shy mountain species is the most recent dragon to be identified, with final classification completed in late 2023. This species does not yet have a Guild-approved common name, nor is it likely to have one any time soon. In an attempt at humor, the Forest Guild named this dragon after Australopithecus, a genus of human ancestors.
The Plains Guild and the Guild of Highlands took offense, and refuse to approve a common name until the Forest Guild fixes this "affront to humanity.
An official spokesperson for the Forest Guild called the other two guilds "humorless dingbats" though in retrospect, this statement was perhaps intended to be off the record.'),
('114', 'AVARICIOUS AMPHIPTERE', 'Amethyst Cave', 'Small', 'Amethyst', '1 egg', 'Aggressive', 'This amphiptere often follows in the wake of the Shaly Rockbreaker, scarfing up any leftover crystal shards that the larger dragon leaves behind.'),
('180', 'BECKONING CRICKETCATCHER', 'Golden Cave', 'Small', 'Meat & Gold', '2 eggs', 'Aggressive', 'This dragon lures crickets by mimicking their chirps, turning them one by one into cricketcatcher snacks.'),
('109', 'BELLICOSE FIREVERN', 'Crimson & Golden Caves', 'Small', 'Meat & Gold', '1 egg', 'Aggressive', 'Amateur dragonwatchers often risk life and limb to view the flight displays of the Bellicose Fivevern. Dragonwatching guides strongly recommend that interested parties seek out the Spirited Firevern instead, as this species offers a similarly impressive display at significantly lower risk.'),
('153', 'BLUE KEEPER', 'Crimson & Amethyst Caves', 'Small', 'Meat & Amethyst', '4 eggs', 'Helpful', 'The Blue Keepers favorite color is orange. This
species has been known to follow around hunters wearing orange vests, much to the chagrin of the hunters and to the delight of their prey.'),
('43', 'BLUE FOREST SPIRIT', 'Amethyst Cave', 'Medium', 'Amethyst & Amethyst', '5 eggs', 'Helpful', 'On several occasions, hikers have reported being guided to safety by a "blue ghost". In each report, the ghost silently appears, identifies a path to safety, then disappears. Dracologists hypothesize that these "ghosts" were Blue Forest Spirits.'),
('26', 'BARGAINING GRAZER', 'Amethyst Cave', 'Hatchling', 'Egg & Milk', null, 'Helpful', 'In the Bargaining Grazer''s mating ritual, two young adults present piles of stones, shells, and other natural baubles to each other, then engage in a lengthy trading process. If they come to an agreement, they mate for life.'),
('156', 'BRINDLED FROGMOUTH', 'Crimson Cave', 'Small', 'Meat & Meat', '1 egg', 'Helpful', 'Although not related to the Tawny Frogmouth, the two species do share a similar diet: moths, insects, and just about anything else they can get their mouths around.'),
('160', 'BRUSHTAIL FAE', 'Golden Cave', 'Small', 'Gold', '3 eggs', 'Playful', 'TRAIT: PLAYFUL
Prior to the Dragon Protection Act of 1972, the Brushtail Fey was hunted for its long tail, which was used to adorn hats. To this day, these hats occasionally appear on the secondary market, though at an astronomical cost.'),
('158', 'BRUSHWOOD DRAGONETTE', 'Crimson Cave', 'Small', 'Meat & Amethyst', '2 eggs', 'Shy', 'The tiny Brushwood Dragonette makes its home in the forest undergrowth, evading predators by hiding in thick brambles. Rarely flying, it uses its tall wings to carry bundles of twigs on its back, taking its nest wherever it goes.'),
('30', 'Cackling Dragonette', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Playful', 'Don''t be fooled by this dragon''s small stature! Even as an infant, the dragonette''s lungs are capable of bellowing a raucous cackle that can flatten a small tree.'),
('55', 'CALM LOCH SERPENT', 'Golden & Amethyst Caves', 'Large', 'Gold & Gold & Amethyst & Amethyst', '4 eggs', 'Shy', 'Named after the Greater Calm Loch, this serpent primarily lives in deep underwater crevasses, only coming out to feed at night.'),
('127', 'CAPRICIOUS VENOMOUS WYRM', 'Golden Cave', 'Large', 'Gold & Gold', '2 eggs', 'Aggressive', 'Despite its large size, the Capricious Venomous Wyrm mostly eats small creatures, including mice (both dragonmice and standard mice), voles, small birds, and the young of its enemies.'),
('75', 'CARBONIFEROUS ROCKBREAKER', 'Amethyst Cave', 'Small', 'Coin & Amethyst & Amethyst', '2 eggs', 'Shy', 'This rockbreaker lives up to its name by using its powerful jaws to crush and clear out solid rock for nests typically built into high limestone cliffs.'),
('58', 'CAUSTIC WYRM', 'Golden Cave', 'Medium', 'Gold & Amethyst', '2 eggs', 'Aggressive', 'Although this species tends to keep to itself, individuals have a notoriously short fuse when provoked, often with deadly consequences.'),
('119', 'CHAMELEON COATL', 'Crimson, Golden, & Amethyst Caves', 'Medium', 'Coin & Meat & Gold & Amethyst', '1 egg', 'Aggressive', 'The Chameleon Coatl can control the angle of its scales to within a fraction of a degree, allowing it to reproduce any color.'),
('32', 'CHAMELEON DRAGONETTE', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Shy', 'The Chameleon Dragonette thrives in old-growth boreal forests in polar climates. It is one of the few dragons that hibernates, and does so all winter. In the summer it subsists primarily off of mosquitoes, catching them with its 1-meter (3.3-foot) tongue.'),
('22', 'CHESHIRE DRAGON', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Playful', 'Getting within auditory range of a Cheshire Dragon should be avoided. Travelers who encounter this dragon report feeling confused for several days afterward = that is, if they make it back at all.'),
('19', 'CHITTERING DRAGONETTE', 'Crimson & Amethyst Caves', 'Hatchling', 'Egg & Milk & Milk', null, 'Playful', '''Lady Pepper''s Anthology of Dragons'' quotes the last words of Hannah the Huntress the 2nd as follows, "Oh aren''t you just the cutest? Let me put you in my purse. Lady Pepper notes, "Genetics is fascinating".')