-- Create STORAGE
CREATE TABLESPACE AssignmentV4
    DATAFILE 'AssignmentV4.dat' SIZE 40M 
    ONLINE; 


CREATE USER AssignmentV4User IDENTIFIED BY AssignmentV4User ACCOUNT UNLOCK
	DEFAULT TABLESPACE AssignmentV4
	QUOTA 20M ON AssignmentV4;

CREATE ROLE applicationAdminV4;

GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE TRIGGER, CREATE PROCEDURE TO applicationAdminV4;

GRANT applicationAdminV4 TO AssignmentV4User;

CONNECT AssignmentV4User / AssignmentV4User;



DROP TABLE DollCategory;
DROP TABLE Manufacturer;
DROP TABLE Doll;
DROP TABLE Accessories;
DROP TABLE MaterialQuality;



-- Create the DollCategory table
CREATE TABLE DollCategory (
    DollCategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
);

INSERT INTO DollCategory VALUES (1, 'Vintage Dolls');
INSERT INTO DollCategory VALUES (2, 'Modern Dolls');
INSERT INTO DollCategory VALUES (3, 'Character Dolls');
INSERT INTO DollCategory VALUES (4, 'Fashion Dolls');
INSERT INTO DollCategory VALUES (5, 'Porcelain Dolls');
INSERT INTO DollCategory VALUES (6, 'Action Figures');
INSERT INTO DollCategory VALUES (7, 'Baby Dolls');
INSERT INTO DollCategory VALUES (8, 'Barbie Dolls');
INSERT INTO DollCategory VALUES (9, 'Collectible Dolls');
INSERT INTO DollCategory VALUES (10, 'Fantasy Dolls');
INSERT INTO DollCategory VALUES (11, 'Princess Dolls');
INSERT INTO DollCategory VALUES (12, 'Sports Dolls');
INSERT INTO DollCategory VALUES (13, 'Animal Dolls');
INSERT INTO DollCategory VALUES (14, 'Historical Dolls');
INSERT INTO DollCategory VALUES (15, 'Science Fiction Dolls');
INSERT INTO DollCategory VALUES (16, 'Superhero Dolls');
INSERT INTO DollCategory VALUES (17, 'Mermaid Dolls');
INSERT INTO DollCategory VALUES (18, 'Ethnic Dolls');
INSERT INTO DollCategory VALUES (19, 'Rag Dolls');
INSERT INTO DollCategory VALUES (20, 'Dollhouse Dolls');
INSERT INTO DollCategory VALUES (21, 'Gothic Dolls');
INSERT INTO DollCategory VALUES (22, 'Musical Dolls');
INSERT INTO DollCategory VALUES (23, 'Fairy Dolls');
INSERT INTO DollCategory VALUES (24, 'Celebrity Dolls');
INSERT INTO DollCategory VALUES (25, 'Art Dolls');
INSERT INTO DollCategory VALUES (26, 'Movie Character Dolls');
INSERT INTO DollCategory VALUES (27, 'Holiday Dolls');
INSERT INTO DollCategory VALUES (28, 'Prize-Winning Dolls');
INSERT INTO DollCategory VALUES (29, 'Ballerina Dolls');
INSERT INTO DollCategory VALUES (30, 'Troll Dolls');
INSERT INTO DollCategory VALUES (31, 'Wooden Dolls');
INSERT INTO DollCategory VALUES (32, 'Mechanical Dolls');
INSERT INTO DollCategory VALUES (33, 'Miniature Dolls');
INSERT INTO DollCategory VALUES (34, 'Dress-Up Dolls');
INSERT INTO DollCategory VALUES (35, 'Educational Dolls');
INSERT INTO DollCategory VALUES (36, 'Magic Dolls');
INSERT INTO DollCategory VALUES (37, 'Outdoor Dolls');
INSERT INTO DollCategory VALUES (38, 'Soft-bodied Dolls');
INSERT INTO DollCategory VALUES (39, 'Robot Dolls');
INSERT INTO DollCategory VALUES (40, 'Ghost Dolls');
INSERT INTO DollCategory VALUES (41, 'Alien Dolls');
INSERT INTO DollCategory VALUES (42, 'Fairytale Dolls');
INSERT INTO DollCategory VALUES (43, 'Practical Joke Dolls');
INSERT INTO DollCategory VALUES (44, 'Police Dolls');
INSERT INTO DollCategory VALUES (45, 'Firefighter Dolls');
INSERT INTO DollCategory VALUES (46, 'Doctor Dolls');
INSERT INTO DollCategory VALUES (47, 'Chef Dolls');
INSERT INTO DollCategory VALUES (48, 'Bride Dolls');
INSERT INTO DollCategory VALUES (49, 'Groom Dolls');
INSERT INTO DollCategory VALUES (50, 'Mechanic Dolls');


