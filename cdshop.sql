-- --------------------------------------------------------
-- Host:                         D:\Bruce_workspace\xyNewProject\CDShop\ecommercecd.db
-- Server version:               3.34.0
-- Server OS:                    
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecommercecd
CREATE DATABASE IF NOT EXISTS "ecommercecd";
-- USE "ecommercecd" neither supported nor required;

-- Dumping structure for table ecommercecd.alembic_version
CREATE TABLE IF NOT EXISTS alembic_version (
	version_num VARCHAR(32) NOT NULL, 
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);

-- Dumping data for table ecommercecd.alembic_version: -1 rows
/*!40000 ALTER TABLE "alembic_version" DISABLE KEYS */;
INSERT INTO "alembic_version" ("version_num") VALUES
	('c530ca58676f');
/*!40000 ALTER TABLE "alembic_version" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.customers_business
CREATE TABLE IF NOT EXISTS customers_business (
	id INTEGER NOT NULL, 
	username VARCHAR(100), 
	password VARCHAR(20), 
	email VARCHAR(100), 
	address VARCHAR(100), 
	phoneno VARCHAR(100), 
	category VARCHAR(100), 
	company_income FLOAT, role VARCHAR(20), 
	PRIMARY KEY (id), 
	UNIQUE (email), 
	UNIQUE (username)
);

-- Dumping data for table ecommercecd.customers_business: -1 rows
/*!40000 ALTER TABLE "customers_business" DISABLE KEYS */;
INSERT INTO "customers_business" ("id", "username", "password", "email", "address", "phoneno", "category", "company_income", "role") VALUES
	(1, 'buser1', 'aaaaaa', 'buser1@cd.com', 'business user1 address', '876-654-321', 'retail', 333333333.0, 'buiness'),
	(2, 'buser2', '111111', '111@111.com', 'asdfasdf', '1111111123', 'retail', 2.22222222222222e+19, 'business');
/*!40000 ALTER TABLE "customers_business" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.customers_home
CREATE TABLE IF NOT EXISTS customers_home (
	id INTEGER NOT NULL, 
	username VARCHAR(100), 
	password VARCHAR(20), 
	email VARCHAR(100), 
	address VARCHAR(100), 
	phoneno VARCHAR(100), 
	marriage_status VARCHAR(100), 
	age INTEGER, 
	gender VARCHAR(100), 
	income FLOAT, role VARCHAR(20), 
	PRIMARY KEY (id), 
	UNIQUE (email), 
	UNIQUE (username)
);

-- Dumping data for table ecommercecd.customers_home: -1 rows
/*!40000 ALTER TABLE "customers_home" DISABLE KEYS */;
INSERT INTO "customers_home" ("id", "username", "password", "email", "address", "phoneno", "marriage_status", "age", "gender", "income", "role") VALUES
	(1, 'huser1', 'aaaaaa', 'huser1@cd.com', 'home user1 address', '123-456-789', 'yes', 32, 'male', 3000.0, 'home'),
	(2, 'huser2', '111111', 'aaa@aaa.com', 'asdfasdf', '1111111123', 'yes', 23, 'male', 123123.0, 'home');
