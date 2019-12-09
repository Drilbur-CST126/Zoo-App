--Classes
DROP TABLE IF EXISTS classes;

CREATE TABLE classes (
	class_id	INT		PRIMARY KEY,
	name		TEXT	NOT NULL
	);

--Origins (NOT BEING USED CURRENTLY)
/*DROP TABLE IF EXISTS origins;

CREATE TABLE origins (
	origin_id	INT		PRIMARY KEY,
	region		TEXT	NOT NULL,
	description	TEXT
	);*/

--Exibits
DROP TABLE IF EXISTS exhibits;

CREATE TABLE exhibits (
	exhibit_id	INT		PRIMARY KEY,
	name		TEXT	NOT NULL,
	description	TEXT
	);
	
--Animals
DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
	animal_id		INT		PRIMARY KEY,
	common_name		TEXT	NOT NULL,
	scientific_name	TEXT	NOT NULL,
	qr_code			BINARY,
	tags			TEXT,
	class_id		INT
		REFERENCES classes (class_id),
	exhibit_id		INT
		REFERENCES exhibits (exibit_id)
	);

--Facts
DROP TABLE IF EXISTS facts;

CREATE TABLE facts (
	fact_id		INT		PRIMARY KEY,
	fact		TEXT	NOT NULL,
	animal_id	INT
		REFERENCES animals (animal_id)
	);

--Pictures
DROP TABLE IF EXISTS pictures;

CREATE TABLE pictures (
	picture_id		INT		PRIMARY KEY,
	file_name		TEXT	NOT NULL,
	picture_file	BINARY	NOT NULL,
	animal_id		INT
		REFERENCES animals (animal_id)
	);


--Sounds
DROP TABLE IF EXISTS sounds;

CREATE TABLE sounds (
	sound_id	INT		PRIMARY KEY,
	file_name	TEXT	NOT NULL,
	sound_file	BINARY	NOT NULL,
	animal_id	INT
		REFERENCES animals (animal_id)
	);
	
	
--Adding data...

INSERT INTO classes (class_id, name)
VALUES	(1, 'Mammals');
INSERT INTO classes (class_id, name)
VALUES	(2, 'Birds');
INSERT INTO classes (class_id, name)
VALUES	(3, 'Fish');
INSERT INTO classes (class_id, name)
VALUES	(4, 'Reptiles');
INSERT INTO classes (class_id, name)
VALUES	(5, 'Amphibians');
INSERT INTO classes (class_id, name)
VALUES	(6, 'Arthropods');

--based off of Oregon Zoo map
INSERT INTO exhibits (exhibit_id, name, description)
VALUES (1, 'Great Northwest', '');
INSERT INTO exhibits (exhibit_id, name, description)
VALUES (2, 'Pacific Shores', '');
INSERT INTO exhibits (exhibit_id, name, description)
VALUES (3, 'Primate Forest', '');
INSERT INTO exhibits (exhibit_id, name, description)
VALUES (4, 'Africa', '');
INSERT INTO exhibits (exhibit_id, name, description)
VALUES (5, 'Discovery Zone', '');

INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (1, 'African Bullfrog', 'Pyxicephalus Adspersus', '', '', 5, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (2, 'African Crested Porcupine', 'Hystix Cristata', '', '', 1, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (3, 'African Lungfish', 'Protopterus Annectens', '', '', 3, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (4, 'African Painted Dog', 'Lycaon Pictus', '', '', 1, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (5, 'African Red-Billed Hornbill', 'Tockus Erythro', '', '', 2, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (6, 'African Rock Python', 'Python Sebae', '', '', 4, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (7, 'African Slender-Snouted Crocodile', 'Mecistops Cataphractus', '', '', 4, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (8, 'African Spurred Tortoise', 'Centrochelys Sulcata', '', '', 4, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (9, 'Allen''s Swmap Monkey', 'Allenopithecus Nigroviridis', '', '', 1, 4);
INSERT INTO animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (10, 'American Beaver', 'Castor Canadensis', '', '', 1, 1);

--African Bullfrong
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (1, 'Bullfrogs'' fingers are short and blunt, without webbing.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (2, 'Its large mouth allows it to eat reptiles, ', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (3, 'In the front of its lower jaw are three large, toothlike projections.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (4, 'It vocalizes with loud bellows and roars.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (5, 'It may sit quietly for hours partially buried in the earth with only its nose exposed', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (6, 'African bullfrongs hibernate during the dry season, spending 10 months underground.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (7, 'Frogs breed when they emerge from hibernation with the return of rains.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (8, 'The female lays between 3,000 and 4,000 eggs in shallow water.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (9, 'Tadpoles emerge the second day after eggs are laid.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (10, 'The young may be smooth-skinned.', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (11, 'Male: 9 inches', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (12, 'Female: 4 inches', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (13, 'Lifespan: up to 45 years', 1);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (14, 'It is called the Kijani, which is Swahili for "Green."', 2);

--African Crested Porcupine
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (15, 'The African crested porcupine is the largest porcupine in the world. '
 || 'It lives in hilly, rocky habitats in sub-Saharan Africa, North Africa and Italy.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (16, 'The sharp, sturdy quills of the African crested porcupine give it highly '
 || 'effective protection against predators. Its body is covered with coarse quills 1 to 13 '
 || 'inches long and of varying thicknesses. Its most heavily armed area is its hindquarters, '
 || 'which have short, thick quills.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (17, 'When it is confronted by a predator, the African crested porcupine raises the '
 || '12- to 13-inch quills along its head and back into a crest so its body appears larger '
 || 'and more threatening. If this strategy doesn''t chase off the predator, the porcupine '
 || 'stamps its feet, clicks its teeth, and rattles its hollow-tipped tail quills. If this '
 || 'fails, it runs backwards and rams the attacker with the short, thick quills on its '
 || 'backside. The tips of its quills lodge in its enemy''s skin, and the resulting wounds '
 || 'can disable or even kill the predator. Porcupines have been known to injure lions, leopards, '
 || 'hyenas, even humans.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (18, 'African crested porcupines eat tubers, bark, bulbs, fallen fruit and cultivated '
 || 'root crops. They are nocturnal and forage alone at night, traveling up to 9 miles in their '
 || 'search for food. They return to the den and rest during the day. Though they forage alone, '
 || 'they live in small family groups made up of an adult pair and their young, both infants and '
 || 'juveniles. They develop elaborate burrows to house this family group.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (19, 'African crested porcupines are monogamous. Mating is a thorny challenge because '
 || 'of the spines and quills of the two participants. Females usually have one litter per year '
 || 'after a pregnancy lasting about 112 days. One to 4 offspring, called "porcupettes," are born '
 || 'in a separate grass-lined birth chamber within the burrow system. The porcupettes are born '
 || 'with open eyes and developed teeth, though the quills on their backs are soft. They leave '
 || 'the den about a week later, just as their quills begin to harden.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (20, 'African crested porcupines are 24 to 36 inches long, not counting their 3 to 6 ½ '
 || 'inch tail. They weigh between 22 and 66 pounds. They live about 20 years, both in the wild and in captivity.', 2);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (21, 'African crested porcupines are not endangered, but because they eat cultivated '
 || 'crops they are seen as agricultural pests. Farmers use dogs to hunt them or smoke them '
 || 'out of their burrows; in some areas, farmers illegally use poison to kill them. They are '
 || 'also killed for their quills, which are used as ornaments and talismans. In North Africa '
 || 'they are killed and sold to be used in traditional medicine.', 2);
 
--African Lungfish
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (22, 'African lungfish live in freshwater swamps, backwaters and small rivers in West '
 || 'and South Africa. These prehistoric animals have survived unchanged for nearly 400 million '
 || 'years and are sometimes referred to as "living fossils."', 3);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (23, 'African lungfish have some fascinating adaptations. They have two lungs, and can '
 || 'breathe air. This is a vital feature, since they live in flood plains in waterways that often '
 || 'dry up. To manage this life-threatening situation, the lungfish secretes a thin layer of mucus '
 || 'around itself that dries into a cocoon. It can live out of water in this cocoon for up to a year, '
 || 'breathing through its lungs until rains refill its waterway.', 3);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (24, 'The African lungfish also hibernates in water. It digs 1-9 inches into the soil and '
 || 'debris at the bottom of its waterway, then wiggles in the mud to create a bulb-shaped chamber '
 || 'and rests there with its nose pointing upward. Its metabolic rate slows down, and the nutrients '
 || 'it needs to survive come from breakdown of its muscle tissue. It can remain up to 4 years in this state.', 3);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (25, 'African Lungfish can use their thin hind limbs to lift themselves off the bottom surface and '
 || 'propel themselves forward. This is probably possible because they can fill their lungs with air, adding '
 || 'to the buoyancy of their bodies in water. Scientists believe that lungfish may be closely related to the '
 || 'animals that were able to evolve and come of the water and onto land.', 3);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (26, 'African lungfish are omnivorous, eating a varied diet that includes frogs, fish and mollusks as '
 || 'well as tree roots and seeds. They grow between 6 ½ and 40 inches long, and can weigh up to nearly 8 pounds.', 3);
INSERT INTO facts (fact_id, fact, animal_id)
VALUES (27, 'The female African lungfish lays its eggs in a nest in a weedy area of its habitat. Once the eggs '
 || 'hatch, the males guard the young for up to two months. The larvae have external gills that are reabsorbed '
 || 'during their metamorphosis into fully developed lungfish. As the African lungfish develops from juvenile to '
 || 'adult, its teeth fuse together to form tooth plates, which are used to chew its food.', 3);
 

SELECT * FROM classes;

SELECT * FROM exhibits;

SELECT * FROM animals;

SELECT * FROM facts;

SELECT a.animal_id, a.common_name, a.scientific_name, c.name AS class, e.name AS exhibit
FROM animals a JOIN classes c
ON a.class_id = c.class_id
JOIN exhibits e
ON a.exhibit_id = e.exhibit_id;

