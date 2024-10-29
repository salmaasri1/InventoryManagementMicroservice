-- H2 2.1.214;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'd11a704e1b1eb206' HASH '23eea91b45ff91c46b555607865e92d0cf4ba954d5d4b357c8727cf5ea87ee20' ADMIN;         
CREATE SEQUENCE "PUBLIC"."LESSON_SEQ" START WITH 1 RESTART WITH 251 INCREMENT BY 50;          
CREATE CACHED TABLE "PUBLIC"."LESSON"(
    "ID" BIGINT NOT NULL,
    "NOTE" BIGINT NOT NULL,
    "TITLE" CHARACTER VARYING(255) NOT NULL
);               
ALTER TABLE "PUBLIC"."LESSON" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("ID");       
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.LESSON;  
INSERT INTO "PUBLIC"."LESSON" VALUES
(1, 0, 'titreTest'),
(2, 5, 'Cours 1'),
(3, 6, 'Cours 2'),
(4, 14, 'Cours 10'),
(152, 0, 'maths');  
CREATE CACHED TABLE "PUBLIC"."PRODUCT"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 46) NOT NULL,
    "NAME" CHARACTER VARYING(255) NOT NULL,
    "QUANTITY" INTEGER NOT NULL,
    "PRICE" DECIMAL(10, 2) NOT NULL,
    "CATEGORY" CHARACTER VARYING(100) NOT NULL
);    
ALTER TABLE "PUBLIC"."PRODUCT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_1" PRIMARY KEY("ID");      
-- 45 +/- SELECT COUNT(*) FROM PUBLIC.PRODUCT;
INSERT INTO "PUBLIC"."PRODUCT" VALUES
(1, 'Laptop Dell XPS 13', 20, 999.99, U&'\00c9lectronique'),
(2, 'Smartphone Samsung Galaxy S21', 50, 799.99, U&'\00c9lectronique'),
(3, 'Casque Audio Bose QC35', 30, 349.99, 'Accessoires'),
(4, 'Imprimante HP LaserJet Pro', 15, 199.99, 'Bureau'),
(5, 'Chaise Ergonomique', 10, 129.99, 'Mobilier'),
(6, U&'Bureau r\00e9glable', 5, 299.99, 'Mobilier'),
(7, 'Montre Apple Series 6', 25, 399.99, U&'\00c9lectronique'),
(8, U&'Cl\00e9 USB 128 Go', 100, 19.99, 'Accessoires'),
(9, U&'Sac \00e0 dos pour ordinateur', 50, 49.99, 'Accessoires'),
(10, 'Livre: Le Grand Gatsby', 40, 15.99, 'Livres'),
(11, 'Cahier de notes A4', 200, 2.49, 'Bureau'),
(12, 'Stylo bille', 500, 0.99, 'Bureau'),
(13, 'Tablette Samsung Galaxy Tab', 30, 499.99, U&'\00c9lectronique'),
(14, U&'\00c9couteurs sans fil Sony WF-1000XM4', 40, 279.99, 'Accessoires'),
(15, 'Ordinateur de bureau HP', 10, 599.99, U&'\00c9lectronique'),
(16, 'Scanner Epson EcoTank', 8, 229.99, 'Bureau'),
(17, 'Haut-parleur Bluetooth JBL', 35, 149.99, 'Accessoires'),
(18, 'Montre Garmin Forerunner', 15, 349.99, U&'\00c9lectronique'),
(19, 'Chauffage d''appoint', 12, 79.99, 'Maison'),
(20, 'Enceinte Sonos One', 20, 199.99, 'Accessoires'),
(21, U&'T\00e9l\00e9copie Brother', 6, 179.99, 'Bureau'),
(22, U&'R\00e8gle \00e9lectronique', 50, 24.99, 'Bureau'),
(23, 'Pantalon de travail', 100, 39.99, U&'V\00eatements'),
(24, U&'Chaussures de s\00e9curit\00e9', 75, 59.99, U&'V\00eatements'),
(25, 'Sacs poubelle 50L', 150, 10.99, 'Maison'),
(26, 'Parfum Homme Dior', 30, 89.99, U&'Beaut\00e9'),
(27, U&'Cr\00e8me hydratante Nivea', 100, 5.99, U&'Beaut\00e9'),
(28, 'Gel douche Dove', 80, 3.49, U&'Beaut\00e9'),
(29, U&'Shampoing L''Or\00e9al', 70, 6.99, U&'Beaut\00e9'),
(30, U&'T\00e9l\00e9vision LG 55 pouces', 25, 699.99, U&'\00c9lectronique'),
(31, 'Cafetiere Nespresso', 40, 199.99, 'Maison'),
(32, 'Mixeur KitchenAid', 20, 149.99, 'Maison'),
(33, 'Grille-pain Philips', 30, 49.99, 'Maison'),
(34, 'Robot multifonction Magimix', 10, 399.99, 'Maison'),
(35, U&'Piano num\00e9rique Yamaha', 5, 599.99, 'Musique'),
(36, 'Guitare acoustique Fender', 10, 299.99, 'Musique'),
(37, U&'Batterie \00e9lectronique Roland', 8, 699.99, 'Musique'),
(38, 'Clavier MIDI Akai', 15, 129.99, 'Musique'),
(39, U&'Perche \00e0 selfie', 100, 19.99, 'Accessoires'),
(40, 'Film photo Canon', 200, 9.99, 'Accessoires'),
(41, 'Sac de couchage', 50, 39.99, 'Sport'),
(42, 'Tente de camping', 15, 149.99, 'Sport'),
(43, U&'V\00e9lo de route', 10, 499.99, 'Sport'),
(44, 'Raquette de tennis Wilson', 30, 89.99, 'Sport'),
(45, U&'\00c9quipement de fitness', 40, 99.99, 'Sport');      
ALTER TABLE "PUBLIC"."LESSON" ADD CONSTRAINT "PUBLIC"."UKQSBWHDGSC1M3DBJ9OIDOOD5W4" UNIQUE("TITLE");          
