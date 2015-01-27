-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: circulation_local
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `object` int(10) unsigned DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'jpg',
  `caption` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'2015-01-26 00:46:59','2015-01-26 00:47:06',5,NULL,1,'jpg','The Information'),(2,1,'2015-01-26 01:01:34','2015-01-26 01:01:41',6,NULL,1,'jpg','C-i-r-c-u-l-a-t-i-o-n'),(3,1,'2015-01-26 01:05:44','2015-01-26 01:06:52',7,NULL,2,'gif','A Mathematical Theory of Communication'),(4,0,'2015-01-26 01:06:44','2015-01-26 01:08:03',7,NULL,1,'gif','A Mathematical Theory of Communication'),(5,0,'2015-01-26 01:07:26','2015-01-26 01:08:03',7,NULL,1,'gif','A Mathematical Theory of Communication'),(6,0,'2015-01-26 19:53:53','2015-01-26 20:45:35',8,NULL,1,'gif',''),(7,1,'2015-01-26 20:03:30','2015-01-26 20:04:01',9,NULL,1,'gif','A Design Miscellany'),(8,0,'2015-01-26 20:06:59','2015-01-26 20:47:51',10,NULL,1,'gif','The Cobweb'),(9,1,'2015-01-26 20:09:58','2015-01-26 20:10:12',11,NULL,1,'gif','A World in Three Aisles'),(10,1,'2015-01-26 20:12:56','2015-01-26 20:13:08',12,NULL,1,'gif','Pure Data'),(11,1,'2015-01-26 20:14:51','2015-01-26 20:15:02',13,NULL,1,'gif','The Life and Death of Media'),(12,1,'2015-01-26 20:16:14','2015-01-26 20:16:28',14,NULL,1,'jpg','Massaging the Message'),(13,1,'2015-01-26 20:18:29','2015-01-26 20:18:39',15,NULL,1,'gif','The Ecstasy of Influence'),(14,1,'2015-01-26 20:28:10','2015-01-26 20:28:44',17,NULL,1,'jpg','Spatial Data Management'),(15,1,'2015-01-26 20:34:51','2015-01-26 20:34:57',16,NULL,1,'jpg','Computers and Design'),(16,0,'2015-01-26 20:45:35','2015-01-26 20:46:26',8,NULL,1,'jpg',''),(17,1,'2015-01-26 20:46:26','2015-01-26 20:46:31',8,NULL,1,'jpg','Ada, Countess of Lovelace'),(18,1,'2015-01-26 20:47:51','2015-01-26 20:47:57',10,NULL,1,'jpg','The Cobweb');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `name1` tinytext,
  `name2` tinytext,
  `address1` text,
  `address2` text,
  `city` tinytext,
  `state` tinytext,
  `zip` tinytext,
  `country` tinytext,
  `phone` tinytext,
  `fax` tinytext,
  `url` tinytext,
  `email` tinytext,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `head` tinytext,
  `deck` blob,
  `body` blob,
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,1,'2014-12-08 00:33:17','2014-12-08 00:33:17',10,'Class',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(2,1,'2014-12-08 00:33:25','2014-12-08 00:34:32',100,'Library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(3,1,'2014-12-08 00:33:54','2015-01-27 20:54:47',10,'Introduction',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','Popular science writer James Gleick recently published a book titled simply, <i>The Information</i>. Perhaps you’ve seen it? Maybe even read it, all 526 pages worth? I haven’t. But, I *was* instantly aware of it when it was published in March 2011 through book reviews like this one by Geoffrey Nunberg in The New York Times: <a href=\"http://www.nytimes.com/2011/03/20/books/review/book-review-the-information-by-james-gleick.html\" target=\"new\">http://www.nytimes.com/2011/03/20/books/review/book-review-the-information-by-james-gleick.html</a>. (You might notice that the review published March 18 in print is concluded by a correction added April 3 on the website: “A review on March 20 about The Information, James Gleick’s history of data organization, misstated the surname of the founder of cybernetics. He was Norbert Wiener, not Weiner.”) I, however, read it on paper, complete with the error.\r\n\r\nMeanwhile, I caught glancing references to The Information in other magazines, on the radio, through websites, in conversation. The book’s subject matter, so far as I gleaned from these secondary sources, is information theory and includes the essentially-related subtopics of entropy, publication, computer networks, semantic chains, bits, encoding, and communication at large. Its constellation of references includes Ada Lovelace, Alan Turing’s universal computer, Kurt Gödel, Claude Shannon, Bell Labs, Norbert Wiener, cybernetics, MIT, logical recursion, and so on and so on. All of this seemed way too close to my own interests; I was almost afraid to read it. (I’ve no idea if you can relate to this impulse, but I was worried that my thinking might be spoiled by reading someone else’s synthesis of this material.) It was as if a more accomplished thinker and writer had opened the most active corners of my brain, mined the pertinent subjects, and ghosted it into a comprehensive and cohesive commercially available non-fiction hardback. \r\n\r\nSeveral close friends showed no such reticence and began reading it immediately on publication. I soon heard accounts of how wonderful the book is. They might drop a nugget, a chapter title, or just offer a generalized effusive blessing. I resolved to read it myself once it came out in paperback. This bought me some time and anyway, I hate the unwieldiness of trade hardcover books with that many pages. Surely the paperback would be a bit more manageable — I could carry it on the subway, take it \r\non a trip, curl up with it in bed.\r\n\r\nOne friend in particular was becoming increasingly emphatic, insisting I must read the book now. In June, he scanned Chapter 14, “After the Flood (A Great Album of Babel),” made a PDF and emailed it to me. He suggested I read only this chapter now (it is around Wikipedia and the endgame of libraries in the face of the ultimate archive known as the internet), as a preview or trailer for the rest of the book. So I read it. How could I not after such an effort? It *was* fantastic and my anticipation for the whole book was further stoked by this recommendation. \r\n\r\nBy August that year, my brother-in-law toted the brick-of-a-book up on vacation to Vermont because he thought I’d enjoy it. Well, yes, I probably would, but not yet. \r\nI was still trying to be disciplined in waiting to read it until I had finished a couple of other books. Over those two weeks, I occasionally and guiltily dipped into The Information as it laid around, all the while looking forward to when I would get to sit down quietly and read it as a whole. By the way, the hardcover looks like this: <a href=\"http://around.com/wordpress/wp-content/uploads/US-book.png\" target=\"new\"> http://around.com/wordpress/wp-content/uploads/US-book.png</a>. Finally, the paperback edition was released sometime early in the fall. I was distracted by other things on the release date, but when I realized my sloth, I hopped over to Amazon to order a copy. I was less than pleased by the redesigned softcover: <a href=\"http://ecx.images-amazon.com/images/I/31YXpsDi26L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg\" target=\"new\"> http://ecx.images-amazon.com/images/I/31YXpsDi26L._BO2,204,203,200_PIsitb-sticker-arrow-click,TopRight,35,-76_AA300_SH20_OU01_.jpg</a>\r\n\r\nSo I *still* didn’t buy the book. I did however take my iPhone to the iBookstore (flipping the magic bookshelf at the center of the iBooks app) to track down a copy, or anyway see what was possible. The book was there and available for instant download at $15.99. A sample section of the first 155 pages was also there to be had for free. Free trumps $16 and besides, that would give me an excuse to hold onto my own thoughts on the book’s subjects rather than finding and replacing with the more carefully and rigorously arranged ideas of the author. I downloaded the e-pub and flipped through it, still assuming I would read the entire corpus on paper. That e-snippet sits still largely unread on my soon-to-be-obsolete (didn’t Apple release a new one yesterday?) iPhone stored in the electrical impulses (0 or 1) of its silicon memory as so much raw information — a total of 128,000 bits worth of the stuff.\r\n\r\nBut what’s a bit?  A bit is the standard unit of information as proposed by Bell Labs engineer Claude Shannon in his epoch-framing paper “A Mathematical Theory of Communication,” published in 1948. Shannon describes an abstract model of a communication system that applies widely outside of the narrow confines of his specific research as a telephone engineer. Shannon’s insights led directly to much of the information revolution and its attendant technologies. \r\n\r\nAs a base for his mathematical model, Shannon described a fundamental unit, like the inch or the second, which would allow for easy exchange and quantification of information: “the resulting units may be called binary digits, or more briefly, bits.” (<a href=\"http://cm.bell-labs.com/cm/ms/what/shannonday/shannon1948.pdf\" target=\"new\">http://cm.bell-labs.com/cm/ms/what/shannonday/shannon1948.pdf</a>) He recognized information as both the essential substance of any communication system and also its measure. The bit is information’s atom, the smallest indivisible unit, or as anthropologist Gregory Bateson described some years later, it is “the difference that makes a difference.” (<a href=\"http://en.wikipedia.org/wiki/Gregory_Bateson\" target=\"new\">http://en.wikipedia.org/wiki/Gregory_Bateson</a>)\r\n\r\nAs soon as information could be quantified, measured and relayed in consistently measured chunks as bits, then it no longer mattered what kind of information was being relayed, what it meant, or to whom. Information was freed from meaning and now became a thing, as real as water and at least as fluid. Information was carried in the words on the pages of a book, by a secret whispered in confidence, through the electric currents of telegraph wires, and most consequently via electrical charges pulsing through the silicon valleys of a computer chip. \r\n\r\nMeanwhile (and finally), I stumbled online onto a podcast hosted by The Free Library of Philadelphia. The podcast records an evening with The Information’s author, James Glieck hosted at the Library on March 1, 2011, the night the book was officially published. “Andy,” director of author relations for the Free Library, awkwardly introduces Glieck who then proceeds to read the book’s prologue.\r\n\r\nThis podcast is a pretty curious document — posted online as a downloadable mp3, documenting a live event where the author reads from his book published that same day and then answers questions from the audience. Not to make too much of all this, but it seems to me that this mp3 begins to describe the piecemeal ecology that is publishing (in its myriad formats and protocols) right now. I’d like you, if you will, to stop reading now and to listen to this recording. Pay attention to both *what* Glieck is saying but also *how* what he is saying is finding you, now. It’s about 30 minutes: <a href=\"http://libwww.freelibrary.org/podcast/media/20110301-jamesgl.mp3\" target=\"new\">http://libwww.freelibrary.org/podcast/media/20110301-jamesgl.mp3 </a>.\r\n\r\n. . .\r\n\r\nJust now, I ordered the hardcover copy of The Information. It should arrive tomorrow and I can’t wait to read it. But of course I already have been reading it, BIT BY BIT, through the multiple simultaneous channels that you’ve patiently just listened to me describe. It’s almost as if The Information’s information has pantomimed its subject matter by dividing and dispersing itself through the massively parallel networks of publishing and publicity, partially reassembling itself at the other end, in me — a reader, a victim, a willing accomplice.  \r\n\r\nMaybe I’ll even get to read it.',''),(4,1,'2014-12-08 00:34:12','2015-01-26 00:34:34',20,'Class Schedule',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','February 3	\r\n\r\nIntroduction		\r\nLecture — “The Information” \r\nExercise — Telephone games\r\n\r\nFebruary 10\r\n\r\nAssignment 1\r\nReview of class tools\r\nStudent reading presentations start\r\nReading — The Information: A History, A Theory, A Flood, James Gleick (Preface, Chapters 1 – 4)\r\n\r\nFebruary 17\r\n\r\nAssignment 1 continues\r\nStudent reading presentations continue\r\nLecture — “Put That There”\r\nReading — The Information: A History, A Theory, A Flood, James Gleick (Chapters 5 – 10)\r\n\r\nFebruary 24\r\n\r\nAssignment 1 ends\r\nStudent reading presentations end\r\nLecture — “A Live Archive”\r\nReading — The Information: A History, A Theory, A Flood, James Gleick (Chapters 11 – 15, Epilogue)\r\n\r\nMarch 3\r\n\r\nAssignment 2\r\nExercise — The walk to class\r\nLecture — “A Million Random Digits . . . ”\r\nReading — “A Mathematical Theory of Communication,” \r\nClaude Shannon\r\n\r\nMarch 10\r\n\r\nAssignment 2 continues\r\nReview, in-class critique (Assignment 2)\r\nExercise — An Exquisite Corpse\r\nLecture — “Ada Lovelace, and the fist computer program”\r\n“Ada, Countess of Lovelace,” from The Innovators, Walter Isaacson\r\n\r\nMarch 17\r\n	\r\nSpring break, no class\r\n\r\nMarch 24\r\n\r\nAssignment 2 continues\r\nProject review, in-class critique\r\nLecture — “On Paul Rand, Not Rand Paul”\r\nReading — “A Design Miscellany,” Paul Rand\r\n\r\nMarch 31\r\n\r\nAssignment 3\r\nGuest artist James Goggin (http://www.practise.co.uk) / Mark Owens / Peter Mendelsund\r\nLecture — “The Infinite Library”\r\nReading — “The Cobweb,” Jill Lepore, “A World in Three Aisles,” \r\nGideon Lewis-Kraus\r\nor\r\nLecture — “Pure Data” \r\nReading — “Pure Data,” Mark Owens\r\n\r\nApril 7		\r\n\r\nAssignment 3 continues\r\nLecture — “Global Branding”\r\nReading — “The Life and Death of Media,” Bruce Sterling\r\n\r\nApril 14		\r\nAssignment 3 continues\r\nProject review, in-class critique\r\nDemonstration —  The Medium is the Massage\r\nReading — “Massaging the Message,” Ellen Lupton, Abbott Miller\r\n\r\nApril 21		\r\n\r\nAssignment 3 continues\r\nIndividual meetings and class discussion\r\nLecture — “Visible, Language, Workshop, on software design” \r\nReading — “Computers and Design,” Design Quarterly 142, edited by Muriel Cooper, “Spatial Data Management,” Richard Bolt\r\n\r\nApril 28\r\n\r\nAssignment 3 ends\r\nFinal review of all work from the semester with visiting critics \r\nReading — “The Ectsasy of Plagiarism,” Jonathan Lethem\r\n\r\nMay 4		\r\n\r\nFinal portfolio due by 1:30 pm',''),(5,1,'2015-01-26 00:46:59','2015-01-26 00:57:41',20,'The Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By James Gleick','<a href = \'MEDIA/PDF/The-Information.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(6,1,'2015-01-26 01:01:34','2015-01-26 01:01:41',10,'Syllabus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'C-i-r-c-u-l-a-t-i-o-n','<a href = \'MEDIA/PDF/C-i-r-c-u-l-a-t-i-o-n.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(7,1,'2015-01-26 01:05:44','2015-01-26 01:08:03',30,'A Mathematical Theory of Communication',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Claude Shannon, 1948','<a href = \'MEDIA/PDF/A-Mathematical-Theory-of-Communication.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(8,1,'2015-01-26 19:53:53','2015-01-26 20:46:31',40,'Ada, Countess of Lovelace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'from The Innovators, Walter Isaacson','<a href = \'https://itunes.apple.com/us/book/the-innovators/id853738890?mt=11\' target=\'_BLANK\'>Download the iBooks sample here.</a><br />\r\n\r\n',''),(9,1,'2015-01-26 20:03:30','2015-01-26 20:04:01',50,'A Design Miscellany',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Paul Rand','<a href = \'MEDIA/PDF/A-Design-Miscellany.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(10,1,'2015-01-26 20:06:59','2015-01-26 20:47:56',60,'The Cobweb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Jill Lepore, New Yorker, January 26, 2015','<a href = \'MEDIA/PDF/The-Cobweb.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(11,1,'2015-01-26 20:09:58','2015-01-26 20:10:12',70,'A World in Three Aisles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Gideon Lewis-Kraus, Harpers, May 2007','<a href = \'MEDIA/PDF/A-World-in-Three-Aisles.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n',''),(12,1,'2015-01-26 20:12:56','2015-01-26 20:13:08',80,'Pure Data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Mark Owens, David Reinfurt','<a href = \'MEDIA/PDF/Pure-Data.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n',''),(13,1,'2015-01-26 20:14:51','2015-01-26 20:15:02',80,'The Life and Death of Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Bruce Sterling','<a href = \'MEDIA/PDF/The-Life-and-Death-of-Media.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n',''),(14,1,'2015-01-26 20:16:14','2015-01-26 20:16:28',100,'Massaging the Message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Ellen Lupton and Abbott Miller','<a href = \'MEDIA/PDF/Massaging-the-Message.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n',''),(15,1,'2015-01-26 20:18:29','2015-01-26 20:18:39',110,'The Ecstasy of Influence',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Jonathan Lethem, Harpers, ','<a href = \'MEDIA/PDF/The-Ecstasy-of-Influence.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n',''),(16,1,'2015-01-26 20:20:00','2015-01-26 20:34:57',120,'Computers and Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'edited by Muriel Cooper, Design Quarterly 142','<a href = \'MEDIA/PDF/Computers-and-Design.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(17,1,'2015-01-26 20:28:10','2015-01-26 20:32:29',130,'Spatial Data Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Dr. Richard Bolt, Architecture Machine Group, Massachusetts Institute of Technology','<a href = \'MEDIA/PDF/Spatial-Data-Management.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />','');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wires`
--

DROP TABLE IF EXISTS `wires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wires` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `fromid` int(10) unsigned DEFAULT NULL,
  `toid` int(10) unsigned DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '1',
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wires`
--

LOCK TABLES `wires` WRITE;
/*!40000 ALTER TABLE `wires` DISABLE KEYS */;
INSERT INTO `wires` VALUES (1,1,'2014-12-08 00:33:17','2014-12-08 00:33:17',0,1,1,NULL),(2,1,'2014-12-08 00:33:25','2014-12-08 00:33:25',0,2,1,NULL),(3,1,'2014-12-08 00:33:54','2014-12-08 00:33:54',1,3,1,NULL),(4,1,'2014-12-08 00:34:12','2014-12-08 00:34:12',1,4,1,NULL),(5,1,'2015-01-26 00:46:59','2015-01-26 00:46:59',2,5,1,NULL),(6,1,'2015-01-26 01:01:34','2015-01-26 01:01:34',2,6,1,NULL),(7,1,'2015-01-26 01:05:44','2015-01-26 01:05:44',2,7,1,NULL),(8,1,'2015-01-26 19:53:53','2015-01-26 19:53:53',2,8,1,NULL),(9,1,'2015-01-26 20:03:30','2015-01-26 20:03:30',2,9,1,NULL),(10,1,'2015-01-26 20:06:59','2015-01-26 20:06:59',2,10,1,NULL),(11,1,'2015-01-26 20:09:58','2015-01-26 20:09:58',2,11,1,NULL),(12,1,'2015-01-26 20:12:56','2015-01-26 20:12:56',2,12,1,NULL),(13,1,'2015-01-26 20:14:51','2015-01-26 20:14:51',2,13,1,NULL),(14,1,'2015-01-26 20:16:14','2015-01-26 20:16:14',2,14,1,NULL),(15,1,'2015-01-26 20:18:29','2015-01-26 20:18:29',2,15,1,NULL),(16,1,'2015-01-26 20:20:00','2015-01-26 20:20:00',2,16,1,NULL),(17,1,'2015-01-26 20:28:10','2015-01-26 20:28:10',2,17,1,NULL);
/*!40000 ALTER TABLE `wires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-27 17:41:44