/*!40000 ALTER TABLE "customers_home" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.managers
CREATE TABLE IF NOT EXISTS managers (
	id INTEGER NOT NULL, 
	username VARCHAR(100), 
	password VARCHAR(20), 
	email VARCHAR(100), 
	address VARCHAR(100), 
	phoneno VARCHAR(100), 
	role VARCHAR(100), 
	region VARCHAR(100), 
	store VARCHAR(100), 
	PRIMARY KEY (id)
);

-- Dumping data for table ecommercecd.managers: -1 rows
/*!40000 ALTER TABLE "managers" DISABLE KEYS */;
INSERT INTO "managers" ("id", "username", "password", "email", "address", "phoneno", "role", "region", "store") VALUES
	(1, 'admin', '111111', 'admin@cd.com', 'admin address', '1111111', 'manager', 'all', 'all'),
	(2, 'regionuser1', '111111', 'regionuser@cd.com', 'regionuser address', '1111111', 'manager-region', 'all', 'all'),
	(3, 'storeuser', '111111', 'storeuser@cd.com', 'storeuser address', '1111111', 'manager-store', 'all', 'all'),
	(4, 'storeuser2', '111111', 'storeuser@cd.com', 'storeuser address', '1111111', 'manager-store', 'all', 'all'),
	(5, 'storeuser3', '111111', 'storeuser@cd.com', 'storeuser address', '1111111', 'manager-store', 'all', 'all'),
	(6, 'storeuser4', '111111', 'storeuser@cd.com', 'storeuser address', '1111111', 'manager-store', 'all', 'all'),
	(7, 'regionuser2
', '111111', 'regionuser@cd.com', 'regionuser address', '1111111', 'manager-region', 'all', 'all');
/*!40000 ALTER TABLE "managers" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.products
CREATE TABLE IF NOT EXISTS products (
	id INTEGER NOT NULL, 
	album_name VARCHAR(100), 
	artist VARCHAR(100), 
	genre VARCHAR(100), 
	cdformat VARCHAR(20), 
	picture VARCHAR(200), 
	description VARCHAR(1000), 
	region_id INTEGER, 
	store_id INTEGER, 
	price FLOAT, 
	stock INTEGER, 
	PRIMARY KEY (id)
);

-- Dumping data for table ecommercecd.products: -1 rows
/*!40000 ALTER TABLE "products" DISABLE KEYS */;
INSERT INTO "products" ("id", "album_name", "artist", "genre", "cdformat", "picture", "description", "region_id", "store_id", "price", "stock") VALUES
	(1, 'Everything', 'Blankenberge', 'Rock', 'CD', '/static/images/a1697619781_2.jpeg', 'released November 14, 2021', 2, 4, 9.0, 12),
	(2, 'LP', 'JPEGMAFIA', 'Hiphop', 'Digital', '/static/images/a0570552185_16.jpeg', 'My goals are different my body is different my mind is different, where I came from is different. We’re not aiming at the same thing. I am a true outcast and that’s who I want to draw in. if u feel out of place, in every place. Im here for u. because that exactly how i have always felt. i''m just happy i have people to feel that with now. released October 22, 2021', 1, NULL, 10.99, -1),
	(3, 'Sounds Of Tokyo-To Future', '2 Mello', 'Hiphop', 'Digital', '/static/images/a2429332587_10.jpeg', 'Sounds Of Tokyo-To Future is my Jet Set Radio-inspired follow-up to my 2018 release, ''Memories Of Tokyo-To''. I wanted to explore an even wider range of genres and sounds than I did on the first album and claim my own lane of style rather than sticking to what has been done.', 2, 3, 10.99, 4),
	(4, 'Post Wook ', 'Andrew Scott Young/Ryan Jewell/Ryley Walker', 'Alternative', 'CD', '/static/images/a1825374326_10.jpeg', 'the sound a craigslist punisher on long island hears as they exhale their last breath in the house their dad built in 1956. goodbye earth. we are post wook.releases December 3, 2021', 1, 2, 10.04, 19),
	(5, 'Post Wook ', 'Andrew Scott Young/Ryan Jewell/Ryley Walker', 'Alternative', 'Digital', '/static/images/a1825374326_10.jpeg', 'the sound a craigslist punisher on long island hears as they exhale their last breath in the house their dad built in 1956. goodbye earth. we are post wook.releases December 3, 2021', 2, 4, 9.0, 12),
	(6, 'Sounds Of Tokyo-To Future', '2 Mello', 'Hiphop', 'CD', '/static/images/a2429332587_10.jpeg', 'Sounds Of Tokyo-To Future is my Jet Set Radio-inspired follow-up to my 2018 release, ''Memories Of Tokyo-To''. I wanted to explore an even wider range of genres and sounds than I did on the first album and claim my own lane of style rather than sticking to what has been done.', 1, NULL, 14.0, -3),
	(7, '2X1=4', 'F.S. Blumm & Nils Frahm', 'Alternative', 'Digital', '/static/images/a2412841178_2.jpeg', 'F.S.Blumm and Nils Frahm return with their fourth collaborative album: ‘2X1=4’ finds the duo unexpectedly exploring a dub-influenced universe, though in truth it’s one already familiar to both. ', 2, 3, 10.54, 8),
	(8, 'IMPOSSIBLE WEIGHT', 'Deep Sea Diver', 'Rock', 'Vinyl', '/static/images/a0382954675_10.jpeg', 'New color alert! Impossible Weight on limited edition Seafoam Green translucent vinyl. Comes in a high quality gatefold packaging with a heavyweight inner sleeve that includes album lyrics.', 1, 2, 21.25, 9),
	(9, 'IMPOSSIBLE WEIGHT', 'Deep Sea Diver', 'Rock', 'CD', '/static/images/a0382954675_10.jpeg', 'released October 16, 2020', 2, 4, 10.2, 4),
	(10, 'IMPOSSIBLE WEIGHT', 'Deep Sea Diver', 'Rock', 'Digital', '/static/images/a0382954675_10.jpeg', 'released October 16, 2020', 1, NULL, 9.0, 22),
	(11, 'Shelflife 7', 'Calibre', 'Electronic', 'Digital', '/static/images/a1537766164_2.jpeg', 'The 7th instalment of the Shelflife album series brings together thirteen 170bpm Calibre productions from circa 2001 to 2020.', 2, 3, 12.25, 12),
	(12, 'Shelflife 7', 'Calibre', 'Electronic', 'Vinyl', '/static/images/a1537766164_2.jpeg', 'The 7th instalment of the Shelflife album series brings together thirteen 170bpm Calibre productions from circa 2001 to 2020.', 1, 2, 54.42, 3),
	(13, 'Shelflife 7', 'Calibre', 'Electronic', 'CD', '/static/images/a1537766164_2.jpeg', 'The 7th instalment of the Shelflife album series brings together thirteen 170bpm Calibre productions from circa 2001 to 2020.', 2, 4, 13.59, 8),
	(14, 'Mercurial World', 'Magdalena Bay', 'Pop', 'Digital', '/static/images/a0154029397_16.jpeg', 'released October 8, 2021', 1, NULL, 5.99, 10),
	(15, 'Mercurial World', 'Magdalena Bay', 'Pop', 'Vinyl', '/static/images/a0154029397_16.jpeg', 'released October 8, 2021', 2, 3, 24.0, 4),
	(16, 'Mercurial World1111', 'Magdalena Bay1111', 'Pop', 'CD', NULL, 'released October 8, 2021', 1, 2, 12.0, 23),
	(17, 'Dragon New Warm Mountain I Believe In You', 'Big Thief', 'Alternative', 'Digital', '/static/images/a0882840373_10.jpeg', 'Dragon New Warm Mountain I Believe in You is a sprawling double-LP exploring the deepest elements and possibilities of Big Thief. To truly dig into all that the music of Adrianne Lenker, Max Oleartchik, Buck Meek, and James Krivchenia desired in 2020, the band decided to write and record a rambling account of growth as individuals, musicians, and chosen family over 4 distinct recording sessions. ', 2, 4, 9.99, 12),
	(18, 'Dragon New Warm Mountain I Believe In You', 'Big Thief', 'Alternative', 'Vinyl', '/static/images/a0882840373_10.jpeg', 'Dragon New Warm Mountain I Believe in You is a sprawling double-LP exploring the deepest elements and possibilities of Big Thief. To truly dig into all that the music of Adrianne Lenker, Max Oleartchik, Buck Meek, and James Krivchenia desired in 2020, the band decided to write and record a rambling account of growth as individuals, musicians, and chosen family over 4 distinct recording sessions. ', 1, NULL, 24.74, 3),
	(19, 'Dragon New Warm Mountain I Believe In You', 'Big Thief', 'Alternative', 'CD', '/static/images/a0882840373_10.jpeg', 'Dragon New Warm Mountain I Believe in You is a sprawling double-LP exploring the deepest elements and possibilities of Big Thief. To truly dig into all that the music of Adrianne Lenker, Max Oleartchik, Buck Meek, and James Krivchenia desired in 2020, the band decided to write and record a rambling account of growth as individuals, musicians, and chosen family over 4 distinct recording sessions. ', 2, 3, 11.99, 8),
	(20, 'Things Take Time, Take Time', 'courtney barnett', 'Alternative', 'Digital', '/static/images/a4251643785_2.jpeg', 'Things Take Time, Take Time” is an assured leap forward for Barnett; a breakthrough really. This is Barnett at her most relaxed, creative and joyful. An exquisite look at the intimate, private world created by Barnett and drummer/producer Stella Mozgawa (Warpaint, Cate le Bon, Kurt Vile). It’s consequently her most beautiful and intimate record to date.', 1, 2, 9.99, 10),
	(21, 'Things Take Time, Take Time', 'courtney barnett', 'Alternative', 'Vinyl', '/static/images/a4251643785_2.jpeg', 'Things Take Time, Take Time” is an assured leap forward for Barnett; a breakthrough really. This is Barnett at her most relaxed, creative and joyful. An exquisite look at the intimate, private world created by Barnett and drummer/producer Stella Mozgawa (Warpaint, Cate le Bon, Kurt Vile). It’s consequently her most beautiful and intimate record to date.', 2, 4, 24.99, 4),
	(22, 'Things Take Time, Take Time', 'courtney barnett', 'Alternative', 'CD', '/static/images/a4251643785_2.jpeg', 'Things Take Time, Take Time” is an assured leap forward for Barnett; a breakthrough really. This is Barnett at her most relaxed, creative and joyful. An exquisite look at the intimate, private world created by Barnett and drummer/producer Stella Mozgawa (Warpaint, Cate le Bon, Kurt Vile). It’s consequently her most beautiful and intimate record to date.', 1, NULL, 13.99, 23),
	(23, 'Spring Island', 'Delta Sleep', 'Rock', 'Digital', '/static/images/a2845223099_2.jpeg', 'Written during the great summer of 2020 between Brighton, Oxford and the rolling hills of Devon/Dorset ''Spring Island'' is the third full length album to be released by Delta Sleep. It will also be the first record they self release on their own label ''Sofa Boy Records''released November 12, 2021', 2, 3, 9.53, 12),
	(24, 'Spring Island', 'Delta Sleep', 'Rock', 'Vinyl', '/static/images/a2845223099_2.jpeg', 'Written during the great summer of 2020 between Brighton, Oxford and the rolling hills of Devon/Dorset ''Spring Island'' is the third full length album to be released by Delta Sleep. It will also be the first record they self release on their own label ''Sofa Boy Records''released November 12, 2021', 1, 2, 27.21, 3),
	(25, 'Spring Island', 'Delta Sleep', 'Rock', 'CD', '/static/images/a2845223099_2.jpeg', 'Written during the great summer of 2020 between Brighton, Oxford and the rolling hills of Devon/Dorset ''Spring Island'' is the third full length album to be released by Delta Sleep. It will also be the first record they self release on their own label ''Sofa Boy Records''released November 12, 2021', 2, 4, 13.6, 8),
	(26, 'Slightly Salted', 'Inkipak', 'Electronic', 'Digital', '/static/images/a2010088528_2.jpeg', 'A year on from Inkipak''s sensational debut album Anomaly on Pingdiscs the same label is proud to bring you the sequel, and this one is another majestic creation! Following Inkipak''s recent successes on Mighty Force, Glawiio with Myoptik, as well as opening the superb Sinclair compilation, now he returns to Pingdiscs with an album of the calibre we have all come to expect from this masterful producer. credits releases December 1, 2021', 1, NULL, 13.6, 10),
	(27, 'Slightly Salted', 'Inkipak', 'Electronic', 'CD', '/static/images/a2010088528_2.jpeg', 'A year on from Inkipak''s sensational debut album Anomaly on Pingdiscs the same label is proud to bring you the sequel, and this one is another majestic creation! Following Inkipak''s recent successes on Mighty Force, Glawiio with Myoptik, as well as opening the superb Sinclair compilation, now he returns to Pingdiscs with an album of the calibre we have all come to expect from this masterful producer.releases December 1, 2021', 2, 3, 16.33, 4),
	(28, 'Diamond Cut / Bby', 'Overmono', 'Electronic', 'Digital', '/static/images/a3948554062_2.jpeg', 'released November 19, 2021', 1, 2, 1.99, 23),
	(29, 'Squaring The Circle', 'Sneaker Pimps', 'Pop', 'Digital', '/static/images/a3619852482_2.jpeg', 'Squaring The Circle'' is the long awaited fourth full length studio album from Sneaker Pimps. Written performed and produced by founding members Chris Corner and Liam Howe, ''Squaring The Circle'' was recorded at Sawtooth Studios in Pioneertown, USA and The Tower in London, UK. The album features vocal performances from both Chris Corner and featured artist Simonne Jones released September 10, 2021', 2, 4, 16.0, 12),
	(30, 'Squaring The Circle', 'Sneaker Pimps', 'Pop', 'Digital', '/static/images/a3619852482_2.jpeg', 'Squaring The Circle'' is the long awaited fourth full length studio album from Sneaker Pimps. Written performed and produced by founding members Chris Corner and Liam Howe, ''Squaring The Circle'' was recorded at Sawtooth Studios in Pioneertown, USA and The Tower in London, UK. The album features vocal performances from both Chris Corner and featured artist Simonne Jones released September 10, 2021', 1, NULL, 24.0, 3),
	(31, 'Squaring The Circle', 'Sneaker Pimps', 'Pop', 'Digital', '/static/images/a3619852482_2.jpeg', 'Squaring The Circle'' is the long awaited fourth full length studio album from Sneaker Pimps. Written performed and produced by founding members Chris Corner and Liam Howe, ''Squaring The Circle'' was recorded at Sawtooth Studios in Pioneertown, USA and The Tower in London, UK. The album features vocal performances from both Chris Corner and featured artist Simonne Jones released September 10, 2021', 2, 3, 33.0, 8),
	(32, 'Trapdoor', 'Defcee & Messiah', 'Hiphop', 'Digital', '/static/images/a1076942064_2.jpeg', 'Defcee has been rapping for fifteen years, but Trapdoor really does feel like his debut album in a way. The writing is sharper, the flows are tighter and it’s all a perfect marriage for Messiah’s signature sound.released November 23, 2021', 1, 2, 15.0, 10),
	(33, 'Blacklight', 'Apollo Brown & Stalley', 'Hiphop', 'Digital', '/static/images/a1322611047_2.jpeg', 'released November 19, 2021', 2, 4, 4.99, 4),
	(34, 'Everything', 'Blankenberge', 'Rock', 'Digital', '/static/images/a1697619781_2.jpeg', 'released November 14, 2021', 1, 2, 7.0, 10),
	(35, 'aaaaaaaa', 'aaaaaaa', 'aaaaa', 'CD', '/static/images/a1697619781_2.jpeg', 'bbbbbbbbbbbbbbbbbbbbbbbb', 1, NULL, 123.0, 22);
/*!40000 ALTER TABLE "products" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.regions
CREATE TABLE IF NOT EXISTS regions (
	id INTEGER NOT NULL, 
	name VARCHAR(100), 
	manager_region_id INTEGER, 
	PRIMARY KEY (id), 
	UNIQUE (name)
);

-- Dumping data for table ecommercecd.regions: -1 rows
/*!40000 ALTER TABLE "regions" DISABLE KEYS */;
INSERT INTO "regions" ("id", "name", "manager_region_id") VALUES
	(1, 'America', 2),
	(2, 'Asia', 7);
/*!40000 ALTER TABLE "regions" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.stores
CREATE TABLE IF NOT EXISTS stores (
	id INTEGER NOT NULL, 
	name VARCHAR(100), 
	manager_store_id VARCHAR(100), 
	region_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(region_id) REFERENCES regions (id), 
	UNIQUE (name)
);

-- Dumping data for table ecommercecd.stores: -1 rows
/*!40000 ALTER TABLE "stores" DISABLE KEYS */;
INSERT INTO "stores" ("id", "name", "manager_store_id", "region_id") VALUES
	(2, 'Los Angeles', '3', 1),
	(3, 'Tokyo', '5', 2),
	(4, 'HongKong', '4', 2),
	(5, 'asdf ', '3', 1);
/*!40000 ALTER TABLE "stores" ENABLE KEYS */;

-- Dumping structure for table ecommercecd.transactions
CREATE TABLE IF NOT EXISTS transactions (
	id INTEGER NOT NULL, 
	product_id VARCHAR(100), 
	cdformat VARCHAR(20), 
	customer_id INTEGER, 
	region_id INTEGER, 
	store_id INTEGER, 
	count INTEGER, 
	total_cost FLOAT, 
	trandate VARCHAR(30), 
	PRIMARY KEY (id)
);

-- Dumping data for table ecommercecd.transactions: -1 rows
/*!40000 ALTER TABLE "transactions" DISABLE KEYS */;
INSERT INTO "transactions" ("id", "product_id", "cdformat", "customer_id", "region_id", "store_id", "count", "total_cost", "trandate") VALUES
	(1, '2', 'Digital', 1, 2, 3, 1, 10.99, '2021-11-23'),
	(2, '2', 'Digital', 1, 1, 1, 3, 32.97, '2021-11-26'),
	(3, '4', 'CD', 1, 1, 2, 3, 30.12, '2021-11-24'),
	(4, '6', 'CD', 1, 1, 1, 5, 70.0, '2021-11-26'),
	(5, '8', 'Vinyl', 1, 2, 2, 1, 21.25, '2021-11-23'),
	(6, '10', 'Digital', 1, 1, 1, 1, 9.0, '2021-11-26'),
	(7, '34', 'Digital', 1, 1, 2, 4, 28.0, '2021-11-26'),
	(8, '34', 'Digital', 1, 1, 2, 9, 63.0, '2021-11-26'),
	(9, '2', 'Digital', 1, 1, 1, 3, 32.97, '2021-11-27');
/*!40000 ALTER TABLE "transactions" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
