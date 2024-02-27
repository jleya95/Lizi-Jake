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
('160', 'BRUSHTAIL FAE', 'Golden Cave', 'Small', 'Gold', '3 eggs', 'Playful', 'Prior to the Dragon Protection Act of 1972, the Brushtail Fey was hunted for its long tail, which was used to adorn hats. To this day, these hats occasionally appear on the secondary market, though at an astronomical cost.'),
('158', 'BRUSHWOOD DRAGONETTE', 'Crimson Cave', 'Small', 'Meat & Amethyst', '2 eggs', 'Shy', 'The tiny Brushwood Dragonette makes its home in the forest undergrowth, evading predators by hiding in thick brambles. Rarely flying, it uses its tall wings to carry bundles of twigs on its back, taking its nest wherever it goes.'),
('30', 'CACKLING DRAGONETTE', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Playful', 'Don''t be fooled by this dragon''s small stature! Even as an infant, the dragonette''s lungs are capable of bellowing a raucous cackle that can flatten a small tree.'),
('55', 'CALM LOCH SERPENT', 'Golden & Amethyst Caves', 'Large', 'Gold & Gold & Amethyst & Amethyst', '4 eggs', 'Shy', 'Named after the Greater Calm Loch, this serpent primarily lives in deep underwater crevasses, only coming out to feed at night.'),
('127', 'CAPRICIOUS VENOMOUS WYRM', 'Golden Cave', 'Large', 'Gold & Gold', '2 eggs', 'Aggressive', 'Despite its large size, the Capricious Venomous Wyrm mostly eats small creatures, including mice (both dragonmice and standard mice), voles, small birds, and the young of its enemies.'),
('75', 'CARBONIFEROUS ROCKBREAKER', 'Amethyst Cave', 'Small', 'Coin & Amethyst & Amethyst', '2 eggs', 'Shy', 'This rockbreaker lives up to its name by using its powerful jaws to crush and clear out solid rock for nests typically built into high limestone cliffs.'),
('58', 'CAUSTIC WYRM', 'Golden Cave', 'Medium', 'Gold & Amethyst', '2 eggs', 'Aggressive', 'Although this species tends to keep to itself, individuals have a notoriously short fuse when provoked, often with deadly consequences.'),
('119', 'CHAMELEON COATL', 'Crimson, Golden, & Amethyst Caves', 'Medium', 'Coin & Meat & Gold & Amethyst', '1 egg', 'Aggressive', 'The Chameleon Coatl can control the angle of its scales to within a fraction of a degree, allowing it to reproduce any color.'),
('32', 'CHAMELEON DRAGONETTE', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Shy', 'The Chameleon Dragonette thrives in old-growth boreal forests in polar climates. It is one of the few dragons that hibernates, and does so all winter. In the summer it subsists primarily off of mosquitoes, catching them with its 1-meter (3.3-foot) tongue.'),
('22', 'CHESHIRE DRAGON', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Playful', 'Getting within auditory range of a Cheshire Dragon should be avoided. Travelers who encounter this dragon report feeling confused for several days afterward = that is, if they make it back at all.'),
('19', 'CHITTERING DRAGONETTE', 'Crimson & Amethyst Caves', 'Hatchling', 'Egg & Milk & Milk', null, 'Playful', '''Lady Pepper''s Anthology of Dragons'' quotes the last words of Hannah the Huntress the 2nd as follows, "Oh aren''t you just the cutest? Let me put you in my purse. Lady Pepper notes, "Genetics is fascinating".'),
('52','CHROMATIC BLUE LUNG DRAGON', 'Amethyst Caves', 'Small','Gold & Gold & Amethyst', '1 egg', 'Helpful', ' In contrast to is nearest relative (the spry Horned Lung Dragon), the smaller Chromatic Blue Lung Dragon prefers to stay out of sight and remain undisturbed.'),
('135','CHURLISH FIREVERN','Golden & Amethyst','Small','Gold & Amethyst','2 eggs', 'Aggressive', 'The initial name proposed for this dragon was the Napoleonic Firevern, due to a combination of its small stature and aggressive personality. The Guild of Highlands found the name in poor taste and vetoed it. Ultimately, the guilds agreed to "churlish."'),
('165','CLAIRVOYANT FEYDRAGON','Golden Cave','Medium,','Gold & Amethyst','1 egg','Helpful', 'It is widely beived that the Clairvoyant Feydragon can read minds.' ),
('54','COLORFUL GRYPHDRAGON', 'Crimson, Golden, & Amethyst Cave','Small','Meat & Gold & Amethyst','4 eggs','Shy', 'In the early 1200s, Sir Conner tended to an injured member of this species in his garden. To this day. its descendants keep a watchful eye over the garden (now a public park) and make sure that no humans there come to harm.'),
('79','COMMON BLUE GRYPHDRAGON', 'Amethyst Cave', 'Medium','Gold & Amethyst','3 eggs','Helpful','This gryphdragon gets its name from its ancestors’ protection of the Commons during medieval times.  in exchange for protecting animals, grazing in the Commons, humans gave the gryphdragon food during harvest, establishing an enduring symbiotic relationship.'),
('17','COMMON GRASS LINDWORM','Golden & Amethys','Hatchling','Egg & Milk', null, 'Shy','The Comnmon Grass Lindworm is often mistaken for a garter snake. Both species are friends to gardeners, as they keep pesky insects and rodents at bay.'),
('162','COSMIC AMPHIPTERE','Golden Cave','Small','Gold & Gold & Amethyst & Amethyst','2 eggs','Shy','Its "Cosmic" name comes not from any otherworldly reason, but from the glimmering of the gems and scales on its back.'),
('146','CRAFTY MORAY','Crimson Cave','Medium','Meat & Meat','2 eggs', 'Shy', 'The Crafty Moray was a common figurehead carved into the bows of sailing vessels during the 17th and i8th centuries. Having such a figurehead was believed to ensure good weather and provide safe passage'),
('115','CUSTODIAL KOIWYRM','Crimson & Amethyst Caves', 'Medium','Meat & Amethys', '2 eggs', 'Playful','The Custodial Koiwyrm builds elaborate nests, I with nary a feather or twig out of place. In fact, a koiwyrm will gift leftover food to nearby creatures, rather than sully the pristineness of its living space. '),
('134', 'CUSTOMARY GRAZER','Crimson, Golden & Amethyst Caves','Large','Coin & Meat, & Gold, & Amethyst','1 egg','Playful','The Customary Grazer has an exceptionally slow metabolism, eating only once every 3-4 weeks. That said, its six stomachs have a huge capacity, so when it does eat, it eats a lot.'),
('97','DAPPLED GLADE SPIRIT','Crimson & Golden Caves','Small', 'Coin & Meat, & Gold','2 eggs','Helpful', 'The Dappled Glade Spirit is a keystone species in many old-growth forests. Its high body-temperature is critical for wearing down the protective coating on many of the seeds and nuts that it consumes.' ),
('62','DESCENDING FIREVERN','Amethyst Cave','Small','Amethyst & Amethyst & Amethyst','3 eggs', 'Aggressive','The Descending Firevern has among the hottest flames and longest reaches of all dragons.'),
('177', 'DOWSING FAE','Crimson Cave','Medium','Meat','1 egg','Shy','The widely believed that the Dowsing Fae has an innate ability to locate water. It does not.' ),
('169','DIVING MORAY','Crimson Cave','Large','Meat & Meat','2 eggs', 'Playful','The Diving Moray has been known to wreak havoc on military submarines for entertainment. It uses electromagnetic pulses to distort sonar, and often taps out a distracting "ka-thunk-a-thunk" on the hull, sometimes for hours on end.'), 
('87', 'EQUATORIAL CAVALIER WYVERN','Crimson & Amethyst Caves', 'Medium', 'Meat & Amethyst','2 egg','Shy','The Equatorial Cavalier Wvvern has a migratory pattern that circumnavigates the globe around the Equator.'),
('6', 'FLOCKING DRAGONETTE', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Shy', 'Flocks of this dragonette gather in the troposphere, and are often associated with rapid changes in weather.'),
('33', '"FRIENDLY" RUFFED RED DRAGON', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Aggressive', 'The upward-curving tufts around this dragon''s jaws give it the appearance of a permanent smile. This should not, however, be confused with actual friendliness.'),
('27', 'FRILLED COBRETTE', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Aggressive', 'The frills on this dragon wave back and forth, making it impossible for predators to identify a target. Once the predator is distracted, the cobrette strikes.'),
('4', 'FRUGIVOROUS GRAZER', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Shy', 'Frugivorous Grazers are named for their diet, which largely consists of dragonberries and starfruit.'),
('181', 'GAMBOLING LANDRAGOON', 'Crimson Cave', 'Large', 'Meat', '1 egg', 'Playful', 'This dragon is known for its bright colors and flashy, flightless wings. However, despite its beauty it is notoriously clumsy, and has even been known to knock its own nest'),
('2', 'GENIAL MOTHDRAGON', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk & Milk', null, 'Helpful', 'The Genial Mothdragon has an unusually long period of altricialty. Young remain helpless for nearly half their lives, forming very strong bonds with their caretakers as a result. This attachment does not depend on the species of caretaker.'),
('104', 'GLIDING TAIGA DRAKE', 'Crimson Cave', 'Small', 'Meat & Gold', '2 eggs', 'Aggressive', 'This species migrates several thousand kilometers every year, from subarctic climates in summer, to temperate forests and grasslands in the winter. Its diet is similarly varied; it eats mostly hares and flaming foxes in summer, and rabbits and dracosquirrels in the winter.'),
('66', 'GREEN GHOST', 'Golden Cave', 'Small', 'Gold & Amethyst', '3 eggs', 'Helpful', 'While this dragon cannot fly, males use their wings to intimidate aggressors and attract mates. In females, wings are believed to be vestigial.'),
('63', 'GUARDING HORNED DRAKE', 'Golden & Amethyst Caves', 'Medium', 'Coin & Gold & Amethyst', '4 eggs', 'Helpful', 'The Guarding Horned Drake is very possessive and does not tolerate theft of anything within its purview. For this reason, individuals of this species (primarily males) are excellent caretakers of hatchlings left in their care.'),
('31', 'GUIDING FEYDRAGON', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Helpful', 'The Guiding Feydragon is one of the world''s best trackers, and is often used by humans to assist in search and rescue activities. The feydragon can smell weeks-old trails and find buried nests months after they have been abandoned.'),
('59', 'HAUGHTY WYVERN', 'Crimson & Golden Caves', 'Small', 'Meat & Meat & Gold', '3 eggs', 'Shy', 'The Haughty Wyvern is easily spooked. Its I "haughty" moniker comes not from any arrogance, but because this dragon is often seen with its chin in the air, as it escapes from nearby predators (or dracologists).'),
('80', 'HAWKISH FIREVERN', 'Crimson & Golden Caves', 'Medium', 'Meat & Meat & Gold', '3 eggs', 'Aggressive', 'The Hawkish Firever''s name is something of a misnomer. The dragon shares a common ancestor with the modern-day falcon, which helps explain its ability to fly at near-supersonic speeds.'),
('56', 'HOARDING FLYER', 'Crimson & Golden Caves', 'Medium', 'Meat & Gold', '2 eggs', 'Shy', 'The Hoarding Flyer is often disparagingly called the seagull of dragons. Members have been known to steal sandwiches and other food from unsuspecting picnickers.'),
('77', 'INTRACTABLE FIREVERN', 'Crimson & Amethyst Caves', 'Large', 'Meat & Amethyst', '2 eggs', 'Aggressive', 'This dragon is a particular menace to farmers. Its voracious appetite and extreme tenacity mean that one individual can gradually consume an entire heard of cattle over a period of weeks or months.'),
('159', 'JAUNTY DRAGONETTE', 'Golden Cave', 'Medium', 'Gold & Gold & Amethyst', '3 eggs', 'Playful', 'The Jaunty Dragonette was named for its unique sashaying walk. If dragons could be runway models, this species would be the star of the show.'),
('76', 'KEEN CRICKETCATCHER', 'Crimson Cave', 'Small', 'Meat & Amethyst & Amethyst', '2 eggs', 'Helpful', 'The Keen Cricketcatcher''s sharp claws are used solely for climbing trees in search of dragonworms, as well as grubs and other insects.'),
('18', 'KEENING AMPHIPTERE', 'Crimson Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Aggressive', 'As a hatchling, the Keening Amphiptere perfectly mimics an injured animal.  When scavengers or potential saviors come to investigate, it pounces.'),
('138', 'KIND MISTVERN', 'Amethyst Cave', 'Large', 'Amethyst & Amethyst', '4 eggs', 'Helpful', 'The Kind Mistvern has been known to raise the orphaned young of other species of dragons. The foster dragons it raises largely take on the personality of the Kind Mistvern, typically making them kinder and gentler than others of their species.'),
('34', 'KINDLY SEA SERPENT', 'Amethyst Cave', 'Hatchling', 'Egg & Milk & Milk', null, 'Helpful', 'Many pet stores sell Kindly Sea Serpents to unsuspecting parents in place of a gerbil or hamster. Taking on a Kindly Sea Serpent as a pet is strongly discouraged. This long-lived species always outlives the interest of the child, and often outlives the child as well.'),
('10', 'MELODIOUS FIREDRAGON', 'Crimson & Amethyst Caves', 'Hatchling', 'Egg & Milk', null, 'Helpful', 'When submerged, the heat radiated by a single Melodious Firedragon egg can boil 5 liters of water (1.3 gallons) in 10 minutes.'),
('155', 'MERCENARY WYVERN', 'Crimson Cave', 'Large', 'Meat & Amethyst & Amethyst', '3 eggs', 'Playful', 'Viewed from the front, this dragon seems almost otherworldly, with its bright coloring and ethereal plumage. Viewed from the back, it is very dull and very plainly a Wyvern.'),
('93', 'MINIATURE CRESTED COATL', 'Golden Cave', 'Small', 'Gold', '1 egg', 'Playful', 'From a distance, this coatl is often mistaken for a bird. Only up close can it be observed that the dragon is scaled instead of feathered, from the tip of its nose to its distinctive tail scales.'),
('20', 'MINIATURE REX', 'Amethyst Cave', 'Hatchling', 'Egg & Milk', null, 'Playful', 'The Miniature Rex may look cute, but even as a hatchling it has sharp claws, sharper teeth, and breathes fire. Wise humans keep their distance.'),
('164', 'METAMORPHIC FEYDRAGON', 'Golden Cave', 'Small', 'Coin & Gold & Gold', '4 eggs', 'Helpful', 'The Metamorphic Feydragon can take on the appearance of any dragon, but cannot change its size. Any small dragon could potentially be a Metamorphic Feydragon in disguise.'),
('106', 'MINOR SHARPCLAW', 'Crimson, Golden, & Amethyst Caves', 'Small', 'Coin', '3 eggs', 'Aggressive', 'The Minor Sharpclaw has major attitude. Although it is too small to do much damage, it makes itself such a nuisance that other species steer clear.'),
('89', 'ERUDITE LUNG DRAGON', 'Crimson Cave', 'Small', 'Coin & Meat & Amethyst', '3 eggs', 'Helpful' , 'In regions where it is native, the long-lived Erudite Lung Dragon is regarded as a herald of wisdom and scholarship. As such it is often seen on a variety of objects from ancientfamily crests to modern company logos.'),
('57', 'ETERNAL FEYDRAGON', 'Golden Cave', 'Medium', 'Gold & Gold & Amethyst', '1 egg', 'Helpful', 'Although this species not especially long-lived, a special genetic memory grants its hatchlings the inherited knowledge and skills of their ancestors.')
/*(‘21’, ‘FAE TAMARIN’,’Amethyst Cave’, ‘Hatchling’, ‘ 1 egg &amp; Milk &amp; Milk’, ‘Shy’, ‘Due to its
uniquely other-worldly appearance many dracologists believe that the Fae Tamarin evolved in
an alternate dimension, inadvertently crossing over just a few thousand years ago.’),
(‘151’.’ FANGED BROADWYRM’,’ Golden Cave’,Large,’Meat &amp; Gold &amp; Gold’,’3 eggs’,
‘Playful’,’With its incredibly strong jaws and sharp teeth, an infant of this species was once
observed biting a diesel locomotive in half. The infant was thought to be teething.’),
( ‘5’, ‘FANGED FEYDRAGON’,’ Golden Cave’,’Hatchling’,’ 1 egg &amp; Milk &amp; Milk &amp;
Milk’,’Playful’,’This dragon is normally friendly and docile, but slumbers deeply. If startled awake,
the feydragon will attack anything in sight, including kin.’),
(‘96’,’ FASTIDIOUS HORNED DRAGON’,’ Golden &amp; Amethyst Caves’,Small’,’Gold &amp;
Amethyst’,’2 eggs’,’Playful’,’Males of this species attract females through elaborate courtship
rituals, in which they fly in elaborate patterns, letting sunlight glisten off their bright blue scales.
To keep their scales shiny, males spent significant time grooming, rightly earning the name
&quot;fastidious.”’),
(‘176’,’ GNAWING SERAPH’,’ Golden Cave’,’Small’,’Gold’,’1 egg’,’Playful’,’The Gnawing
Seraph is named for is parasitic feeding method: It latches onto large prey, drinking its fill before
moving on. The seraph&#39;s saliva is numbing to most animals, so it is able to feast and disappear
long before its host notices that anything is amiss.’),
(‘108’, ‘GOOD DRAKE’,’ Golden Cave’, ‘Medium’,’Gold &amp; Gold &amp; Amethyst’, ‘1 egg’,
‘Helpful’,’ Throughout much of human history Good Drakes formed symbiotic relationships
with humans in hunter-gatherer camps, warning humans of incoming predators in exchange for
leftover food. Although they are not &quot;domesticated&quot; to the extent that dogs are, there are some
(largely within the Plains Guild) who still keep Good Drakes as pets.’),
(‘42’,’ GREAT GOLDEN LUNG’,’Golden Cave’,’Large’,’Gold &amp; Gold &amp; Amethyst’,’3 eggs’,
‘Helpful’,’The Great Golden Lung Dragon typically rises at dawn. Catching a glimpse of one in
the morning light is considered a sign of good furtune.’),
(‘148’,’ GREAT HORNED WYVERN’,’ Crimson Cave’,’Large’,’Meat &amp; Gold &amp; Gold’, ‘ 3
eggs’, ‘Playful’, ‘Unlike other wyverns, the horns of the Great Horned Wyvern change color
depending on when it last ate. . A dark color indicates that the wyvern has just eaten, whereas a
pale color means that it may be on the prowl.’),

(‘161’,’ GREATER SCORPIO’, ‘Golden Cave’,’Large’,’Meat &amp; Gold’,’2 eggs’, ‘Aggressive’,
‘Lady Pepper&#39;s Anthology of Dragons quotes the last words of Hans the Hunter as follows, &quot;Hey,
you don&#39;t look so tough!&quot; Lady Pepper notes, &quot;Hans the Hunter was a moron.”’),
(‘167’,’ HOMELY FAE’,’ Crimson Cave’, ‘Medium’, ‘Meat’, ‘1 egg’, ‘Helpful’,’After the
President of the Dragon Guilds called the Homely Fae “one ugly beast”, teenagers around the
world turned the Homely Fae into their mascot, as a sign of (very low-key and poorly
coordinated) rebellion.’),
(‘100’, ‘HORNED VENOMOUS WYRM’,’ Crimson Cave’, ‘Small’, ‘Meat &amp; Amethyst’, ‘2
eggs’, ‘Aggressive’, ‘Unfortunately, the first dracologist to study this species, Hans the Hunter
the 2nd, learned that it was highly venomous (RIP). It wasn&#39;t until several decades later that a
second dracologist, Hans the Hunter the 3rd, discovered that it was also highly poisonous
(RIP).’),
(‘68’,’ HOSTILE NORTHERN FIREDRAGON’ ,’Crimson Cave’,’Large’,’Meat’, ‘1 egg’,
‘Aggressive’,’Large and aggressive, these dragons are frequently disruptive to huma settlements.
They have been known to torch structures to create a diversion, then consume livestock in the
ensuing chaos.’),
(‘82’,’ HUSHED OAK-WING FEYDRAGON’,’ Crimson Cave’, ‘Small’, ‘Meat’, ‘3 eggs’,
‘Shy’, ‘The most striking feature of this dragon is its wings, which ironically look like leaves
from maple trees. It is thought that mistake originated from a translation error, which was not
identified until the moniker &quot;Oak-Wing&quot; was already widespread.’),
(‘166’, ‘HYENIC SERPENT’, ‘Crimson Cave’, ‘Medium’, ‘Meat &amp; Meat’, ‘2 eggs’,
‘Aggressive’, ‘Though this dragon does have bone-chilling laugh, its name actually comes from
its diet of 100% hyena meat.’),
(‘136’,’ IMPENETRABLE REDWYRM’,’ Crimson Cave’, ‘Large’, ‘Meat &amp; Amethyst &amp;
Amethyst’,’3 eggs’, ‘Aggressive’, ‘The Impenetrable Redwyrm has a though exterior, but its
loyalty is widespread in the myths and legends of several cultures.’),
(‘120’, ‘KNOWING GUARDIAN’,’ Crimson &amp; Golden Caves’,’Medium’,’Meat &amp; Gold’, ‘1
egg’, ‘Helpful’, ‘Generations of selective breeding have decreased the Knowing Guardian’s size
and created a docile and trainable species. It is a favorite for personal companionship —but only
for those with plenty of space!’),
(‘143’,’LAVENDER FEYDRAGON’,’Medium’, ‘Gold &amp; Amethyst’, ‘2 eggs’, ‘Playful’,
‘Although normally dull gray in appearance, the back scales of the Lavender Feydragon take on
a brilliant lavender color during its two-week mating season.’),
(‘35’,’ LAWNDRAKE’,’ Amethyst Cave’,’Hatchling’,’1 egg &amp; Milk &amp; Milk &amp; Milk’,’Playful’,’
Lawndrakes are common in suburban habitats and have an amazing capacity to find lost jewelry
and other valuables. The Lawndrake will ultimately give these items back to their owners, but
not until the owner has sufficiently earned the privilege.’),

(‘9’,’LEAFEATING CRICKETCATCHER’, ‘Golden &amp; Amethyst Caves’,’ Hatchling’,’1 egg &amp;
Milk’,’Helpful’,’ The Leafeating Cricketcatcher is a popular pest control option on organic
farms.’),
(‘132’, ‘LILLIPUTIAN FAE’, ‘Crimson, Golden, &amp; Amethyst Caves’,’Small’,’Coin &amp; Meat &amp;
Gold &amp; Amethyst’ ,’1 egg’, ‘Aggressive’ ,’ Small but sneaky, the Lilliputian Fae works in
groups to distract and overpower both invaders and prey.’),
(‘98’,’ LITTLE AMPHIPTERE’,’ Crimson &amp; Golden Caves’, ‘Small’, ‘None’, ‘1 egg’,
‘Playful’, ‘Adaptability is one of the primary hallmarks of Little Amphiptere. Although the
species tends to avoid locations with high human density, it tolerates a wide range of climates,
from temperate to tropical.’),
(‘8’, ‘LOYAL FEYDRAGON’, ‘Amethyst Cave’, ‘Hatchling’, ‘1 egg &amp; Milk &amp; Milk &amp; Milk’,
‘Helpful’, ‘The wings of the Loyal Feydragon change colors depending on its mood. Never
approach one with solid red wings.’),
(‘171’, ‘MACABRE LINDWORM’, ‘Golden Cave’, ‘Large’, ‘Gold &amp; Amethyst’, ‘1 egg’,
‘Playful’, ‘The Macabre Lindworm is known for decorating its vestigial wings with the entrails
of prey to attract potential mates.’),
(‘101’, ‘MAGNIFICENT AMPHIPTERE’, ‘Crimson, Golden, &amp; Amethyst Caves’, ‘Large’,
‘Coin &amp; Meat &amp; Gold &amp; Amethyst’, ‘3 eggs’, ‘Helpful’, ‘The Magnificent Amphiptere is best
known for its colorful wing and tail plumage among both males and females. This plumage is
made of feathers instead of scales, which is uncommon in the dragon world.’),
(‘84’, ‘MALCONTENT VENOMOUS WYRM’, ‘Golden Cave’, ‘Small’, ‘Meat &amp; Gold’, ‘1
egg’, ‘Aggressive’, ‘This species is poorly understood, as few have encountered one and lived to
tell the tale.’),
(‘73’, ‘MARSHY WEBBED DRAGON’, ‘Amethyst Cave’, ‘Medium’, ‘Meat &amp; Meat &amp;
Amethyst &amp; Amethyst’, ‘1 egg’, ‘Shy’, ‘The webbed wings of this dragon make it both an
excellent flyer and swimmer. This dragon can seamlessly transition from the air to the water,
although it prefers to stay hidden in the shallow waters of marshes and tens.’),
(‘13’, ‘MELLIFERA FEYDRAGON’, ‘Amethyst Cave’ , ‘Hatchling’, ‘1 egg &amp; Milk’,
‘Aggressive’, ‘In a remarkable example of convergent evolution, the Mellifera Feydragon looks
almost identical to the humble honeybee, and was long thought to be a subspecies of Apis
Mellifera. Only in 2023 did dracologists discover that it is actually a feydragon, with a complete
internal skeleton (instead of an exoskeleton).’),*/