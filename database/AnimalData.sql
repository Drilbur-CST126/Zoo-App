--Adding data...

SET IDENTITY_INSERT animal.classes ON;
INSERT INTO animal.classes (class_id, name)
VALUES	(1, 'Mammals');
INSERT INTO animal.classes (class_id, name)
VALUES	(2, 'Birds');
INSERT INTO animal.classes (class_id, name)
VALUES	(3, 'Fish');
INSERT INTO animal.classes (class_id, name)
VALUES	(4, 'Reptiles');
INSERT INTO animal.classes (class_id, name)
VALUES	(5, 'Amphibians');
INSERT INTO animal.classes (class_id, name)
VALUES	(6, 'Arthropods');
INSERT INTO animal.classes (class_id, name)
VALUES	(7, 'Arachnida');
SET IDENTITY_INSERT animal.classes OFF;


--based off of Oregon Zoo map

SET IDENTITY_INSERT animal.exhibits ON;
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (1, 'Africa Rainforest', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (2, 'Africa Rainforest Avery', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (3, 'Africa Savanna', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (4, 'Ambassador Animals', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (5, 'Black Bear Ridge', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (6, 'Elephant Lands', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (7, 'Cascade Crest', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (8, 'Cascade Stream and Pond', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (9, 'Catio', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (10, 'Chimpanzees', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (11, 'Condors of the Columbia', '');

INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (13, 'Cougar Crossing', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (14, 'Discovery Plaza', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (15, 'Eagle Canyon', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (16, 'Family Farm', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (17, 'Howard Vollum Aviary', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (18, 'Insect Zoo', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (19, 'Penguinarium', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (20, 'Polar Passage', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (21, 'Predators of the Serengeti', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (22, 'Red Ape Reserve', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (23, 'Steller Cover', '');
INSERT INTO animal.exhibits (exhibit_id, name, description)
VALUES (24, 'Wildlife Live', '');
SET IDENTITY_INSERT animal.exhibits OFF;


SET IDENTITY_INSERT animal.animals ON;
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (1, 'African Bullfrog', 'Pyxicephalus Adspersus', 0, '', 5, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (2, 'African Crested Porcupine', 'Hystix Cristata', 0, '', 1, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (3, 'African Lungfish', 'Protopterus Annectens', 0, '', 3, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (4, 'African Painted Dog', 'Lycaon Pictus', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (5, 'African Red-Billed Hornbill', 'Tockus Erythro', 0, '', 2, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (6, 'African Rock Python', 'Python Sebae', 0, '', 4, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (7, 'African Slender-Snouted Crocodile', 'Mecistops Cataphractus', 0, '', 4, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (8, 'African Spurred Tortoise', 'Centrochelys Sulcata', 0, '', 4, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (9, 'Allen''s Swamp Monkey', 'Allenopithecus Nigroviridis', 0, '', 1, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (10, 'American Beaver', 'Castor Canadensis', 0, '', 1, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (11, 'American Black Bear', 'Ursus Americanus', 0, '', 1, 5);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (12, 'Amur Tiger', 'Panthera tigris altaica', 0, '', 1, 14); 
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (13, 'Asian Elephant', 'Elephas maximus', 0, '', 1, 6); 
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (14, 'Australian walking stick', 'Extatosoma tiaratum', 0, '', 6, 18); 
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (86, 'Bald eagle', 'Haliaeetus leucocephalus', 0, '', 2, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (15, 'Black and white-ruffed lemur', 'Varecia variegata', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (16, 'Black rhinoceros', 'Diceros bicornis', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (17, 'Blue and gold macaw', 'Ara ararauna', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (18, 'Bobcat', 'Lynx rufus', 0, '', 1, 5);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (19, 'Bontbok', 'Damaliscus pygargus pygargus', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (20, 'Bufflehead', 'Bucephala albeola', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (22, 'Bull trout', 'Salvelinus confluentus', 0, '', 3, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (23, 'California condor', 'Gymnogyps californianus', 0, '', 2, 11);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (24, 'Cattle Egret', 'Bubulcus ibis', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (25, 'Cheetah', 'Acinonyx jubatus', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (26, 'Chimpanzee', 'Pan troglodytes', 0, '', 1, 10);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (27, 'Chinook Salmon', 'Oncorhynchus tshawytscha', 0, '', 3, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (28, 'Cinnamon Teal', 'Anas cyanoptera', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (29, 'Coho Salmon', 'Oncorhynchus kisutch', 0, '', 3, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (30, 'Colobus monkey', 'Colobus guereza', 0, '', 1, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (31, 'Common emperor scorpion', 'Pandinus imperator', 0, '', 7, 18);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (32, 'Cougar', 'Puma concolor', 0, '', 1, 13);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (33, 'De Brazzas monkey', 'Cercopithecus neglectus', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (34, 'Desert tortoise', 'Gopherus agassizii', 0, '', 4, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (21, 'Domestic cat', 'Felis Catus', 0, '', 1, 9);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (35, 'Dwarf mongoose', 'Helogale parvula', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (36, 'Ball python', 'Python regius ', 0, '', 4, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (37, 'Giant African millipede', 'Archispirostreptus gigas', 0, '', 6, 18);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (38, 'Giraffe', 'Giraffa', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (39, 'Golden Eagle', 'Aquila chrysaetos', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (40, 'Grey Gull', 'Larus modestus', 0, '', 2, 19);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (41, 'Hadada ibis', 'Bostrychia hagedash', 0, '', 2, 2);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (42, 'Harbor seal', 'Phoca vitulinaHarbo', 0, '', 1, 23);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (43, 'Harris Hawk', 'Parabuteo unicinctus', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (44, 'Hooded merganser', 'Lophodytes cucullatus', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (45, 'Hooded vulture', 'Necrosyrtes monachus', 0, '', 2, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (46, 'Humboldt penguin', 'Spheniscus humboldti', 0, '', 2, 19);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (47, 'Inca Tern', 'Larosterna inca ', 0, '', 2, 19);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (48, 'Indian runner duck', 'Anas platyrhynchos', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (49, 'Kinkajou', 'Potus flavus', 0, '', 1, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (50, 'Lesser flamingo', 'Phoenicopterus minor', 0, '', 2, 2);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (51, 'Lion', 'Panthera leo', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (52, 'Madagascar hissing cockroach', 'Gromphadorrhina portentosa', 0, '', 6, 18);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (53, 'Mexican red-kneed tarantula', 'Brachypelma smithi', 0, '', 6, 18);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (54, 'Naked mole rat', 'Heterocehalus glaber', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (55, 'Nankin chicken', 'Gallus gallus', 0, '', 2, 16);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (56, 'Nigerian dwarf goat', 'Capra hircus', 0, '', 1, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (57, 'North American river otter', 'Lontra canadensis', 0, '', 1, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (58, 'Northern pintail', 'Anas acuta', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (59, 'Northern shoveler', 'Anas clypeata', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (60, 'Old world rabbit', 'Oryctolagus cuniculus', 0, '', 1, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (61, 'Orangutans', 'Pongo pygmaeus', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (62, 'Pacific lamprey', 'Entosphenus tridentatus', 0, '', 3, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (63, 'Philippine sailfin lizard', 'Hydrosaurus pustulatus', 0, '', 4, 4);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (64, 'Polar bear', 'Ursus maritimus', 0, '', 1, 20);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (65, 'Pygmy goat', 'Capra hircus', 0, '', 1, 16);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (66, 'Pygora goat', 'Capra hircus', 0, '', 1, 16);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (67, 'Rainbow trout', 'Oncorhynchus mykiss', 0, '', 2, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (68, 'Red panda', 'Ailurus fulgens', 0, '', 1, 14);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (69, 'Red-crested pochard', 'Netta rufina', 0, '', 2, 2);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (70, 'Red-tailed hawk', 'Buteo jamaicensis', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (87, 'Redhead', 'Aythya americana', 0, '', 2, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (71, 'Ring-tailed lemur', 'Lemur catta', 0, '', 1, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (72, 'Ringtail', 'Bassariscus astutus', 0, '', 1, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (73, 'Rocky Mountain goat', 'Oreamnos americanus', 0, '', 1, 7);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (74, 'Rodrigues flying fox', 'Pteropus rodricensis', 0, '', 1, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (75, 'Sacred ibis', 'Threskiornis aethiopicus', 0, '', 2, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (76, 'Southern ground hornbill', 'Bocorvus leadbeateri', 0, '', 2, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (88, 'Southern sea otter', 'Enhydra lutris', 0, '', 1, 23);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (77, 'Spekes gazelle', 'Gazella spekei', 0, '', 1, 3);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (78, 'Straw-colored fruit bat', 'Eidolon helvum', 0, '', 1, 1);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (79, 'Turkey vulture', 'Cathartes aura', 0, '', 2, 24);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (80, 'Veiled chameleon', 'Chamaeleo calyptratus', 0, '', 4, 21);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (81, 'Western painted turtle', 'Chrysemys picta bellii ', 0, '', 4, 8);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (82, 'White sturgeon', 'Acipenser transmontanus', 0, '', 3, 15);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (83, 'White-cheeked gibbon', 'Nomascus leucogenys', 0, '', 1, 22);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (84, 'White-faced whistling duck', 'Dendrocygna viduata', 0, '', 2, 2);
INSERT INTO animal.animals (animal_id, common_name, scientific_name, qr_code, tags, class_id, exhibit_id)
VALUES (85, 'Wood duck', 'Aix sponsa', 0, '', 2, 8);
SET IDENTITY_INSERT animal.animals OFF;

--African Bullfrog
INSERT INTO animal.facts (fact, animal_id)
VALUES ('Bullfrogs'' fingers are short and blunt, without webbing. 
		Its large mouth allows it to eat reptiles. 
		In the front of its lower jaw are three large, toothlike projections. 
		It vocalizes with loud bellows and roars. 
		It may sit quietly for hours partially buried in the earth with only its nose exposed. 
		Bullfrogs hibernate during the dry season, spending 10 months underground. 
		Frogs breed when they emerge from hibernation with the return of rains.
		The female lays between 3,000 and 4,000 eggs in shallow water. Tadpoles emerge the second day after eggs are laid. ' +
		'The young may be smooth-skinned. 
		It is called the Kijani, which is Swahili for "Green." 
		Male: 9 inches 
		Female: 4 inches 
		Lifespan: up to 45 years', 1);

--African Crested Porcupine
INSERT INTO animal.facts (fact, animal_id)
VALUES ('The African crested porcupine is the largest porcupine in the world. It lives in hilly, rocky habitats ' +
		'in sub-Saharan Africa, North Africa and Italy. The sharp, sturdy quills of the African crested porcupine ' +
		'give it highly effective protection against predators. Its body is covered with coarse quills 1 to 13 ' +
		'inches long and of varying thicknesses. Its most heavily armed area is its hindquarters, which have short, ' +
		'thick quills. When it is confronted by a predator, the African crested porcupine raises the 12- to 13-inch quills ' +
		'along its head and back into a crest so its body appears larger and more threatening. If this strategy doesn''t ' +
		'chase off the predator, the porcupine stamps its feet, clicks its teeth, and rattles its hollow-tipped tail quills. ' +
		'If this fails, it runs backwards and rams the attacker with the short, thick quills on its backside. The tips of ' +
		'its quills lodge in its enemy''s skin, and the resulting wounds can disable or even kill the predator. Porcupines ' +
		'have been known to injure lions, leopards, hyenas, even humans. African crested porcupines eat tubers, bark, bulbs, ' +
		'fallen fruit and cultivated root crops. They are nocturnal and forage alone at night, traveling up to 9 miles in ' +
		'their search for food. They return to the den and rest during the day. Though they forage alone, they live in ' +
		'small family groups made up of an adult pair and their young, both infants and juveniles. They develop elaborate ' +
		'burrows to house this family group. African crested porcupines are monogamous. Mating is a thorny challenge because ' +
		'of the spines and quills of the two participants. Females usually have one litter per year after a pregnancy lasting ' +
		'about 112 days. One to 4 offspring, called "porcupettes," are born in a separate grass-lined birth chamber within the ' +
		'burrow system. The porcupettes are born with open eyes and developed teeth, though the quills on their backs are soft. ' +
		'They leave the den about a week later, just as their quills begin to harden. African crested porcupines are 24 to 36 ' +
		'inches long, not counting their 3 to 6 ½ inch tail. They weigh between 22 and 66 pounds. They live about 20 years, ' +
		'both in the wild and in captivity. African crested porcupines are not endangered, but because they eat cultivated ' +
		'crops they are seen as agricultural pests. Farmers use dogs to hunt them or smoke them out of their burrows; in ' +
		'some areas, farmers illegally use poison to kill them. They are also killed for their quills, which are used as ' +
		'ornaments and talismans. In North Africa they are killed and sold to be used in traditional medicine.', 2);
 
--African Lungfish
INSERT INTO animal.facts (fact, animal_id)
VALUES ('African lungfish live in freshwater swamps, backwaters and small rivers in West and South Africa. ' +
		'These prehistoric animals have survived unchanged for nearly 400 million years and are sometimes referred ' +
		'to as "living fossils." African lungfish have some fascinating adaptations. They have two lungs, and can ' +
		'breathe air. This is a vital feature, since they live in flood plains in waterways that often dry up. To ' +
		'manage this life-threatening situation, the lungfish secretes a thin layer of mucus around itself that dries ' +
		'into a cocoon. It can live out of water in this cocoon for up to a year, breathing through its lungs until ' +
		'rains refill its waterway. The African lungfish also hibernates in water. It digs 1-9 inches into the soil ' +
		'and debris at the bottom of its waterway, then wiggles in the mud to create a bulb-shaped chamber and rests ' +
		'there with its nose pointing upward. Its metabolic rate slows down, and the nutrients it needs to survive come ' +
		'from breakdown of its muscle tissue. It can remain up to 4 years in this state. African Lungfish can use their ' +
		'thin hind limbs to lift themselves off the bottom surface and propel themselves forward. This is probably possible ' +
		'because they can fill their lungs with air, adding to the buoyancy of their bodies in water. Scientists believe that ' +
		'lungfish may be closely related to the animals that were able to evolve and come of the water and onto land. 
		African lungfish are omnivorous, eating a varied diet that includes frogs, fish and mollusks as well as tree ' +
		'roots and seeds. They grow between 6 ½ and 40 inches long, and can weigh up to nearly 8 pounds. The female ' +
		'African lungfish lays its eggs in a nest in a weedy area of its habitat. Once the eggs hatch, the males guard ' +
		'the young for up to two months. The larvae have external gills that are reabsorbed during their metamorphosis ' +
		'into fully developed lungfish. As the African lungfish develops from juvenile to adult, its teeth fuse together ' +
		'to form tooth plates, which are used to chew its food. ', 3);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The scientific name for the African painted dog is Lycaon pictus, which means ' +
		'"painted wolf." The coat markings on each individual are unique. ' +
		'Their highly sensitive ears act like satellite dishes, allowing them to hear their prey ' +
		'from a distance. Their large ears serve as cooling systems, too: air moves over the blood ' +
		'vessels in their ears and carries heat away.', 4);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The red-bill lives in open savanna, woodland and thorn scrub in sub-Saharan Africa. ' +
		'It is an omnivore, eating fruit, insects and small animals. Hornbills are named ' +
		'because the shape of their bill reminded early people of cattle horns. ' +
		'The hornbill''s first two neck vertebrae are fused to support its large bill. ' +
		'Zazu, a character in the animated film The Lion King is an African red-billed hornbill.', 5);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Pythons are the largest species of snake in Africa. They live in grasslands ' +
		'and savanna near water and occasionally in forest edges in sub-Saharan Africa. They are ' +
		'carnivores. In Greek mythology, the Python was a serpent that was the guardian of the' +
		'cult at Delphi.', 6);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Slender-nosed crocodiles grow up to 13 feet long and weigh up to 500 pounds. ' +
		'Their skin is protected by scales, and their back scales are armored with bony plates. ' +
		'They have rows of razor-sharp teeth in powerful jaws. They swim using their tails. ' +
		'Underwater, their eyes are protected by an extra set of semi-transparent eyelids. ' +
		'On land, they belly-crawl through mud and stand up on all four legs to "high walk" over ' +
		'rough terrain. They sometimes climb several feet into the limbs of streamside trees.', 7);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The African spurred tortoise lives in semi-arid grasslands, scrub and ' +
		'savannah areas along the southern edge of the Sahara Desert in Northern Africa. It is ' +
		'the third largest tortoise in the world, and the largest on the African continent', 8);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Swamp monkeys forage on the ground and in shallow water. They eat fruit, leaves and ' +
		'small invertebrates. They may also raid crops. They are arboreal (living in trees) and ' +
		'diurnal (active during the day). Male monkeys are larger than females. They live in groups ' +
		'of up to 40, including several adult males. Predators include raptors, snakes and bonobos. ' +
		'Swamp monkeys can dive into the water to avoid predators.', 9);


INSERT INTO animal.facts (fact, animal_id)
VALUES ('The beaver''s body is wonderfully adapted for swimming in cold water. ' +
		'The top layer of its fur is waterproof, and its undercoat traps air and keeps its skin warm. ' +
		'Its back feet are webbed for swimming, and its tail provides steering and power. ' +
		'While it swims, a transparent membrane covers the beaver''s eyes, and valves in its nostrils ' +
		'and ears keep the water out.', 10);


INSERT INTO animal.facts (fact, animal_id)
VALUES ('Black bears are opportunistic omnivores—that is, they will eat whatever is available, ' +
		'from plants, nuts and berries to small mammals and carrion. Their diet varies with season and ' +
		'location. Their teeth are adapted to this widely varied diet, with huge canine teeth to rip meat ' +
		'off bones and flat molars to chew plants and nuts. If food is scarce in winter, they can slow ' +
		'their metabolism and spend months sleeping in a den.', 11);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Like human fingerprints, the striped pattern on each Amur tiger''s fur is unique ' +
		'to that individual. Their fur is lighter than other tigers'' fur, and it becomes even lighter ' +
		'in winter. To protect them from the cold, their fur grows thicker than other tigers'' fur, and ' +
		'they have manes. Thick fur on their paws keeps their feet warm, allows them to walk silently as ' +
		'they stalk prey, and makes their feet behave like showshoes as they move through the snow. ' +
		'Their long claws are retractable, which allows them to run easily and quickly.', 12);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('As highly intelligent and social animals, Asian elephants communicate with each ' +
		'other in several ways. Sounds include snorts, barks and roars as well as very low frequency ' +
		'rumbles used to communicate over distances of more than five miles. They also use their highly ' +
		'sensitive trunks to communicate by touch.', 13);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('They live in and eat the leaves of eucalyptus trees. ' +
		'Males are thin and have fully formed wings that are capable of flight; ' +
		'females have thick abdomens, and non-functional wings that appear as plates on their thorax. ' +
		'As this insect grows, it molts (sheds its skin). It may eat the molted exoskeleton. ' +
		'It curls its tail up to resemble a dried leaf and camouflage itself from predators.', 14);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Black-and-white ruffed lemurs are active in the morning and late afternoon. ' +
		'They spend most of their time in the trees, leaping from branch to branch to eat fruit and nectar. ' +
		'They often hang by their feet to reach ripe fruit or nectar from tree flowers.
		These big lemurs help re-seed the rainforest. Some of the fruit they eat has big seeds, ' +
		'which pass through their gut and get pooped out on the forest floor. They''re also pollinators. ' +
		'When they feed on nectar, they open the flower and bury their snout in it, getting pollen all ' +
		'over their noses. They transfer the pollen from their noses to the next set of flowers as they ' +
		'move to the next tree.', 15);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Black rhinos use their keen sense of hearing and smell to detect predators. ' +
		'Because their eyesight is poor, they count on the alarm calls of other animals. ' +
		'The oxpecker, for example, is a bird that eats the ticks and parasites from the rhino''s back, ' +
		'and raises an alarm when it sees a threat to the rhino.', 16);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Their diet consists primarily of fruits, vegetable matter, seeds, nuts, leaves and bark. ' +
		'They also eat clay on exposed riverbank clay licks as a mineral supplement.
		Blue and gold macaws are generally seen in pairs but may form flocks of up to 30 birds. 
		Paired birds fly with wings almost touching. Each morning, they fly from roosting sites to ' +
		'feeding grounds and return just before sunset, flying high above the forest canopy. They do not migrate.
		These macaws are extremely wary. At the slightest sign of danger, they rise into the air, screeching loudly.
		Their powerful beak crushes seeds and opens nuts. For very hard nuts, the bird uses the lower ' +
		'part of the beak to file down the nut''s shell before cracking it open. ' +
		'The thick, fleshy tongue moves the food around as the macaw works on it.', 17);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Bobcats are generally solitary, coming together during mating season or when a female is with her kittens.
		They are active at dusk and dawn (crepuscular), when they move quietly through brushy areas in search of food.
		They''re opportunistic and will eat any prey that presents itself, including insects, fish, amphibians, reptiles, ' +
		'birds and mammals. Rabbits are a favorite. They may eat unspoiled carrion if they encounter it.
		Bobcats may look cuddly, but they are fierce predators who can take down a small deer.', 18);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('These handsome animals spend their day feeding on short grass, but they are less ' +
		'active during the hot hours in the middle of the day. When they live in a large enough ranging area, ' +
		'they travel in loose and changing herds. Small nursery herds of two to eight females and their ' +
		'young usually remain with the same territorial male all year round.', 19);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The bufflehead''s name is a combination of buffalo and head, due to the bulbous shape of the ' +
		'male''s head when he puffs up the white feathers on the back of his head.
		Buffleheads are identified by the large white patch on the back of their iridescent green and purple heads.
		Buffleheads are highly active, diving almost continuously.Buffleheads feed in small groups, with ' +
		'one duck watching for predators while other ducks dive.
		Buffleheads eat insects, aquatic plants and small invertebrates.', 20);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Like wild cats, domestic cats can see clearly at one-sixth the light level we would need. ' +
		'You''ve probably seen a cat''s eyes glitter in low light—this is because there''s a reflective layer ' +
		'behind their eyes that bounces the light back into their retinas. This makes their night vision ' +
		'especially good. Cats'' other senses are pretty impressive, too. Their sense of smell is about ' +
		'30 times better than ours, and they can hear higher frequency pitches than dogs can. Their ears ' +
		'move up, down and side to side, amplifying sounds and helping cats figure out where sounds are ' +
		'coming from.', 21);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Named for its large head, the bull trout is a species of char native to Northwestern North America.
		Bull trout are often confused with another Pacific Northwest native, the Dolly Varden, as well as ' +
		'the similarly-patterned brook trout, which is introduced from Eastern North America.
		While char have light spots on dark bodies, rainbow trout and Pacific salmon have dark spots on light bodies.
		Bull trout can vary in color, but are most often olive green with pale yellow or pinkish spots.
		Young bull trout feed on aquatic invertebrates. Adults are highly piscivorous, meaning they feed primarily on fish.
		In some locations, fish comprises 99% of bull trout diet.', 22);

INSERT INTO animal.facts (fact, animal_id)
VALUES (' Historical and scientific evidence suggests they once bred in the Pacific Northwest, ' +
		'yet the California condor has not been documented in Oregon for more than a century.
		Condors play a critical role in ecosystems by recycling nutrients and disposing of dead, ' +
		'disease-ridden animals. Known to some indigenous peoples as ''thunderbirds'', ' +
		'they have long been revered by humans, but a confluence of pressures during the first half of the ' +
		'20th century nearly drove them to extinction.', 23);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Cattle egrets follow large grazers such as buffalo and elephants.
		As the grazers feed on grass, they disturb insects, spiders, frogs and worms, ' +
		'which the egrets then eat.
		During the breeding season, the cattle egret''s bill, iris and the feathers on its head and ' +
		'back turn orange-red.
		Cattle egrets are also known as buff-backed herons.', 24);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The cheetah''s body is uniquely designed for speed. Its lightweight, ' +
		'narrow frame supports long legs and its flexible spine allows its front legs to stretch far ' +
		'forward with each stride. Like a horse, its large heart fills a deep chest cavity and its large ' +
		'nostrils allow air to easily enter its lungs. A cheetah''s long tail functions as a rudder ' +
		'during high-speed chases. Its claws are not fully retractable and act like the cleats of a track ' +
		'shoe, giving the cat traction as it runs.', 25);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Chimpanzees are highly intelligent and have rich social lives. ' +
		'They problem solve and invent tools. They communicate using facial expressions, postures, ' +
		'and a language of many sounds. Each chimpanzee has their own voice. Here at the zoo, our keeper ' +
		'staff can distinguish between chimpanzees without even having to see them.', 26);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Wild Chinook salmon are found all along the west coast of North America, ' +
		'from Monterey Bay in California to the Chukchi Sea in Alaska. Like all salmon species, ' +
		'Chinook are anadromous—that is, they are born in fresh water, migrate to the ocean, then return as ' +
		'mature adults to lay their eggs in the streams where they were born.', 27);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Groups of cinnamon teal often swim behind each other, taking advantage of the food stirred up by the bird in front.
		The cinnamon teal diet consists of seeds, roots, aquatic plants and insects.
		Cinnamon teal hybridize with blue-winged teal.', 28);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Coho salmon are anadromous fish: they are born in freshwater, migrate to the sea ' +
		'in adulthood and return to freshwater to breed.
		Coho fry (recently hatched fish) feed primarily on insects, zooplankton and small fish. When they ' +
		'reach the ocean, they add small crustaceans to their diet. Adult coho primarily eat other fish and ' +
		'invertebrates.
		Coho have been introduced to Lake Erie and landlocked reservoirs throughout the United States as ' +
		'a sport fish. Although coho do spawn in some Great Lakes tributaries, present fish populations are ' +
		'maintained mainly by fish culture and stocking.', 29);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Colobus monkeys live mostly in the trees and eat leaves and fruit. To help them digest all that ' +
		'foliage, they have a multi-chambered stomach and gut microbes that break down cellulose. They get ' +
		'water from dew and the moisture in their food, or from rainwater in tree hollows.
		Colobus monkeys are unusual for their beautiful black and white coloring. They are 18 to 27 inches ' +
		'long, not counting their tails, and weigh between 12 and 32 pounds. Males are usually slightly bigger ' +
		'than females. With only four fingers and no thumb, they move quickly through the trees.', 30);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Adults eat ground-dwelling insects and small animals; young eat fruit flies and small crickets.
		Their venom is mild.
		Emperor scorpions hunt at night. They use sensory hairs on their body to make up for poor vision.
		Scorpions defend themselves against predators with their large claws.
		Emperor scorpions rarely burrow, but instead hide under logs or rocks.', 31);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Cougars usually hunt at dawn and dusk. A hunting cougar will quietly stalk its prey, ' +
		'then leap onto its back and break its neck. Cougars live and hunt in territories ranging in size ' +
		'from 5 to 150 square miles, depending on the food and shelter resources available. Males'' ' +
		'territories usually overlap with the territories of several females ', 32);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('De Brazza''s monkeys forage in the early morning and evening; they hand-gather fruit, buds, ' +
		'young leaves, flowers and catch lizards.
		They are arboreal, dwelling in the tree canopy, and prefer dense vegetation near rivers. They ' +
		'live in lowland and submontane tropical moist forest, swamp forest, semi-deciduous forest and Acacia forest.
		Humans, other primates, African eagles and leopards are predators. De Brazza''s monkeys freeze as a defense mechanism.
		These monkeys are territorial and live in small groups. Daughters may stay with mothers their ' +
		'entire lives. Males leave when they are sexually mature.', 33);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Desert tortoises forage for leaves, stems, flowers, seeds and grasses.
		Their flattened front limbs are an adaptation for digging. They take shelter in burrows (either ' +
		'ones they dig or that were made by other animals) and rocks to regulate their body temperature ' +
		'and reduce water loss. They make nests at the entrance to their burrows.
		Desert tortoises are inactive most of the year. They are most active at temperatures between 79 ' +
		'and 93 degrees following seasonal rains, when they move across 10- to 100-acre home ranges. They ' +
		'spend summers in estivation (a dormant or torpid state). This helps reduce water loss. Winter is ' +
		'spent in hibernation, which helps them survive freezing temperatures and low food availability.
		Turtles and their eggs have many predators including Gila monsters, snakes, ravens, foxes, bobcats, ' +
		'coyotes, domestic dogs and more.', 34);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('This squirrel-sized mongoose is the smallest of the African mongooses. It is short and stocky, ' +
		'with a blunt, pointed muzzle and long tail. It is usually a speckled-brown or reddish color.
		It preys primarily on insects, though it may eat rodents, lizards, snakes and birds.
		Dwarf mongooses live in groups of 12 to 15, covering more than 75 acres of territory. Within that ' +
		'range, 20 or more termite mounds are used as den sites, lookout posts and food sources. Mongooses ' +
		'also find dens in rocky outcrops and hollow logs.
		Den sites are rarely used for more than a few days at a time, since dwarf mongooses are nomadic ' +
		'(moving from place to place in search of food).
		Mongoose groups are matriarchal (led by a dominant female). Along with her mate, she initiates ' +
		'group moves and has first rights to food. She is the only female allowed to breed; subordinate ' +
		'females offspring are usually not allowed to survive. The alpha male is one rank below her. He ' +
		'spends most of his time defending the territory and scanning for danger from atop a termite mound.
		Group hierarchy is reverse age-based; youngest individuals rank higher than older ones. This unusual ' +
		'social arrangement most likely assures that the young will get sufficient food.
		Dwarf mongooses and ground hornbills have a symbiotic relationship (one that benefits both animals). ' +
		'They often feed together; as the mongooses disturb insects with their muzzles, hornbills pounce ' +
		'on the food; hornbills make loud calls to alert mongooses of approaching predators.', 35);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Length and defense: 3 to 4 feet, the smallest of African pythons; defense against larger predators is to coil in a tight ball.
		Habitat and range: Grasslands of West Africa, Sierra Leone, Togo and Senegal
		Diet and hunting: Small mammals
		Reproduction: The female coils around six to seven eggs for approximately three months, often nesting in an abandoned burrow.', 36);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The giant African millipede is the largest of the world''s 10,000 species of millipedes.
		Of the world''s millipedes, leg counts range from 36 to 400. They don''t actually have 1,000 legs, despite the name. 
		A giant African millipede may have 30 to 40 segments, with 4 legs per segment.
		Giant African millipedes are nocturnal, moving slowly on the rainforest floor, chewing up and recycling debris.
		When threatened, they curl up in a spiral.', 37);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The giraffe is the tallest land-based mammal in the world. Males stand up to 18 feet ' +
		'tall and females up to 15 feet tall. A giraffe''s necks account for more than half of its height. ' +
		'A giraffe has the same number of vertebrae (neck bones) as humans and other mammals do, but each ' +
		'is more than 10 inches long. The joint that connects the top vertebra to the skull allows the ' +
		'giraffe to tilt its head upward until it is almost perpendicular to the ground. This makes it easy ' +
		'for the giraffe to reach high into the trees for food.', 38);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Golden eagles are found in Europe, Asia, North Africa, the Arabian Peninsula and ' +
		'North America. They range from sea level to 10,000 feet in many habitats: forests, tundra, prairies, ' +
		'sagebrush, scrubland or alpine meadows. They are probably the most numerous of large eagles in the ' +
		'world. In North America, golden eagles are more common west of the Mississippi River. Like all ' +
		'raptors, they are carnivores', 39);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Grey gulls run back and forth between receding waves of western South American beaches, ' +
		'searching for small crustaceans in the sand. They also sometimes scavenge in harbors, follow ' +
		'fishing boats, or forage for schools of fish with other seabirds.
		Grey gulls grow to a length of about 18 in and weigh 13 to 14 ounces. They communicate with ' +
		'a yelping "kyow" and a growled, rising "grrraaahh," along with low moans and shrill cries.', 40);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Hadada ibis are large gray to partly brown birds with an iridescent greenish-purple sheen on their wings.
		Their diet consists mainly of insects, worms, snails and small reptiles.
		The bird is named for its distinctive call that sounds like haa-haa-haa-de-dah.', 41);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Harbor seals are found north of the equator along the coasts of the Atlantic and ' +
		'Pacific Oceans. They swim in near-shore coastal waters, bays and estuaries. They haul out on rocky ' +
		'islands and sandy beaches to rest, get warm, give birth, and escape from predators. They usually lie ' +
		'close to the water so they can make a quick escape. Adult harbor seals are five to six feet long and ' +
		'weigh up to 300 pounds. Males are slightly larger than females.', 42);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Harris''s hawks are extremely social birds and typically live and hunt in social groups. ' +
		'This lifestyle, unusual for raptors, has earned them the nickname "Wolves of the Sky."
		Harris''s hawks exhibit an unusual behavior called "stacking." A single Harris''s hawk will ' +
		'perch on a cactus, and 2 to 3 additional birds will stand atop his back. With a shortage of ' +
		'tall trees in their habitat, this behavior helps them to better see prey and predators.
		The Harris''s hawk was named after Edward Harris, a friend of John J. Audubon.', 43);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Male hooded mergansers are named for the crest of feathers on the back of their heads, which can be expanded or contracted.
		The female hooded merganser has a brown body with a light brown crest extending from the back of the head.
		Males look similar during non-breeding season.During breeding season the males coloring changes; ' +
		'the head and neck become black and the crest on the back of its head turns white.
		Hooded mergansers, like all mergansers, have serrated bills adapted for catching fish. They also eat insects and crustaceans.', 44);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Hooded vultures are scavengers and carrion-eaters. Because of their relatively small size and ' +
		'weak bill, they generally wait at a carcass to pick up scraps left by larger vultures. In urban ' +
		'areas, they scavenge in refuse dumps and gutters. On seashores, they feed at low tide on mussels, ' +
		'spiny lobsters, mollusks or dead fish. They also eat grasshoppers, grubs and locusts.
		Because they are smaller than other African vultures, the hooded vulture can rise on thermals more ' +
		'quickly and is often the first to spot a carcass.
		The hooded vulture often follows humans in agricultural fields, picking out grubs and insects exposed by plows.', 45);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Humboldt penguins live along the west coasts of Peru and Chile. They are named after the cold ' +
		'Humboldt Current that runs from the Antarctic to the equator along the west coast of South America.
		They are one of 17 penguin species in the world, all of which live in the Southern hemisphere.', 46);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Inca terns feed on anchovies, mote sculpins and silversides; they swoop down from the air ' +
		'to snatch the tiny fish from the top few inches of water. They rarely dive deeper.
		Since Humboldt penguins feed at greater depths than terns, the two species co-exist.
		Terns also eat offal and scraps from fishing boats.
		They make a high-pitched laughing or cackling often in conjunction with bowing or other displays. 
		They sound off for a number of reasons, including for courtship, to alarm others, to identify one ' +
		'another and to declare territorial boundaries.', 47);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The Indian runner duck is nicknamed the bowling pin duck because it shares the same shape: ' +
		'upright and long, with a small head funneling into a thin neck and larger body.
		Like most domestic ducks, the breed was developed from the mallard. Although the Indian runner ' +
		'duck lays a large number of eggs, it does not usually sit on them. Breeders sometimes place eggs ' +
		'under a broody duck to hatch them.
		A hen can lay up to 180 eggs in one year.
		Unlike some duck breeds, the Indian runner does not need water to breed.
		Ducklings are best raised in small flocks.', 48);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Kinkajous are opportunistic frugivores, eating whatever fruit is abundant. Figs are a ' +
		'favorite. They may supplement their diet with insects, flowers and nectar depending on what is available.
		They are arboreal (living in trees). Their long, prehensile tail and nimble, clawed fingers, ' +
		'are adaptations for life in the trees. Kinkajous can hang upside down while feeding, using their ' +
		'prehensile tail and hind legs for support while holding small fruits in a one-handed grasp.
		They are nocturnal; they spend the day sleeping in dens, often in the crotch or hole of a tree, ' +
		'usually with other kinkajous. At dusk, they groom each other and socialize before separating to forage alone in fruit trees.
		Social groups usually contain two adult males, an adult female and offspring.
		Predators include eagles, jaguars and humans.', 49);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Lesser flamingos get their pink color from pigments in an algae called spirulina, which is their primary food.
		Flamingos have a poor sense of taste and no sense of smell.
		Flocking helps flamingos evade predators such as lions, leopards, cheetahs and jackals.
		During courtship, lesser flamingos gather to march back and forth, all going in the same direction.
		They stand tall with their necks stretched upwards and flap their wings to flash the colors of their feathers.
		Adults are left flightless for around three weeks during their molt.', 50);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Lions are mostly crepuscular (active at dawn and dusk) and spend much of the day ' +
		'sitting or sleeping. They communicate using nine distinct vocalizations, including roars, grunts ' +
		'and growls. A lion''s roar can be heard up to five miles away. Lions prey on almost any animal, ' +
		'from rodents to rhinos, but antelopes, zebras, and wildebeest form the bulk of their diet. Females ' +
		'do most of the hunting, usually in groups.', 51);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Hissing cockroaches live in large colonies.
		They hiss when threatened by a predator, to sound an alarm for other roaches in their colony or ' +
		'during male cockroach fights. Small holes called spiracles on their backs are used for breathing. ' +
		'If they force air out of the spiracle quickly, it makes the hissing sound. This audible use of the ' +
		'respiratory system is more common in vertebrates (as when humans emit a heavy, noisy sigh). Most ' +
		'insects that make noise do so by rubbing body parts together or by vibrating membranes.
		They''re most active at night.
		Males sport large horns, which they use in aggressive encounters like the battles between horned ' +
		'or antlered mammals. Rivals ram each other with their horns or abdomens and hiss as they fight. ' +
		'Winners hiss more than losers, so the sounds may help determine a roach hierarchy.
		They''re an important link in the food chain, breaking down forest debris and providing food for larger animals.', 52);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Tarantulas'' name derives from the southern Italian town of Taranto. 
		In the Middle Ages near Taranto, it was believed that this spider''s bite would cause tarantism, ' +
		'a disorder that caused excitability; the only cure was to dance a frenzied dance called the ' +
		'tarantella. All spiders have venom. Tarantula venom is equivalent to a bee sting; the venom ' +
		'will not kill a person, unless they have an allergic reaction to it.', 53);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Naked mole rats rarely use their eyes, but they have excellent hearing and touch. 
		While they look "naked," they actually have fine, touch-sensitive hairs all over their bodies, ' +
		'which help them navigate by feel in the dark. Their lips close behind their big, protruding teeth. 
		This keeps soil from filling their mouths as they dig. They move backwards as easily as they move forward.', 54);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Nankins are friendly and calm.
		The nankin hen is known for being very broody. They can be used to hatch eggs laid by other poultry.
		Nankins tend to stay together as a group. This defense mechanism increases their chance for survival.', 55);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Goats are browsers, eating tips of woody shrubs and trees. They often improve a pasture by removing ' +
		'blackberry, weedy undergrowth and ivy (even poison ivy and poison oak) that other livestock won''t eat.
		A doe can produce up to two quarts per day of milk that is higher in butterfat (6 to 10 percent) and ' +
		'protein than milk from most dairy goat breeds.
		Nigerian dwarf goats are raised for milk production but also as pets. They are gregarious, friendly ' +
		'and hardy and can thrive in almost any climate. Their gentle, calm and playful nature makes them good ' +
		'companion pets for children and disabled and elderly people.
		Their small size means they do not require as much space or feed as larger dairy goat breeds.
		Color is one factor that makes these goats popular: black, gold, chocolate, Dalmatian-spotted, ' +
		'pint-patterned and other combinations are possible.', 56);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('River otters are quick and agile, swimming up to 7 miles an hour by paddling with their ' +
		'webbed hind feet and using their long, tapering tails. Their average dives last from 1-2 minutes, ' +
		'but during extreme dives they can stay underwater for 4-6 minutes. Their sensitive whiskers help ' +
		'them detect prey underwater. Their eyesight is very acute, and they see well both in the water and ' +
		'on land. Their sensitive whiskers also help them detect prey underwater. Their coats have two layers, ' +
		'guard hairs and under fur. The guard hairs protect the under fur from getting wet; this, in turn, ' +
		'provides an insulating barrier against cold water.', 57);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The northern pintail is graceful and acrobatic in flight – and is nicknamed ''greyhound of the air'' for its rapid flight.
		Northern pintails are omnivorous, feeding on algae, seeds, grasses, insects and small fish.
		Northern pintails typically feed at night on the ground in shallow water, or by diving to reach submerged plants.', 58);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Northern shovelers dip their beaks into shallow water and filter foods such as insects, plants and seeds.
		This type of feeding is called dabbling.
		Males have a bottle-green head and chestnut colored flanks, while the female is mottled brown.
		The northern shoveler has one of the largest bills of any waterfowl.', 59);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Rabbits are altricial (helpless, naked and blind when born). Hares are precocial (generally born ' +
		'with hair, able to see and move around).
		Rabbits live underground in warrens. Hares live in aboveground nests. (Cottontail rabbits are the ' +
		'exception: like hares, they live in aboveground nests.)
		Rabbits are generally smaller than hares, with shorter ears.
		Common rabbits have been domesticated for food or pets. Hares have not.', 60);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Orangutans are active during the day and build tree nests each night out of leaves and branches, ' +
		'often as much as 120 feet above the ground. Their opposable thumbs and big toes combine with long ' +
		'arms and highly mobile shoulder and hip joints to give them easy, flexible movement through the trees.
		Orangutans eat bark, leaves, flowers, insects and over 300 different species of fruit. Young orangutans ' +
		'learn from their mothers what food to eat and where and when to find it. Orangutans have large brains ' +
		'and are highly intelligent. They have been known to make hats out of leaves to keep themselves dry, ' +
		'borrow human boats to cross open water, and use spears to catch fish.', 61);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Pacific Lamprey belong to a family of eel-like fish. They''re anadromous—they migrate from fresh ' +
		'water to the ocean and back, as salmon do. But they don''t have scales, and instead of bones, they ' +
		'have cartilage.
		Pacific Lamprey begin life about the size of a small bead and grow into adult between 3 and 7 years ' +
		'later on their way to the ocean. Adults have two blue eyes and a third "eye"—a light spot on the top ' +
		'of their head—to sense light and dark, and they smell using a nasal pore on the tops of their heads. ' +
		'They breathe using 7 paired gill slits. They swim like eels, using two fins at the top of their bodies ' +
		'and one fin near their tails.', 62);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The male has large sailfins on its back and long tail; the female has dorsal fringe (near the back and upper surface).
		Scale fringes on flattened toes act like pontoons, and allow the lizard to run on top of water on its hind legs.
		It eats fish, frogs, fruits, vegetables and insects.
		The lizard defends itself from predators by escaping into the water, often dropping from tree limbs, where it rests.
		Hand-raised individuals become tame and seem to like being handled.', 63);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The life of a polar bear
		Polar bears are designed for the Arctic climate, where winter temperatures reach -50º F. Two types of fur ' +
		'and up to 4 inches of fat keep them warm and make their bodies more buoyant as they swim. Partial webbing ' +
		'of their huge feet helps bears paddle through the sea, and their large paws distribute their weight so they ' +
		'can walk safely across thin ice.
		Polar bears eat primarily ice seals. They prefer ringed seals, but they also eat bearded, harp, and hooded ' +
		'seals. When food is plentiful, they eat only the skin and blubber and leave the rest of the carcass for ' +
		'Arctic foxes and other animals. In this way, polar bears are able to concentrate on high-calorie fat when ' +
		'food is plentiful and pack on the pounds.', 64);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Pygmy goats are friendly, resilient and intelligent. They make a good impression on zoo visitors who pet them.
		Males produce a strong, musky odor to attract females, especially during breeding season. Their scent gland ' +
		'is on the crown of their head. Females and neutered males are odor-free.
		In the wild, pygmy goats are browsers and prefer leaves to grass.', 65);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Pygoras are friendly, alert, curious and easy to handle. They have the docile nature of angora goats with ' +
		'the spunk and playfulness of pygmy goats.
		They produce three kinds of fleece. Type A fleece produces fiber like kid mohair, and type B produces fiber that''s a blend of ' +
		'mohair and cashmere; both are harvested by shearing. Type C produces cashmere fleece that is harvested by brushing.', 66);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Cold headwaters, creeks, rivers, cool lakes, estuaries and oceans are habitats used by different ' +
		'populations of Oncorynchus mykiss. Those fish that spend their entire lives in freshwater are called rainbow trout.
		Some populations of Oncorhynchus mykiss are called steelhead trout. Though they are the same species, ' +
		'they are anadromous (born in freshwater, migrate to the sea in adulthood and return to freshwater to spawn).
		Unlike other salmon species, rainbow trout can spawn more than once.
		Rainbow trout eat aquatic and terrestrial insects, mollusks, crustaceans, fish eggs, minnows and other ' +
		'small fish (including other trout).', 67);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Red pandas are great climbers that spend most of their time in the trees, assisted by ' +
		'flexible ankles, semi-retractable claws, and a long tail. Even though they come from a long line of ' +
		'carnivores and still retain their carnivore teeth and stomachs, they eat a diet made up of mostly ' +
		'bamboo leaves. To cope with this lower quality diet, they eat only the most nutritious, tender leaves' +
		'and can actually become dormant, lowering their metabolic rate for short spells to conserve energy. 
		Red pandas are often solitary in their native habitat but will come together to breed once they reach' +
		'about 18 months of age. They typically have a litter of one or two, but sometimes up to four, cubs. 
		Cubs stick with their mother until they are full grown at about one year old. Red pandas start to ' +
		'show their age around 10-12 years old but have been known to live beyond 20 years.', 68);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The male red-crested pochard has a rounded orange head, a red bill and a black breast.
		The female is mostly brown with a darker brown crown and splashes of white on its face.
		Red-crested pochards are social birds that form large flocks in winter, often sharing the company of other diving duck species.
		They dive and dabble to get at the roots, seeds and aquatic plants that they eat.
		Males and non-breeding red-crested pochards molt and become flightless for four weeks between June and August', 69);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Red-tailed hawks are opportunistic, preying on a broad variety of animals: insects, rats, ' +
		'mice, squirrels, reptiles and other birds. About 75 percent of their diet consists of rodents ' +
		'and other small mammals. This flexibility in diet contributes to their successful adaptation ' +
		'to many types of ecosystems.
		Like other buteos, the red-tailed hawks hunting style allows them to expend less energy when ' +
		'hunting. They scan for prey from either a soaring or perched position, and then move in for the ' +
		'kill. For unwary prey like mice, red-tailed hawks may fly openly from perch to perch. For more ' +
		'alert prey, a red-tailed hawk approaches indirectly from behind the cover of trees and bushes. ' +
		'Then the hawk attacks quickly, and may even pursue prey over short distances.
		Plumage in red-tailed hawks is highly variable, and includes nine recognized color morphs. Generally, ' +
		'adult red-tailed hawks have a broad, fan-shaped tail with a red upper surface. Typically, backs and ' +
		'upper wing surfaces are dark gray or reddish brown, streaked and barred with lighter colors. In a ' +
		'lighter color phase, adult breasts are cream colored and streaked with brown. There may also be a ' +
		'darker band across the belly. Dark phase birds may have red or black bellies, breasts, or wing linings.
		There are nearly a dozen subspecies of red-tailed hawks; six are recognized in the US.
		When threatened by an intruder, a red-tailed hawk won''t usually stay to defend its nest. 
		They are generally shy and nonaggressive toward people, and are commonly attacked ' +
		'(but usually not injured) by crows, magpies, owls, other hawks and even songbirds over ' +
		'territorial disputes.
		The call of the red-tailed hawk is a series of long, drawn-out raspy screams. In flight, ' +
		'they will make a high-pitched "skeeeer;" at close range a croaking "guh-runk." Birds frequently ' +
		'call while soaring.', 70);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Ring-tailed lemurs are hard to miss. They''re named for their 2-feet-long tails, ' +
		'which have 13 alternating black and white rings. Like all lemurs, they''re prosimians, a distinct ' +
		'suborder of the primate family, separate from monkeys and apes. Prosimians have many unique features, ' +
		'including wet noses and a keen sense of smell. Ring-tailed lemurs weigh about 6 pounds. Their fur ' +
		'isn''t as thick as the fur of ruffed lemurs. To warm up before their daily search for food, they ' +
		'gather in a "mob," stretch out belly up, and bask together in the sun.', 71);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The ringtail is named for its long, bushy tail with 14 to 16 black and white bands.
		They are cat-sized, with a foxlike face and elongated body. They are mostly yellowish to dark ' +
		'brown with a whitish underside. Large eyes are ringed with white fur.
		Ringtails are nocturnal and solitary, except during mating season. They hunt by pouncing on ' +
		'prey such as small mammals, insects and birds. They also eat fruit and berries.
		Ringtails make dens in rock crevices, lining them with moss, leaves or grass.
		Semi-retractable claws make them excellent climbers.
		Predators include great horned owls, bobcats, raccoons and coyotes.
		Ringtails squeak, chitter, grunt, growl and hiss.', 72);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('A mountain goat''s wool coat is white, an adaptation that helps it hide from predators by ' +
		'blending in with its snowy environment. It sheds its coat, or pelage, each summer.
		Mountain goats'' major predators are mountain lions, gray wolves and brown bears.
		Males and females both have eight to 10-inch long, black, recurved (curving backward) horns. ' +
		'Unlike a deer''s antlers, these horns do not fall off, but rather grow longer and thicker with ' +
		'age. Males'' horns are thicker and more curved.
		Goats hooves have a hard, sharp rim enclosing a soft inner pad. The inner pad helps provide traction ' +
		'on steep, uneven terrain, an adaptation for surviving in the goats'' mountain habitat.
		Goats may form large groups in the winter in protected areas; in summer, they disperse into small ' +
		'bands, climb to higher elevations and congregate at salt licks.', 73);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Rodrigues flying foxes are actually fruit bats. They''re called "flying foxes" because ' +
		'their erect ears and long muzzles make them look like small foxes. A Rodrigues'' body is small at ' +
		'6 to 8 inches long, but their wings spread up to 35 inches. Their wings have two thin layers that ' +
		'stretch over 4 thin, lightweight finger bones. They use the hooked claws on their thumbs for ' +
		'climbing. Like most fruit bats, Rodrigues bats do not use echolocation. Instead, they use their ' +
		'excellent eyesight and sense of smell to find their food. They''re active at dawn and dusk, ' +
		'when they land on fruit trees to feed on mangos, figs, breadfruit and tamarind pods. They crush ' +
		'the food in their mouths, swallow the juice, and spit out the seeds and pulp as a pellet. This helps ' +
		'the rainforest to regenerate. After feeding, they rest and digest their food for several hours, ' +
		'then return to roost in large rainforest trees.', 74);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The sacred ibis forages during the day in groups of 2-20 birds and occasionally in flocks of 100-300.
		They mainly inhabit the margins of inland freshwater wetlands, sewage works, saltpans, marshes and ' +
		'rivers in open forest.
		The diet of the sacred ibis consists mainly of insects, but it will also eat crustaceans, worms, small ' +
		'reptiles, crocodile and pelican eggs and carrion.
		The sacred ibis is an intra-African migrant, traveling hundreds of miles within the continent to breed ' +
		'during the rainy season.
		During breeding season, large groups of male sacred ibis select a place to settle and form pairing territories.
		The nest of the sacred ibis is a large platform of sticks and branches built in trees or placed on ' +
		'rocky ground.
		The sacred ibis is considered an invasive species in Florida, France, Italy and Spain, where escaped ' +
		'or introduced birds have established breeding colonies. Outside of their native range, sacred ibis ' +
		'pose potential threats to native birds by preying on their eggs.', 75);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The Southern ground hornbill resides in open woodlands, savanna, and lightly wooded grasslands.
		Its diet consists mainly of insects, but it will also eat amphibians, small reptiles, mammals and birds.
		Primarily monogamous, during breeding season males inflate internal air sacs and let out a series of deep booming sounds to attract a mate.
		In flight, it angles its head and legs down, but can reach speeds of up to 18 miles per hour.
		They roost in trees and nest primarily in the cavity of a tree or a hole between rocks.', 76);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Gazelle are crepuscular (active at dusk and before dawn).
		They gather in family groups up to 20. Group size depends on how much vegetation is available.
		Three to five folds of skin near gazelles'' noses can be inflated with air, to about the size of half a ' +
		'tennis ball. When the air is released it makes an alarm call that sounds like a pistol shot.
		Muscular spasms dispense scent from preorbital glands (the inner corner of the eye, where tear ducts ' +
		'are on humans). Males rub this scent onto vegetation to mark their territory.
		Gazelles primary predators other than humans are cheetah, lions, wild dogs, leopards, hyenas and pythons.', 77);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The straw-colored fruit bat is adaptable to many habitats and lives in lowland forests and savannas ' +
		'of sub-Saharan Africa, from Senegal in the west, South Africa to the south, and Ethiopia in the east. It is an ' +
		'herbivore, eating wild fruits and nectar.
		They are strong flyers, and have been seen at sea, 125 miles from the nearest land. In West Africa, ' +
		'these bats are the most-frequently eaten meat by humans.
		Fruit bats can live in colonies of more than 100,000.
		They are nocturnal (active at night).', 78);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Turkey vultures are scavengers. Though they prefer well-rotted carrion, they prey on mice and other ' +
		'small mammals, grasshoppers, and fish; they may also eat fruit or vegetables such as pumpkins.
		A keen sense of smell differentiates them from other vultures that have to rely primarily on eyesight ' +
		'to spot prey. This adaptation is useful as vultures soar above forests, where the tree canopy conceals carrion.
		Turkey vultures scavenge independently, but when one spirals down toward carrion, others notice and ' +
		'descend to the food as well.
		In flight, they hold their wings at a slightly obtuse angle and soar gracefully on thermals. On land, ' +
		'they shuffle or hop.
		Turkey vultures emit a subdued grunt, and a hiss or snarl, when other vultures compete for a carcass they have claimed.
		Their bare head is an adaptation that minimizes infections. Since they immerse their heads in rotting, ' +
		'bacteria-laden carrion, a feathered head would carry illness-causing bacteria.
		A turkey vulture defecates onto its feet to cool them and kill bacteria.
		In unorganized flocks of hundreds of birds, vultures migrate thousands of miles north each spring from ' +
		'tropical areas, and each fall return south to nesting sites. During migration little or no food is consumed.', 79);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Also known as the cone-head chameleon, this lizard is named for the sharkfin-like casque on its head, ' +
		'which channels dew and condensation into its mouth.
		Veiled chameleons possess a sticky, spring-loaded tongue that can be launched one and a half times ' +
		'their own body length to capture prey.
		They have a broad appetite that includes insects, flowers, leaves and even small birds and mammals.
		These tree-dwelling reptiles are masters of disguise, able to quickly change patterns and colors from ' +
		'black and white to red, green, yellow, orange or blue. They can also laterally compress their bodies ' +
		'to appear thinner and more branch-like.
		In their native Yemen and Saudi Arabia, veiled chameleons inhabit any arboreal habitat, including ' +
		'woodlands, tree-lined roadways and gardens.
		Veiled chameleons are among the most common of the roughly 80 species of chameleons kept as pets. ' +
		'Released or escaped veiled chameleons have established colonies in both Florida and Hawaii. In Hawaii, ' +
		'they are considered invasive.
		Scientists have found evidence that veiled chameleons may communicate by creating vibrations on plants.', 80);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('As the name suggests, Western painted turtles are marked with bright colors of red, yellow and olive on ' +
		'their neck, head, tail, legs and lower shell. Like all turtles, they are ectotherms—their temperature ' +
		'depends on their environment.
		In warmer climates and during spring and summer, Western painted turtles spend the night sleeping on the ' +
		'bottom of the pond, and begin to become active around sunrise. They need to warm up, so they start the ' +
		'day by basking for several hours on logs, rocks or sand bars. As many as 50 of them might bask in the ' +
		'same place at the same time, sometimes with other turtle species.
		In places where the water freezes in winter, Western painted turtles put on extra fat and gradually become ' +
		'less active. Eventually they burrow deep into the mud at the bottom of the pond, where their blood temperature ' +
		'drops to approximately the temperature of the surrounding water. They stay there until spring.', 81);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('The white sturgeon is North America''s largest fish. The largest on record was caught in 1898 and weighed ' +
		'approximately 1,500 lbs.
		Instead of scales, sturgeon skin is covered in bony plates called scutes, which can be very sharp on young sturgeon.
		Like sharks, sturgeon skeletons are made of cartilage instead of bone.
		Using their suction cup-like mouth, sturgeon eat mollusks and small invertebrate when they are young. As adults, ' +
		'they feed predominantly on fish.', 82);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('White-cheeked gibbons are built for life in the trees. They''re 18 to 25 inches tall ' +
		'and weigh 15 to 20 pounds. Their arms and legs are very long, and they have short thumbs and long ' +
		'fingers. Using this combination, they swing hand-over-hand through the forest, covering up to 10 ' +
		'feet per swing.', 83);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('White-faced whistling ducks are named for their high-pitched whistling calls.
		Unlike most waterfowl, white-faced whistling ducks often perch in branches and are known as tree ducks.
		When alarmed, these ducks stand straight and freeze.
		They feed on grass, seeds, and aquatic mollusks.
		Adult white-faced whistling ducks have a black and white head and a reddish chestnut brown breast.
		Breeding begins at the start of the rainy season.
		After breeding, white-faced whistling ducks undergo a flightless molt period that lasts from 18-25 days.', 84);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Wood ducks are one of few waterfowl to commonly perch in trees.
		Wood ducks have strong claws, which allow them to grip branches.
		Wood ducks have bright red eyes and a reddish beak.
		They forage or dabble for food in shallow water – eating seeds, aquatic and terrestrial invertebrates.
		Wood ducks are the only North American duck that regularly produces two broods a year.', 85);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Here in the Pacific Northwest, bald eagles often eat dead and dying fish, especially ' +
		'spawned salmon, which they pick up from stream sides. They also eat carrion and steal prey from ' +
		'other predators, sometimes right out of the air. This regular thievery is one of the reasons ' +
		'Benjamin Franklin spoke against them as our national bird.', 86);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Redheads feed by diving for seeds, plants, aquatic insects and small fish.
		A male redhead''s call resembles a cat''s meow.
		Redheads prefer non-forested prairies with water and dense vegetation for nesting sites.
		Redheads are migratory – it is estimated that 80 percent of redheads spend the winter months in ' +
		'the Laguna Madre of Texas and Mexico.', 87);

INSERT INTO animal.facts (fact, animal_id)
VALUES ('Sea otters spend most of their time near the shore. They eat, rest, groom themselves, and ' +
		'breed in the water. They swim belly-up, moving through the water at 3-5 miles an hour with ' +
		'their webbed hind feet. They use their long, flat tails as rudders.
		A sea otter dives for food, usually in water no deeper than 60 feet, but it can hold its breath ' +
		'for 5 minutes and dive to 300 feet or more if needed. It eats bottom-dwelling sea animals, ' +
		'including sea urchins, abalone, crabs, clams, and squid. Because its metabolism is 2-3 times ' +
		'the rate of other mammals its size, it needs to eat about 25% of its weight every day.', 88);