-- Create the Manufacturer table
CREATE TABLE Manufacturer (
    ManufacturerID INT PRIMARY KEY,
    ManufacturerName VARCHAR(255),
    Country VARCHAR(100),
    YearEstablished INT
);

INSERT INTO Manufacturer VALUES (1, 'ABC Toys', 'USA', 1980);
INSERT INTO Manufacturer VALUES (2, 'XYZ Dolls', 'UK', 1995);
INSERT INTO Manufacturer VALUES (3, 'Dream Dolls', 'Germany', 1975);
INSERT INTO Manufacturer VALUES (4, 'Toy World', 'Japan', 2000);
INSERT INTO Manufacturer VALUES (5, 'Creative Toys', 'Canada', 1988);
INSERT INTO Manufacturer VALUES (6, 'Magical Dolls', 'France', 1990);
INSERT INTO Manufacturer VALUES (7, 'Sparkle Creations', 'Australia', 2005);
INSERT INTO Manufacturer VALUES (8, 'Happy Toys', 'Brazil', 1983);
INSERT INTO Manufacturer VALUES (9, 'Royal Doll Makers', 'India', 1965);
INSERT INTO Manufacturer VALUES (10, 'Fantasy Crafts', 'Spain', 1998);
INSERT INTO Manufacturer VALUES (11, 'Playful Designs', 'Sweden', 2002);
INSERT INTO Manufacturer VALUES (12, 'Miniature Wonders', 'Italy', 1972);
INSERT INTO Manufacturer VALUES (13, 'Enchanted Dolls', 'Norway', 1993);
INSERT INTO Manufacturer VALUES (14, 'Magic Dollhouse', 'Denmark', 1989);
INSERT INTO Manufacturer VALUES (15, 'Fairytale Dreams', 'Switzerland', 1985);
INSERT INTO Manufacturer VALUES (16, 'Wonderland Toys', 'Netherlands', 2001);
INSERT INTO Manufacturer VALUES (17, 'Delightful Dolls', 'Belgium', 1996);
INSERT INTO Manufacturer VALUES (18, 'Imagination Workshop', 'Ireland', 1978);
INSERT INTO Manufacturer VALUES (19, 'Joyful Playthings', 'Austria', 1992);
INSERT INTO Manufacturer VALUES (20, 'Tiny Treasures', 'New Zealand', 1987);
INSERT INTO Manufacturer VALUES (21, 'Imaginary Friends', 'Argentina', 2003);
INSERT INTO Manufacturer VALUES (22, 'Sunny Smiles', 'South Africa', 1999);
INSERT INTO Manufacturer VALUES (23, 'Mystical Toys', 'Finland', 1986);
INSERT INTO Manufacturer VALUES (24, 'Fanciful Dolls', 'Mexico', 1997);
INSERT INTO Manufacturer VALUES (25, 'Whimsical Wonders', 'China', 1984);
INSERT INTO Manufacturer VALUES (26, 'Giggles & Co.', 'Russia', 1991);
INSERT INTO Manufacturer VALUES (27, 'Charming Dolls', 'Greece', 2004);
INSERT INTO Manufacturer VALUES (28, 'Adventure Playtime', 'Turkey', 1979);
INSERT INTO Manufacturer VALUES (29, 'Teddy Bear Toys', 'Poland', 1994);
INSERT INTO Manufacturer VALUES (30, 'Magic Kingdom', 'Czech Republic', 1976);
INSERT INTO Manufacturer VALUES (31, 'Doll Fantasy', 'Hungary', 1999);
INSERT INTO Manufacturer VALUES (32, 'Playful Pals', 'South Korea', 1983);
INSERT INTO Manufacturer VALUES (33, 'Fantastic Toys', 'Thailand', 2002);
INSERT INTO Manufacturer VALUES (34, 'Fairy Tale Dolls', 'Malaysia', 1990);
INSERT INTO Manufacturer VALUES (35, 'Imaginative Play', 'Indonesia', 1974);
INSERT INTO Manufacturer VALUES (36, 'Toyland Adventures', 'Philippines', 1998);
INSERT INTO Manufacturer VALUES (37, 'Dolls Galore', 'Israel', 1982);
INSERT INTO Manufacturer VALUES (38, 'Whimsy World', 'Egypt', 2001);
INSERT INTO Manufacturer VALUES (39, 'Royal Playtime', 'Nigeria', 1989);
INSERT INTO Manufacturer VALUES (40, 'Miniature Magic', 'Saudi Arabia', 1977);
INSERT INTO Manufacturer VALUES (41, 'Storybook Toys', 'United Arab Emirates', 1993);
INSERT INTO Manufacturer VALUES (42, 'Enchanting Dolls', 'Kuwait', 1996);
INSERT INTO Manufacturer VALUES (43, 'Wonderful Wishes', 'Qatar', 1981);
INSERT INTO Manufacturer VALUES (44, 'Imagination Unlimited', 'Singapore', 2000);
INSERT INTO Manufacturer VALUES (45, 'Magical Moments', 'Hong Kong', 1992);
INSERT INTO Manufacturer VALUES (46, 'Dreamland Dolls', 'Taiwan', 1973);
INSERT INTO Manufacturer VALUES (47, 'Fantasy Creations', 'Chile', 1985);
INSERT INTO Manufacturer VALUES (48, 'Adorable Toys', 'Peru', 1995);
INSERT INTO Manufacturer VALUES (49, 'Imaginary Magic', 'Colombia', 1978);
INSERT INTO Manufacturer VALUES (50, 'Whimsical Designs', 'Venezuela', 1987);



