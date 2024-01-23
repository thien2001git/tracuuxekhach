CREATE DATABASE  IF NOT EXISTS `tracuuxekhach` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tracuuxekhach`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tracuuxekhach
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chuyen_xe`
--

DROP TABLE IF EXISTS `chuyen_xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyen_xe` (
  `id` bigint NOT NULL,
  `lo_trinh` bigint NOT NULL,
  `tai_xe` bigint NOT NULL,
  `thoi_gian_den` bigint NOT NULL,
  `thoi_gian_di` bigint NOT NULL,
  `xe` bigint NOT NULL,
  `gia_ve` bigint NOT NULL,
  `chieu` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyen_xe`
--

LOCK TABLES `chuyen_xe` WRITE;
/*!40000 ALTER TABLE `chuyen_xe` DISABLE KEYS */;
INSERT INTO `chuyen_xe` VALUES (0,40,4,1707735833769,1707738053769,47,177200,_binary ''),(1,21,7,1706610533769,1706624993769,29,530700,_binary ''),(2,26,23,1708567133769,1708579553769,2,978300,_binary ''),(3,6,5,1707898553769,1707898673769,26,551700,_binary '\0'),(4,18,35,1706828993769,1706832593769,40,902600,_binary '\0'),(5,36,19,1707261053769,1707272393769,2,727800,_binary ''),(6,7,17,1707018413769,1707031253769,37,632100,_binary ''),(7,49,4,1706961773769,1706977433769,8,743100,_binary '\0'),(8,40,6,1707422693769,1707431573769,16,470200,_binary '\0'),(9,42,8,1706203793769,1706219153769,28,643600,_binary '\0'),(10,2,47,1706093333769,1706100533769,39,560200,_binary ''),(11,37,13,1708572533769,1708581113769,18,207100,_binary '\0'),(12,48,34,1706911193769,1706914433769,12,185700,_binary '\0'),(13,36,19,1706697413769,1706711093769,6,652800,_binary ''),(14,26,7,1706080313769,1706096093769,46,252000,_binary '\0'),(15,31,28,1708101233769,1708104113769,26,269400,_binary '\0'),(16,20,3,1706097353769,1706097653769,7,751500,_binary ''),(17,40,4,1708468433769,1708488113769,7,896600,_binary ''),(18,23,48,1707142253769,1707142433769,40,679200,_binary ''),(19,11,9,1706520953769,1706531393769,13,486900,_binary ''),(20,25,48,1708276133769,1708281113769,6,491800,_binary '\0'),(21,43,45,1707890753769,1707896573769,48,547200,_binary ''),(22,3,46,1707026273769,1707038273769,21,563500,_binary ''),(23,30,7,1707491333769,1707507473769,14,355900,_binary ''),(24,13,8,1707242753769,1707258053769,26,504600,_binary ''),(25,32,29,1707072593769,1707090173769,15,692800,_binary '\0'),(26,40,24,1706472653769,1706485373769,29,681000,_binary ''),(27,26,45,1707482153769,1707495773769,37,101199,_binary '\0'),(28,8,43,1706223773769,1706244473769,22,635900,_binary ''),(29,34,49,1706745653769,1706746193769,2,805500,_binary '\0'),(30,2,13,1708219613769,1708229933769,33,100399,_binary '\0'),(31,38,36,1706530313769,1706544533769,50,299900,_binary '\0'),(32,40,14,1706052053769,1706053913769,2,386599,_binary ''),(33,13,26,1708565153769,1708583093769,7,683800,_binary '\0'),(34,48,31,1707983633769,1707990593769,42,113900,_binary ''),(35,49,22,1708344113769,1708358693769,8,987099,_binary ''),(36,49,11,1706159573769,1706165153769,4,174899,_binary ''),(37,45,11,1706030153769,1706030273769,34,938700,_binary '\0'),(38,0,11,1706121773769,1706123513769,48,430000,_binary ''),(39,0,12,1708054073769,1708062593769,35,666000,_binary ''),(40,41,28,1707850613769,1707868793769,27,703000,_binary ''),(41,35,13,1707175193769,1707188693769,14,555900,_binary ''),(42,21,11,1707046073769,1707066533769,43,633300,_binary ''),(43,5,37,1706420573769,1706425673769,18,101400,_binary '\0'),(44,25,3,1708157513769,1708178393769,8,905000,_binary '\0'),(45,37,41,1707272753769,1707281033769,36,448300,_binary ''),(46,42,5,1706793353769,1706811593769,37,410400,_binary ''),(47,38,41,1707163733769,1707184973769,17,295000,_binary '\0'),(48,45,39,1706098433769,1706106773769,44,320800,_binary ''),(49,31,30,1706858633769,1706874473769,44,193200,_binary '\0');
/*!40000 ALTER TABLE `chuyen_xe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lo_trinh`
--

DROP TABLE IF EXISTS `lo_trinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lo_trinh` (
  `id` bigint NOT NULL,
  `lo_trinh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lo_trinh`
--

LOCK TABLES `lo_trinh` WRITE;
/*!40000 ALTER TABLE `lo_trinh` DISABLE KEYS */;
INSERT INTO `lo_trinh` VALUES (0,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Hải Phòng (thành phố) - Nam Định - Hà Giang - Đà Nẵng (thành phố) - Lạng Sơn - Quảng Trị - Bắc Ninh'),(1,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Bắc Giang - Lai Châu - Tiền Giang - Bạc Liêu - Bình Dương - Đồng Tháp - Kon Tum'),(2,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Lạng Sơn - Kiên Giang - Tiền Giang - Bạc Liêu - Hải Dương - Hòa Bình - Thái Nguyên - An Giang - Hưng Yên - Quảng Ninh'),(3,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - An Giang - Yên Bái - Điện Biên - Yên Bái - Thanh Hóa - Đà Nẵng (thành phố) - Sóc Trăng - Phú Yên - Phú Yên'),(4,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Trà Vinh - Thái Nguyên - Thừa Thiên - Huế - Hà Nam - Sóc Trăng - Bắc Giang'),(5,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Đà Nẵng (thành phố) - Cao Bằng - Sơn La - Cà Mau - Quảng Bình - Lai Châu'),(6,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Lâm Đồng - Quảng Trị - Long An - Đắk Lắk - Đắk Nông - Hải Phòng (thành phố) - Lào Cai - Hậu Giang - Thái Nguyên - Quảng Nam'),(7,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Yên Bái - Đắk Lắk - Ninh Bình - Bạc Liêu - Nam Định - Đồng Nai - Bình Thuận'),(8,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Bạc Liêu - Thanh Hóa - Bình Dương - Bắc Giang - Tiền Giang - Hậu Giang'),(9,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Phú Thọ - Bà Rịa - Vũng Tàu - Bình Thuận - Cao Bằng - Hòa Bình'),(10,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Nghệ An - Cần Thơ (thành phố) - An Giang - Đắk Nông - Thái Bình - Cà Mau - Đắk Nông - Thanh Hóa - Phú Yên - Cần Thơ (thành phố)'),(11,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Hậu Giang - Nam Định - Thanh Hóa - Vĩnh Long - Sóc Trăng - Hải Dương - Tây Ninh'),(12,'Bến xe Mỹ Đình: Địa chỉ: Đường Phạm Hùng, quận Nam Từ Liêm, Hà Nội. - Lạng Sơn - Đồng Nai - Hòa Bình - Trà Vinh - Ninh Thuận - Long An - Quảng Trị - Thái Nguyên'),(13,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Thái Nguyên - Cà Mau - Bắc Ninh - Lai Châu - Phú Thọ - Bạc Liêu - Thừa Thiên - Huế - Hải Phòng (thành phố)'),(14,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Nam Định - Quảng Ngãi - Bạc Liêu - Lâm Đồng - Bắc Ninh'),(15,'Bến xe Mỹ Đình: Địa chỉ: Đường Phạm Hùng, quận Nam Từ Liêm, Hà Nội. - Tây Ninh - Kiên Giang - Đà Nẵng (thành phố) - Ninh Thuận - Đắk Nông - Thái Bình - Bắc Kạn - Cần Thơ (thành phố) - Đắk Lắk - Hậu Giang'),(16,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Tây Ninh - Cần Thơ (thành phố) - Quảng Ninh - Hải Dương - Nam Định - Bắc Ninh - Hà Nam - Quảng Nam'),(17,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Lâm Đồng - Đà Nẵng (thành phố) - Đắk Nông - Long An - Quảng Ngãi - Ninh Bình - Hà Nam - Lâm Đồng'),(18,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Bắc Ninh - Quảng Ngãi - Phú Yên - Khánh Hòa - Khánh Hòa - Thanh Hóa - Điện Biên'),(19,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Quảng Bình - Bình Dương - Phú Yên - Bình Phước - Quảng Bình - Thái Bình'),(20,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Kiên Giang - Đồng Tháp - Đắk Nông - Thanh Hóa - Tiền Giang - Thái Bình - Long An - Phú Yên'),(21,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Vĩnh Long - Hà Tĩnh - Hà Tĩnh - Sóc Trăng - Hòa Bình - Thái Nguyên'),(22,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Đà Nẵng (thành phố) - Nghệ An - Cần Thơ (thành phố) - Đồng Tháp - Hưng Yên - Hải Phòng (thành phố) - Đắk Nông - Quảng Nam'),(23,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Quảng Bình - Tuyên Quang - Ninh Bình - Hà Tĩnh - Lào Cai - Vĩnh Long - Phú Thọ - Lào Cai'),(24,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Khánh Hòa - Quảng Ninh - Lạng Sơn - Lào Cai - Đắk Nông - Lâm Đồng'),(25,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Cà Mau - Kon Tum - Quảng Ngãi - Trà Vinh - Đồng Nai - Long An - Bến Tre - Lạng Sơn - Gia Lai'),(26,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Kon Tum - Quảng Bình - Kiên Giang - Phú Yên - Thái Bình - Phú Yên'),(27,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Cao Bằng - Ninh Bình - Vĩnh Long - Hậu Giang - Thừa Thiên - Huế - Cao Bằng - Sơn La - Tiền Giang - Đà Nẵng (thành phố) - Sơn La'),(28,'Bến xe Mỹ Đình: Địa chỉ: Đường Phạm Hùng, quận Nam Từ Liêm, Hà Nội. - Quảng Ngãi - Thanh Hóa - Vĩnh Long - Quảng Nam - Lào Cai - Bình Định'),(29,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Vĩnh Long - Tây Ninh - Long An - Bình Định - Quảng Nam - Đà Nẵng (thành phố) - An Giang - Nam Định - Quảng Ngãi'),(30,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Lâm Đồng - Bà Rịa - Vũng Tàu - Nam Định - Vĩnh Phúc - Lâm Đồng - Thái Nguyên - Bình Phước - Thừa Thiên - Huế - Vĩnh Long'),(31,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Quảng Ninh - Hà Tĩnh - Bình Định - Hậu Giang - Đồng Nai - Vĩnh Phúc - Long An - Hậu Giang'),(32,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Phú Yên - Long An - Hậu Giang - Hưng Yên - Trà Vinh'),(33,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Nghệ An - Hưng Yên - Hà Tĩnh - Bà Rịa - Vũng Tàu - Vĩnh Long - Cao Bằng - Sóc Trăng - Nam Định - Yên Bái - Long An'),(34,'Bến xe Mỹ Đình: Địa chỉ: Đường Phạm Hùng, quận Nam Từ Liêm, Hà Nội. - Nam Định - Bắc Ninh - Lâm Đồng - Bình Phước - Bà Rịa - Vũng Tàu'),(35,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Cà Mau - Sơn La - Đắk Lắk - Hậu Giang - Cần Thơ (thành phố) - Ninh Bình'),(36,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Yên Bái - Phú Thọ - Ninh Bình - Đồng Tháp - Bình Dương - Yên Bái - Vĩnh Phúc - Quảng Ngãi'),(37,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Tuyên Quang - Cần Thơ (thành phố) - Hà Tĩnh - Bình Định - Bến Tre - Bình Dương - Quảng Ngãi - Thái Nguyên - Hải Dương'),(38,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Đắk Nông - Vĩnh Phúc - Cà Mau - Hải Phòng (thành phố) - Lào Cai - Hà Nam'),(39,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Ninh Bình - Đắk Nông - Đắk Nông - Bắc Ninh - Cà Mau - Bắc Kạn - Bắc Kạn - Bà Rịa - Vũng Tàu - Lai Châu'),(40,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Bình Thuận - Khánh Hòa - Kiên Giang - Bắc Ninh - Thái Nguyên - Thái Bình - Tiền Giang - Tây Ninh'),(41,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Hải Dương - Cà Mau - Bắc Kạn - Kon Tum - Gia Lai - Đà Nẵng (thành phố) - Bình Định'),(42,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Bình Dương - Bạc Liêu - Tiền Giang - Ninh Bình - Thanh Hóa - Thừa Thiên - Huế'),(43,'Bến xe Nước Ngầm: Địa chỉ: 116 Hồng Hà, quận Hoàn Kiếm, Hà Nội. - Lai Châu - Lai Châu - Đắk Nông - Tiền Giang - Ninh Thuận - Hải Dương - Đắk Lắk'),(44,'Bến xe Yên Nghĩa: Địa chỉ: Đường Lê Trọng Tấn, xã Yên Nghĩa, huyện Hà Đông, Hà Nội. - Hưng Yên - Lạng Sơn - Hải Phòng (thành phố) - Hà Giang - Khánh Hòa - Bắc Ninh - Bắc Ninh'),(45,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Hưng Yên - Ninh Bình - Lào Cai - Hải Phòng (thành phố) - Thanh Hóa - Bình Thuận - Yên Bái - Gia Lai'),(46,'Bến xe Long Biên: Địa chỉ: Ngã tư Long Biên, quận Long Biên, Hà Nội. - Tuyên Quang - Thái Bình - Lào Cai - Gia Lai - Hải Phòng (thành phố) - Sóc Trăng'),(47,'Bến xe Cầu Giấy: Địa chỉ: Phạm Văn Đồng, quận Cầu Giấy, Hà Nội. - Đắk Nông - An Giang - Đồng Nai - Bắc Giang - Tây Ninh'),(48,'Bến xe Giáp Bát: Địa chỉ: Đường Giáp Bát, quận Hoàng Mai, Hà Nội. - Vĩnh Phúc - Lai Châu - Quảng Trị - Lạng Sơn - Lâm Đồng - Đà Nẵng (thành phố) - Khánh Hòa'),(49,'Bến xe Gia Lâm: Địa chỉ: Km8, QL5, Gia Lâm, Hà Nội. - Tiền Giang - Nghệ An - Ninh Thuận - Hà Tĩnh - Hà Giang - Đồng Tháp - Bến Tre - Khánh Hòa - Thái Nguyên');
/*!40000 ALTER TABLE `lo_trinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_xe`
--

DROP TABLE IF EXISTS `tai_xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_xe` (
  `id` bigint NOT NULL,
  `bang_lai` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `ngay_lay_bang` bigint NOT NULL,
  `ngay_sinh` bigint NOT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_xe`
--

LOCK TABLES `tai_xe` WRITE;
/*!40000 ALTER TABLE `tai_xe` DISABLE KEYS */;
INSERT INTO `tai_xe` VALUES (1,'A1','Nguyễn Văn A',1647277200000,643136400000,'0987654321'),(2,'B1','Trần Thị B',1639069200000,492627600000,'0909123456'),(3,'C','Lê Văn C',1677517200000,815331600000,'0978123456'),(4,'A2','Phạm Thị D',1600362000000,577904400000,'0918234567'),(5,'B2','Hoàng Văn E',1656522000000,711133200000,'0987123456'),(6,'A1','Nguyễn Thị F',1620752400000,557427600000,'0908123456'),(7,'C','Trần Văn G',1673110800000,786819600000,'0978234567'),(8,'B1','Lê Thị H',1606237200000,666723600000,'0919123456'),(9,'A2','Phạm Văn I',1659459600000,614451600000,'0989123456'),(10,'C','Hoàng Thị K',1626627600000,750186000000,'0908123456'),(11,'A1','Nguyễn Văn L',1680627600000,827946000000,'0978123456'),(12,'B2','Trần Thị M',1602694800000,653245200000,'0918234567'),(13,'A1','Lê Văn N',1644598800000,533926800000,'0987123456'),(14,'C','Phạm Thị P',1632070800000,798138000000,'0909123456'),(15,'B1','Hoàng Văn Q',1607360400000,588186000000,'0978123456'),(16,'A2','Nguyễn Thị R',1679677200000,690138000000,'0918234567'),(17,'C','Trần Văn S',1643475600000,870109200000,'0989123456'),(18,'B2','Lê Thị T',1623949200000,608144400000,'0908123456'),(19,'A1','Phạm Văn U',1594486800000,760554000000,'0978234567'),(20,'C','Hoàng Thị V',1651424400000,719341200000,'0919123456'),(21,'A2','Nguyễn Văn X',1628960400000,565635600000,'0989123456'),(22,'B1','Trần Thị Y',1677517200000,741373200000,'0908123456'),(23,'A1','Lê Văn Z',1600362000000,577904400000,'0979123456'),(24,'B2','Phạm Thị W',1656522000000,711133200000,'0918123456'),(25,'C','Hoàng Văn U',1620752400000,557427600000,'0987123456'),(26,'A2','Nguyễn Thị V',1673110800000,786819600000,'0909123456'),(27,'B1','Trần Văn X',1606237200000,666723600000,'0978234567'),(28,'A1','Lê Thị Y',1659459600000,614451600000,'0918234567'),(29,'C','Phạm Văn Z',1626627600000,750186000000,'0989123456'),(30,'A2','Hoàng Thị T',1680627600000,827946000000,'0909123456'),(31,'B1','Nguyễn Văn S',1602694800000,653245200000,'0978123456'),(32,'C','Trần Thị T',1644598800000,533926800000,'0919123456'),(33,'A1','Lê Văn U',1632070800000,798138000000,'0978234567'),(34,'B2','Phạm Thị V',1607360400000,588186000000,'0919123456'),(35,'C','Hoàng Văn W',1679677200000,690138000000,'0978234567'),(36,'A2','Nguyễn Thị X',1643475600000,870109200000,'0989123456'),(37,'B1','Trần Văn Y',1623949200000,608144400000,'0908123456'),(38,'C','Lê Thị Z',1594486800000,760554000000,'0979123456'),(39,'A1','Phạm Văn A',1651424400000,719341200000,'0909123456'),(40,'B2','Hoàng Thị B',1628960400000,565635600000,'0979123456');
/*!40000 ALTER TABLE `tai_xe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xe`
--

DROP TABLE IF EXISTS `xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xe` (
  `id` bigint NOT NULL,
  `bien_so` varchar(255) DEFAULT NULL,
  `hang_xe` varchar(255) DEFAULT NULL,
  `loai_xe` varchar(255) DEFAULT NULL,
  `so_cho` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xe`
--

LOCK TABLES `xe` WRITE;
/*!40000 ALTER TABLE `xe` DISABLE KEYS */;
INSERT INTO `xe` VALUES (1,'29B-4587','Bảo Yến','Ngồi',60),(2,'72X-9061','Bảo Yến','Ngồi',45),(3,'51D-3724','Phương Trang','Giường nằm',15),(4,'88G-5102','Cường An','Giường nằm',15),(5,'16F-6890','Sao Việt','Giường nằm',60),(6,'40J-1753','Mai Linh','Giường nằm',45),(7,'93K-8246','Mai Linh','Giường nằm',15),(8,'65P-3098','Kumho Samco','Ngồi',15),(9,'77R-4621','Kim Hoàng','Ngồi',45),(10,'14H-5803','Thành Bưởi','Ngồi',15),(11,'38L-9174','Thành Bưởi','Ngồi',60),(12,'22M-7045','Sao Việt','Ngồi',15),(13,'49N-6318','Thành Bưởi','Giường nằm',45),(14,'84A-2056','Sao Việt','Giường nằm',50),(15,'57E-8460','Văn Minh','Giường nằm',15),(16,'33C-7192','Bảo Yến','Giường nằm',50),(17,'68O-5036','Bảo Yến','Giường nằm',60),(18,'11I-8649','Bảo Yến','Ngồi',50),(19,'45U-2817','Hoàng Long','Giường nằm',50),(20,'79Q-6420','Phương Trang','Ngồi',45),(21,'26B-3958','Mai Linh','Giường nằm',45),(22,'53X-1087','Hoàng Long','Giường nằm',50),(23,'80D-9764','Bảo Yến','Giường nằm',45),(24,'36Y-2409','Cường An','Ngồi',50),(25,'63Z-7815','Kumho Samco','Ngồi',50),(26,'95E-3641','Mai Linh','Giường nằm',15),(27,'17F-5923','Hoàng Long','Ngồi',15),(28,'44G-8096','Kim Hoàng','Giường nằm',60),(29,'71H-5032','Hoàng Long','Giường nằm',45),(30,'58J-2167','Phương Trang','Giường nằm',45),(31,'24K-8579','Sao Việt','Giường nằm',60),(32,'99L-4286','Cường An','Ngồi',50),(33,'12M-6043','Hoàng Long','Ngồi',15),(34,'47N-1895','Thành Bưởi','Ngồi',15),(35,'75O-9624','Kumho Samco','Giường nằm',15),(36,'19P-7358','Kim Hoàng','Ngồi',15),(37,'81Q-5071','Kumho Samco','Giường nằm',60),(38,'54R-8203','Sao Việt','Giường nằm',50),(39,'30S-6714','Cường An','Giường nằm',60),(40,'67T-3185','Sao Việt','Giường nằm',15),(41,'92U-5840','Mai Linh','Giường nằm',45),(42,'35V-1976','Thành Bưởi','Ngồi',15),(43,'78W-9402','Hoàng Long','Ngồi',50),(44,'21X-4637','Cường An','Ngồi',15),(45,'46Y-8250','Kim Hoàng','Ngồi',45),(46,'83Z-5701','Kumho Samco','Giường nằm',45),(47,'59A-3248','Bảo Yến','Ngồi',15),(48,'14B-6892','Mai Linh','Ngồi',15),(49,'72C-9013','Sao Việt','Ngồi',60),(50,'38D-5276','Kumho Samco','Ngồi',45);
/*!40000 ALTER TABLE `xe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23 23:54:41
