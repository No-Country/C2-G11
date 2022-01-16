-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add customer',7,'add_customer'),(26,'Can change customer',7,'change_customer'),(27,'Can delete customer',7,'delete_customer'),(28,'Can view customer',7,'view_customer'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add order item',9,'add_orderitem'),(34,'Can change order item',9,'change_orderitem'),(35,'Can delete order item',9,'delete_orderitem'),(36,'Can view order item',9,'view_orderitem'),(37,'Can add order',10,'add_order'),(38,'Can change order',10,'change_order'),(39,'Can delete order',10,'delete_order'),(40,'Can view order',10,'view_order'),(41,'Can add shipping address',11,'add_shippingaddress'),(42,'Can change shipping address',11,'change_shippingaddress'),(43,'Can delete shipping address',11,'delete_shippingaddress'),(44,'Can view shipping address',11,'view_shippingaddress'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add relationship',13,'add_relationship'),(50,'Can change relationship',13,'change_relationship'),(51,'Can delete relationship',13,'delete_relationship'),(52,'Can view relationship',13,'view_relationship'),(53,'Can add profile',14,'add_profile'),(54,'Can change profile',14,'change_profile'),(55,'Can delete profile',14,'delete_profile'),(56,'Can view profile',14,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$ujxIdRgIypy6uY797VcNuf$QHrIjB7KCgjt8NPYHAcvjCujamie1XFVgofGpeA34jI=','2022-01-15 01:34:48.163243',1,'C2G11','','','nicolas.basualdo.cornet@gmail.com',1,1,'2022-01-05 23:41:32.913000'),(3,'pbkdf2_sha256$320000$vI0cFqn5emHcrnJCGSJB7I$nEmV4PLWlIJ0jvE1gtpp6i7fj16KWYGcHsrtG3I/FYU=','2022-01-15 17:15:53.614784',1,'usuario2','','','',0,1,'2022-01-12 22:30:11.475615'),(4,'pbkdf2_sha256$320000$xhoOTPvHJlhZf6srD7Bi9C$aUuBXO4YNXhPNc+m9QMbIhNzbq+3oVhcFNrAsb+wWbs=','2022-01-14 21:22:16.617648',0,'usuario3','','','usuario3@gmail.com',0,1,'2022-01-14 21:17:44.486746'),(21,'pbkdf2_sha256$320000$uPa0Qw6AANd8c7p3J56vQP$8OHGoZnMeDfC6GqtFMcoS2+KbY1Xw+FOPko0z5XxQjw=','2022-01-15 02:00:25.040238',0,'usuario4','','','usuario4@gmail.com',0,1,'2022-01-15 02:00:24.605359'),(22,'pbkdf2_sha256$320000$9Hl933i3paFe31nIesv7MD$5iv64GAXF4yLwts8a28EXWqZ4LZvRKTtPEbU4oo11Ec=','2022-01-15 02:02:05.731029',0,'usuario5','','','usuario5@gmail.com',0,1,'2022-01-15 02:02:05.316642'),(23,'pbkdf2_sha256$320000$OnfYP4mqlHKZfgR1zMw4cS$2/kSUnSXS7mjvidlGdd1yvrp93y2wgusKQtuLk9RT1w=','2022-01-15 03:26:29.098074',0,'usuario1','','','usuario1@gmail.com',0,1,'2022-01-15 02:26:57.319121');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-07 19:18:24.732000','1','Banana',1,'[{\"added\": {}}]',8,1),(2,'2022-01-07 19:18:42.084000','2','Naranjas',1,'[{\"added\": {}}]',8,1),(3,'2022-01-07 19:18:58.763000','3','Pera',1,'[{\"added\": {}}]',8,1),(4,'2022-01-07 19:19:12.604000','4','Arßndano',1,'[{\"added\": {}}]',8,1),(5,'2022-01-07 19:19:26.638000','5','Palta',1,'[{\"added\": {}}]',8,1),(6,'2022-01-07 19:19:37.516000','6','Mandarina',1,'[{\"added\": {}}]',8,1),(7,'2022-01-07 19:19:48.363000','2','Naranjas',2,'[]',8,1),(8,'2022-01-07 19:19:52.309000','2','Naranjas',2,'[]',8,1),(9,'2022-01-07 19:19:56.077000','2','Naranja',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(10,'2022-01-07 20:20:36.669000','6','Mandarina',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(11,'2022-01-07 20:20:49.569000','6','Mandarina',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(12,'2022-01-07 20:20:53.364000','6','Mandarina',2,'[]',8,1),(13,'2022-01-07 20:20:57.119000','5','Palta',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(14,'2022-01-07 20:21:01.878000','4','Arßndano',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(15,'2022-01-07 20:21:06.404000','3','Pera',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(16,'2022-01-07 20:21:10.285000','2','Naranja',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(17,'2022-01-07 20:21:16.684000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(18,'2022-01-07 20:21:20.420000','5','Palta',2,'[]',8,1),(19,'2022-01-07 20:21:26.495000','6','Mandarina',2,'[]',8,1),(20,'2022-01-07 20:21:28.130000','6','Mandarina',2,'[]',8,1),(21,'2022-01-07 20:22:27.753000','5','Palta',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(22,'2022-01-07 20:22:33.569000','4','Arßndano',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(23,'2022-01-07 20:22:39.695000','3','Pera',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(24,'2022-01-07 20:22:46.890000','2','Naranja',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(25,'2022-01-07 20:22:52.187000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(26,'2022-01-07 20:38:24.899000','6','Mandarina',2,'[]',8,1),(27,'2022-01-07 20:38:29.386000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(28,'2022-01-07 20:38:34.113000','1','Banana',2,'[]',8,1),(29,'2022-01-07 20:38:48.517000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(30,'2022-01-07 20:41:53.275000','1','Nbcornet',1,'[{\"added\": {}}]',7,1),(31,'2022-01-07 20:42:29.417000','1','1',1,'[{\"added\": {}}]',10,1),(32,'2022-01-07 20:43:10.911000','1','OrderItem object (1)',1,'[{\"added\": {}}]',9,1),(33,'2022-01-07 20:43:35.164000','2','OrderItem object (2)',1,'[{\"added\": {}}]',9,1),(34,'2022-01-07 22:53:54.923000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(35,'2022-01-07 22:54:02.471000','1','Banana',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(36,'2022-01-12 20:43:04.989518','2','usuario1',1,'[{\"added\": {}}]',4,1),(37,'2022-01-12 20:43:37.448114','2','usuario1',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',4,1),(38,'2022-01-12 20:43:49.913101','2','usuario1',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(39,'2022-01-12 20:44:25.421831','2','usuario1',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(40,'2022-01-12 22:30:11.756031','3','usuario2',1,'[{\"added\": {}}]',4,1),(41,'2022-01-14 20:22:05.595595','2','usuario2',1,'[{\"added\": {}}]',7,1),(42,'2022-01-14 21:21:50.470254','3','usuario3',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','customer'),(10,'store','order'),(9,'store','orderitem'),(8,'store','product'),(14,'store','profile'),(13,'store','relationship'),(11,'store','shippingaddress'),(12,'store','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-12 01:14:19.859171'),(2,'auth','0001_initial','2022-01-12 01:14:21.131765'),(3,'admin','0001_initial','2022-01-12 01:14:21.445198'),(4,'admin','0002_logentry_remove_auto_add','2022-01-12 01:14:21.481270'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-12 01:14:21.524081'),(6,'contenttypes','0002_remove_content_type_name','2022-01-12 01:14:21.759008'),(7,'auth','0002_alter_permission_name_max_length','2022-01-12 01:14:21.937304'),(8,'auth','0003_alter_user_email_max_length','2022-01-12 01:14:22.055061'),(9,'auth','0004_alter_user_username_opts','2022-01-12 01:14:22.106110'),(10,'auth','0005_alter_user_last_login_null','2022-01-12 01:14:22.253035'),(11,'auth','0006_require_contenttypes_0002','2022-01-12 01:14:22.275316'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-12 01:14:22.312124'),(13,'auth','0008_alter_user_username_max_length','2022-01-12 01:14:22.467790'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-12 01:14:22.632319'),(15,'auth','0010_alter_group_name_max_length','2022-01-12 01:14:22.709118'),(16,'auth','0011_update_proxy_permissions','2022-01-12 01:14:22.750675'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-12 01:14:22.927457'),(18,'sessions','0001_initial','2022-01-12 01:14:23.029977'),(19,'store','0001_initial','2022-01-12 01:14:24.125859'),(20,'store','0002_user_relationship_profile_and_more','2022-01-14 03:37:57.055083'),(21,'store','0003_alter_profile_user_alter_relationship_from_user_and_more','2022-01-14 20:33:16.250942'),(22,'store','0004_alter_customer_user','2022-01-15 01:32:59.500056'),(23,'store','0005_alter_customer_user','2022-01-15 01:59:26.422733');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1o9gnposb7cfh1xlh4eg2s465p1sj19k','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n5z9Y:dgOP8zynTf7GKF8UNk8KQ6MqPOJh6-AqPYNFC3MLrj4','2022-01-22 00:00:12.807000'),('5hv6yystyfzfpj3q4fxt29wni281ntrq','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6ZxO:yDcTunL9x7JDmlNnMtPu-THmNrK47l97QV1kc4fmqz0','2022-01-23 15:18:06.161000'),('6y82rb2gbknavv8hi1ziu1xajkdavrz3','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n74NU:aD_DgMyL-l42Kkxfq8hzs3KE5VGzyNbMqpjAU7QIeqI','2022-01-24 23:47:04.004000'),('akf1u81pzs2mf4jax7h42356ya9lvqco','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6a2t:WlfoLa_jLiWhqtTsly3PClY5rBVSxXss3CpPqfALzGM','2022-01-23 15:23:47.387000'),('b1lr4aoh9t5q2e6ul54vp8zou83w2bnl','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6Zyn:dmxNp9sh_dizcsV6Wksqs70vI_mG46OSexoF7_VjgNw','2022-01-23 15:19:33.500000'),('j9hofd5khz7ysa88wmi2e6ufkg8cprtb','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6h54:ywITz5AmL6x7wJBVJMASHddJ_AnWLlNWZYxwyQ6CGaI','2022-01-23 22:54:30.377000'),('lldie9fx4tewx5wlfkb845kf88sjt4f6','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6ujX:dw9B9CfjfsFgnJHgUxmyi-NKDL4alNbVRpMpp3VvPI0','2022-01-24 13:29:11.735000'),('mx0hfjbyhjhm0t2yeoyizwkmj80a2x2h','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6uR8:yjdEIG-LhUeYi9iVHpgfOMK-QZMs-Fjm3-UtWDzdB70','2022-01-24 13:10:10.175000'),('nkgoguzvsci6v9rm5lo5xdf8iicq36y7','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6bin:97gCGdNSNRIiCMx5fKKnOn6lzWHrIAj2RY2t_pq0RW4','2022-01-23 17:11:09.893000'),('rxa5fdsmy8ndj0godp3zv1njmtqs2m17','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6ahf:rxX-kwdaPHJ1_2d-1l0jDTaP1CGlK-TlKDPxWmjUJvQ','2022-01-23 16:05:55.264000'),('s3a56txxkj09v6xbeavqypm723c2kjv4','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6K83:zFf6RLSA9YlU7auJoMdN8d9fQ9wStBZSIXaCN02R9BA','2022-01-22 22:24:03.323000'),('u10ex1jntcei4bw3rmtakhhp09r6xlsl','.eJxVjMsOwiAQRf-FtSG8h7p07zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2JlJdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGvnfLzcrh_BxVH_dbCu6lAVtKCKkoWRRSRnInWQARfPJAFIyROSgivNUBJKK2WUTsEFOz9AcsWNw4:1n6Jl7:9Z7hMGHFip0MBLHe7lki7u9TtanFKoNJZeUFiFM4OU0','2022-01-22 22:00:21.705000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'Nbcornet','nicolas.basualdo.cornet@gmail.com',1),(2,'usuario2','usuario2@gmail.com',3),(3,'usuario3','usuario3@gmail.com',4),(4,NULL,'',21),(5,NULL,'',22),(6,NULL,'',23);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_ordered` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_customer_id_13d6d43e_fk_store_customer_id` (`customer_id`),
  CONSTRAINT `store_order_customer_id_13d6d43e_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (1,'2022-01-07 20:42:29.402000',1,'1641776967.940122',1),(2,'2022-01-10 01:09:29.508000',1,'1641778397.93591',1),(3,'2022-01-10 01:33:19.410000',1,'1641778452.234657',1),(4,'2022-01-10 01:34:14.323000',1,'1641781085.016397',1),(5,'2022-01-10 02:18:06.510000',1,'1641819138.105716',1),(6,'2022-01-10 12:52:20.968000',1,'1641820065.285684',1),(7,'2022-01-10 13:07:47.099000',0,NULL,1),(8,'2022-01-14 20:23:02.409808',0,NULL,2),(9,'2022-01-14 21:22:16.729641',0,NULL,3),(10,'2022-01-15 02:00:25.156728',0,NULL,4),(11,'2022-01-15 02:02:05.820052',0,NULL,5),(12,'2022-01-15 02:26:57.843504',0,NULL,6);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
INSERT INTO `store_orderitem` VALUES (6,2,'2022-01-09 20:42:19.294000',1,3),(8,1,'2022-01-09 22:52:25.838000',1,2),(9,1,'2022-01-09 22:52:28.758000',1,1),(23,1,'2022-01-10 01:32:58.025000',2,3),(24,1,'2022-01-10 01:32:59.982000',2,2),(25,1,'2022-01-10 01:33:47.873000',3,3),(26,1,'2022-01-10 01:33:49.227000',3,2),(32,1,'2022-01-10 02:17:52.928000',4,2),(33,1,'2022-01-10 02:17:54.489000',4,3),(34,1,'2022-01-10 02:18:31.916000',5,3),(37,1,'2022-01-10 13:07:04.893000',6,2),(50,1,'2022-01-15 03:25:24.953595',12,3);
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (1,'Banana',240,0,'bananas.jpg'),(2,'Naranja',85,0,'naranjas.jpg'),(3,'Pera',169,0,'peras.jpg'),(4,'Arßndano',750,0,'arandanos.jpg'),(5,'Palta',300,0,'paltas.jpg'),(6,'Mandarina',100,0,'mandarinas.jpg');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_profile`
--

DROP TABLE IF EXISTS `store_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_profile_user_id_d67604a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_profile`
--

LOCK TABLES `store_profile` WRITE;
/*!40000 ALTER TABLE `store_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_relationship`
--

DROP TABLE IF EXISTS `store_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_relationship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_relat_from_us_2847b1_idx` (`from_user_id`,`to_user_id`),
  KEY `store_relationship_to_user_id_fb89cb5b_fk_auth_user_id` (`to_user_id`),
  CONSTRAINT `store_relationship_from_user_id_b5327fa5_fk_auth_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `store_relationship_to_user_id_fb89cb5b_fk_auth_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_relationship`
--

LOCK TABLES `store_relationship` WRITE;
/*!40000 ALTER TABLE `store_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_shippingaddress`
--

DROP TABLE IF EXISTS `store_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_shippingaddress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` (`customer_id`),
  KEY `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` (`order_id`),
  CONSTRAINT `store_shippingaddress_customer_id_66e362a6_fk_store_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  CONSTRAINT `store_shippingaddress_order_id_e6decfbb_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_shippingaddress`
--

LOCK TABLES `store_shippingaddress` WRITE;
/*!40000 ALTER TABLE `store_shippingaddress` DISABLE KEYS */;
INSERT INTO `store_shippingaddress` VALUES (1,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 01:09:27.987000',1,1),(2,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 01:33:18.198000',1,2),(3,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 01:34:12.283000',1,3),(4,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 02:18:05.065000',1,4),(5,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 12:52:18.150000',1,5),(6,'Burela 2875','Ciudad Aut≤noma de Buenos Aires','Ciudad Aut≤noma de Buenos Aires','C1431','2022-01-10 13:07:45.342000',1,6);
/*!40000 ALTER TABLE `store_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'e-commerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-15 16:46:04