-- Create the Doll table
CREATE TABLE Doll (
    DollID INT PRIMARY KEY,
    DollName VARCHAR(255),
    ManufacturerID INT,
    ProductionYear INT,
    DollCategoryID INT,
    FOREIGN KEY (DollCategoryID) REFERENCES DollCategory(DollCategoryID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
);


INSERT INTO Doll VALUES (1, 'Lovely Lisa', 1, 2020, 1);
INSERT INTO Doll VALUES (2, 'Adventurous Andy', 2, 2019, 2);
INSERT INTO Doll VALUES (3, 'Dreamy Daisy', 3, 2021, 3);
INSERT INTO Doll VALUES (4, 'Cuddly Bear', 4, 2018, 4);
INSERT INTO Doll VALUES (5, 'Princess Penelope', 5, 2022, 5);
INSERT INTO Doll VALUES (6, 'Brave Knight', 6, 2017, 6);
INSERT INTO Doll VALUES (7, 'Magic Mary', 7, 2019, 7);
INSERT INTO Doll VALUES (8, 'Explorer Ethan', 8, 2020, 8);
INSERT INTO Doll VALUES (9, 'Fairy Felicity', 9, 2021, 9);
INSERT INTO Doll VALUES (10, 'Dino Dave', 10, 2019, 10);
INSERT INTO Doll VALUES (11, 'Wandering Wendy', 11, 2022, 11);
INSERT INTO Doll VALUES (12, 'Robot Rob', 12, 2018, 12);
INSERT INTO Doll VALUES (13, 'Mermaid Marina', 13, 2020, 13);
INSERT INTO Doll VALUES (14, 'Space Steve', 14, 2017, 14);
INSERT INTO Doll VALUES (15, 'Cinderella', 15, 2019, 15);
INSERT INTO Doll VALUES (16, 'Superhero Sam', 16, 2021, 16);
INSERT INTO Doll VALUES (17, 'Pixie Poppy', 17, 2018, 17);
INSERT INTO Doll VALUES (18, 'Ninja Nate', 18, 2022, 18);
INSERT INTO Doll VALUES (19, 'Unicorn Ulla', 19, 2019, 19);
INSERT INTO Doll VALUES (20, 'Pirate Pete', 20, 2021, 20);
INSERT INTO Doll VALUES (21, 'Garden Grace', 21, 2020, 21);
INSERT INTO Doll VALUES (22, 'Time Traveler', 22, 2019, 22);
INSERT INTO Doll VALUES (23, 'Enchanted Elf', 23, 2021, 23);
INSERT INTO Doll VALUES (24, 'Galactic Explorer', 24, 2018, 24);
INSERT INTO Doll VALUES (25, 'Snow White', 25, 2022, 25);
INSERT INTO Doll VALUES (26, 'Astronaut Alex', 26, 2017, 26);
INSERT INTO Doll VALUES (27, 'Enchanting Emma', 27, 2019, 27);
INSERT INTO Doll VALUES (28, 'Viking Victor', 28, 2020, 28);
INSERT INTO Doll VALUES (29, 'Forest Fairy', 29, 2021, 29);
INSERT INTO Doll VALUES (30, 'Space Explorer', 30, 2019, 30);
INSERT INTO Doll VALUES (31, 'Mermaid Melody', 31, 2018, 31);
INSERT INTO Doll VALUES (32, 'Robo Ranger', 32, 2022, 32);
INSERT INTO Doll VALUES (33, 'Angelina the Angel', 33, 2019, 33);
INSERT INTO Doll VALUES (34, 'Detective Daniel', 34, 2020, 34);
INSERT INTO Doll VALUES (35, 'Rainbow Ruby', 35, 2021, 35);
INSERT INTO Doll VALUES (36, 'Firefighter Fred', 36, 2017, 36);
INSERT INTO Doll VALUES (37, 'Singing Sophie', 37, 2019, 37);
INSERT INTO Doll VALUES (38, 'Knightly Kevin', 38, 2020, 38);
INSERT INTO Doll VALUES (39, 'Glamorous Grace', 39, 2021, 39);
INSERT INTO Doll VALUES (40, 'Explorer Ellie', 40, 2019, 40);
INSERT INTO Doll VALUES (41, 'Witchy Willow', 41, 2018, 41);
INSERT INTO Doll VALUES (42, 'Robo Ron', 42, 2022, 42);
INSERT INTO Doll VALUES (43, 'Fairy Fiona', 43, 2019, 43);
INSERT INTO Doll VALUES (44, 'Time Traveler Tom', 44, 2020, 44);
INSERT INTO Doll VALUES (45, 'Mermaid Mia', 45, 2021, 45);
INSERT INTO Doll VALUES (46, 'Space Scott', 46, 2017, 46);
INSERT INTO Doll VALUES (47, 'Angelica the Angel', 47, 2019, 47);
INSERT INTO Doll VALUES (48, 'Detective Diana', 48, 2020, 48);
INSERT INTO Doll VALUES (49, 'Rainbow Ryan', 49, 2021, 49);
INSERT INTO Doll VALUES (50, 'Firefighter Felicia', 50, 2019, 50);

-- Create the Accessories table
CREATE TABLE Accessories (
    DollAccessoryID INT PRIMARY KEY,
    DollID INT,
    AccessoryName VARCHAR(255),
    FOREIGN KEY (DollID) REFERENCES Doll(DollID)
);

INSERT INTO Accessories VALUES (1, 1, 'Clothing Set 1');
INSERT INTO Accessories VALUES (2, 1, 'Shoes 1');
INSERT INTO Accessories VALUES (3, 2, 'Props 1');
INSERT INTO Accessories VALUES (4, 2, 'Hat 1');
INSERT INTO Accessories VALUES (5, 3, 'Jewelry Set 1');
INSERT INTO Accessories VALUES (6, 3, 'Handbag 1');
INSERT INTO Accessories VALUES (7, 4, 'Sword 1');
INSERT INTO Accessories VALUES (8, 4, 'Shield 1');
INSERT INTO Accessories VALUES (9, 5, 'Dresses Set 1');
INSERT INTO Accessories VALUES (10, 5, 'Hats Set 1');
INSERT INTO Accessories VALUES (11, 6, 'Weapons Set 1');
INSERT INTO Accessories VALUES (12, 6, 'Armor Set 1');
INSERT INTO Accessories VALUES (13, 7, 'Baby Bottle 1');
INSERT INTO Accessories VALUES (14, 7, 'Rattle 1');
INSERT INTO Accessories VALUES (15, 8, 'Brush 1');
INSERT INTO Accessories VALUES (16, 8, 'Mirror 1');
INSERT INTO Accessories VALUES (17, 9, 'Handbags Set 1');
INSERT INTO Accessories VALUES (18, 9, 'Jewelry Set 2');
INSERT INTO Accessories VALUES (19, 10, 'Crown 1');
INSERT INTO Accessories VALUES (20, 10, 'Magic Wand 1');
INSERT INTO Accessories VALUES (21, 11, 'Sports Equipment Set 1');
INSERT INTO Accessories VALUES (22, 11, 'Uniform Set 1');
INSERT INTO Accessories VALUES (23, 12, 'Animal Toys Set 1');
INSERT INTO Accessories VALUES (24, 12, 'Props 2');
INSERT INTO Accessories VALUES (25, 13, 'Historical Clothing Set 1');
INSERT INTO Accessories VALUES (26, 13, 'Accessories Set 1');
INSERT INTO Accessories VALUES (27, 14, 'Spaceship 1');
INSERT INTO Accessories VALUES (28, 14, 'Laser Gun 1');
INSERT INTO Accessories VALUES (29, 15, 'Superhero Costume 1');
INSERT INTO Accessories VALUES (30, 15, 'Cape 1');
INSERT INTO Accessories VALUES (31, 16, 'Mermaid Tail 1');
INSERT INTO Accessories VALUES (32, 16, 'Trident 1');
INSERT INTO Accessories VALUES (33, 17, 'Traditional Clothing Set 1');
INSERT INTO Accessories VALUES (34, 17, 'Accessories Set 1');
INSERT INTO Accessories VALUES (35, 18, 'Fabric Set 1');
INSERT INTO Accessories VALUES (36, 18, 'Embroidery Set 1');
INSERT INTO Accessories VALUES (37, 19, 'Rags Set 1');
INSERT INTO Accessories VALUES (38, 19, 'Patchwork Set 1');
INSERT INTO Accessories VALUES (39, 20, 'Furniture Set 1');
INSERT INTO Accessories VALUES (40, 20, 'Miniature Items Set 1');
INSERT INTO Accessories VALUES (41, 21, 'Gothic Clothing Set 1');
INSERT INTO Accessories VALUES (42, 21, 'Accessories Set 1');
INSERT INTO Accessories VALUES (43, 22, 'Musical Instruments Set 1');
INSERT INTO Accessories VALUES (44, 22, 'Sheet Music Set 1');
INSERT INTO Accessories VALUES (45, 23, 'Wings Set 1');
INSERT INTO Accessories VALUES (46, 23, 'Flower Crown 1');
INSERT INTO Accessories VALUES (47, 24, 'Celebrity Outfits Set 1');
INSERT INTO Accessories VALUES (48, 24, 'Accessories Set 1');
INSERT INTO Accessories VALUES (49, 25, 'Art Supplies Set 1');
INSERT INTO Accessories VALUES (50, 25, 'Easel Set 1');


-- Create the MaterialQuality table
CREATE TABLE MaterialQuality (
    MaterialQualityID INT PRIMARY KEY,
    QualityLevel INT,
    DollID INT,
    MaterialUsed VARCHAR(255),
    FOREIGN KEY (DollID) REFERENCES Doll(DollID)
);

INSERT INTO MaterialQuality VALUES (1, 1, 1, 'Cotton');
INSERT INTO MaterialQuality VALUES (2, 2, 2, 'Polyester');
INSERT INTO MaterialQuality VALUES (3, 3, 3, 'Plastic');
INSERT INTO MaterialQuality VALUES (4, 2, 4, 'Vinyl');
INSERT INTO MaterialQuality VALUES (5, 1, 5, 'Silk');
INSERT INTO MaterialQuality VALUES (6, 2, 6, 'Wood');
INSERT INTO MaterialQuality VALUES (7, 3, 7, 'Metal');
INSERT INTO MaterialQuality VALUES (8, 1, 8, 'Rubber');
INSERT INTO MaterialQuality VALUES (9, 2, 9, 'Porcelain');
INSERT INTO MaterialQuality VALUES (10, 1, 10, 'Resin');
INSERT INTO MaterialQuality VALUES (11, 3, 11, 'Cloth');
INSERT INTO MaterialQuality VALUES (12, 1, 12, 'Leather');
INSERT INTO MaterialQuality VALUES (13, 2, 13, 'Plastic');
INSERT INTO MaterialQuality VALUES (14, 1, 14, 'Vinyl');
INSERT INTO MaterialQuality VALUES (15, 2, 15, 'Cotton');
INSERT INTO MaterialQuality VALUES (16, 1, 16, 'Plastic');
INSERT INTO MaterialQuality VALUES (17, 2, 17, 'Metal');
INSERT INTO MaterialQuality VALUES (18, 3, 18, 'Polyester');
INSERT INTO MaterialQuality VALUES (19, 1, 19, 'Porcelain');
INSERT INTO MaterialQuality VALUES (20, 2, 20, 'Resin');
INSERT INTO MaterialQuality VALUES (21, 1, 21, 'Wood');
INSERT INTO MaterialQuality VALUES (22, 2, 22, 'Metal');
INSERT INTO MaterialQuality VALUES (23, 3, 23, 'Plastic');
INSERT INTO MaterialQuality VALUES (24, 1, 24, 'Vinyl');
INSERT INTO MaterialQuality VALUES (25, 2, 25, 'Cotton');
INSERT INTO MaterialQuality VALUES (26, 1, 26, 'Plastic');
INSERT INTO MaterialQuality VALUES (27, 2, 27, 'Metal');
INSERT INTO MaterialQuality VALUES (28, 3, 28, 'Polyester');
INSERT INTO MaterialQuality VALUES (29, 1, 29, 'Porcelain');
INSERT INTO MaterialQuality VALUES (30, 2, 30, 'Resin');
INSERT INTO MaterialQuality VALUES (31, 1, 31, 'Cloth');
INSERT INTO MaterialQuality VALUES (32, 2, 32, 'Leather');
INSERT INTO MaterialQuality VALUES (33, 3, 33, 'Plastic');
INSERT INTO MaterialQuality VALUES (34, 1, 34, 'Vinyl');
INSERT INTO MaterialQuality VALUES (35, 2, 35, 'Cotton');
INSERT INTO MaterialQuality VALUES (36, 1, 36, 'Plastic');
INSERT INTO MaterialQuality VALUES (37, 2, 37, 'Metal');
INSERT INTO MaterialQuality VALUES (38, 3, 38, 'Polyester');
INSERT INTO MaterialQuality VALUES (39, 1, 39, 'Porcelain');
INSERT INTO MaterialQuality VALUES (40, 2, 40, 'Resin');
INSERT INTO MaterialQuality VALUES (41, 1, 41, 'Wood');
INSERT INTO MaterialQuality VALUES (42, 2, 42, 'Metal');
INSERT INTO MaterialQuality VALUES (43, 3, 43, 'Plastic');
INSERT INTO MaterialQuality VALUES (44, 1, 44, 'Vinyl');
INSERT INTO MaterialQuality VALUES (45, 2, 45, 'Cotton');
INSERT INTO MaterialQuality VALUES (46, 1, 46, 'Plastic');
INSERT INTO MaterialQuality VALUES (47, 2, 47, 'Metal');
INSERT INTO MaterialQuality VALUES (48, 3, 48, 'Polyester');
INSERT INTO MaterialQuality VALUES (49, 1, 49, 'Porcelain');
INSERT INTO MaterialQuality VALUES (50, 2, 50, 'Resin');



CREATE VIEW DOLL_VIEW AS 
SELECT 
    Doll.DollID,
    Doll.DollName,
    Manufacturer.ManufacturerName,
    Manufacturer.Country,
    Manufacturer.YearEstablished,
    DollCategory.CategoryName
FROM 
    Doll
LEFT JOIN 
    Manufacturer ON Doll.ManufacturerID = Manufacturer.ManufacturerID
LEFT JOIN 
    DollCategory ON Doll.DollCategoryID = DollCategory.DollCategoryID;



CREATE VIEW ACCESSORIES_VIEW AS 
SELECT 
    Accessories.DollAccessoryID,
    Doll.DollID,
    Doll.DollName,
    Accessories.AccessoryName
FROM 
    Accessories
LEFT JOIN 
    Doll ON Accessories.DollID = Doll.DollID;



CREATE VIEW MATERIAL_QUALITY_VIEW AS 
SELECT 
    MaterialQuality.MaterialQualityID,
    Doll.DollID,
    Doll.DollName,
    MaterialQuality.QualityLevel,
    MaterialQuality.MaterialUsed
FROM 
    MaterialQuality
LEFT JOIN 
    Doll ON MaterialQuality.DollID = Doll.DollID;


CREATE OR REPLACE TRIGGER check_doll_name_format
BEFORE INSERT OR UPDATE 
ON Doll
FOR EACH ROW
DECLARE
    doll_name_pattern VARCHAR(100) := '^[A-Za-z0-9 ]+$'; -- Only letters, numbers, and spaces allowed
BEGIN
    IF REGEXP_LIKE(:NEW.DollName, doll_name_pattern) = FALSE THEN
        RAISE_APPLICATION_ERROR(-20001, 'Invalid doll name format. Only letters, numbers, and spaces are allowed.');
    END IF;
END;
/



