-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: demovibes
-- ------------------------------------------------------
-- Server version	5.5.55-0+deb8u1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add tagged item',10,'add_taggeditem'),(29,'Can change tagged item',10,'change_taggeditem'),(30,'Can delete tagged item',10,'delete_taggeditem'),(31,'Can add nonce',11,'add_nonce'),(32,'Can change nonce',11,'change_nonce'),(33,'Can delete nonce',11,'delete_nonce'),(34,'Can add association',12,'add_association'),(35,'Can change association',12,'change_association'),(36,'Can delete association',12,'delete_association'),(37,'Can add user association',13,'add_userassociation'),(38,'Can change user association',13,'change_userassociation'),(39,'Can delete user association',13,'delete_userassociation'),(40,'Can add group',14,'add_group'),(41,'Can change group',14,'change_group'),(42,'Can delete group',14,'delete_group'),(43,'Can add generic base link',15,'add_genericbaselink'),(44,'Can change generic base link',15,'change_genericbaselink'),(45,'Can delete generic base link',15,'delete_genericbaselink'),(46,'Can add generic link',16,'add_genericlink'),(47,'Can change generic link',16,'change_genericlink'),(48,'Can delete generic link',16,'delete_genericlink'),(49,'Can add group vote',17,'add_groupvote'),(50,'Can change group vote',17,'change_groupvote'),(51,'Can delete group vote',17,'delete_groupvote'),(52,'Can add theme',18,'add_theme'),(53,'Can change theme',18,'change_theme'),(54,'Can delete theme',18,'delete_theme'),(55,'Can add userprofile',19,'add_userprofile'),(56,'Can change userprofile',19,'change_userprofile'),(57,'Can delete userprofile',19,'delete_userprofile'),(58,'Can add label',20,'add_label'),(59,'Can change label',20,'change_label'),(60,'Can delete label',20,'delete_label'),(61,'Can add artist',21,'add_artist'),(62,'Can change artist',21,'change_artist'),(63,'Can delete artist',21,'delete_artist'),(64,'Can add artist vote',22,'add_artistvote'),(65,'Can change artist vote',22,'change_artistvote'),(66,'Can delete artist vote',22,'delete_artistvote'),(67,'Can add song type',23,'add_songtype'),(68,'Can change song type',23,'change_songtype'),(69,'Can delete song type',23,'delete_songtype'),(70,'Can add song platform',24,'add_songplatform'),(71,'Can change song platform',24,'change_songplatform'),(72,'Can delete song platform',24,'delete_songplatform'),(73,'Can add logo',25,'add_logo'),(74,'Can change logo',25,'change_logo'),(75,'Can delete logo',25,'delete_logo'),(76,'Can add screenshot',26,'add_screenshot'),(77,'Can change screenshot',26,'change_screenshot'),(78,'Can delete screenshot',26,'delete_screenshot'),(79,'Can add screenshot object link',27,'add_screenshotobjectlink'),(80,'Can change screenshot object link',27,'change_screenshotobjectlink'),(81,'Can delete screenshot object link',27,'delete_screenshotobjectlink'),(82,'Can add song meta data',28,'add_songmetadata'),(83,'Can change song meta data',28,'change_songmetadata'),(84,'Can delete song meta data',28,'delete_songmetadata'),(85,'Can add object log',29,'add_objectlog'),(86,'Can change object log',29,'change_objectlog'),(87,'Can delete object log',29,'delete_objectlog'),(88,'Can add song',30,'add_song'),(89,'Can change song',30,'change_song'),(90,'Can delete song',30,'delete_song'),(91,'Can add tag history',31,'add_taghistory'),(92,'Can change tag history',31,'change_taghistory'),(93,'Can delete tag history',31,'delete_taghistory'),(94,'Can add song vote',32,'add_songvote'),(95,'Can change song vote',32,'change_songvote'),(96,'Can delete song vote',32,'delete_songvote'),(97,'Can add compilation',33,'add_compilation'),(98,'Can change compilation',33,'change_compilation'),(99,'Can delete compilation',33,'delete_compilation'),(100,'Can create sessions',33,'make_session'),(101,'Can add compilation song list',34,'add_compilationsonglist'),(102,'Can change compilation song list',34,'change_compilationsonglist'),(103,'Can delete compilation song list',34,'delete_compilationsonglist'),(104,'Can add compilation vote',35,'add_compilationvote'),(105,'Can change compilation vote',35,'change_compilationvote'),(106,'Can delete compilation vote',35,'delete_compilationvote'),(107,'Can add song approvals',36,'add_songapprovals'),(108,'Can change song approvals',36,'change_songapprovals'),(109,'Can delete song approvals',36,'delete_songapprovals'),(110,'Can add song download',37,'add_songdownload'),(111,'Can change song download',37,'change_songdownload'),(112,'Can delete song download',37,'delete_songdownload'),(113,'Can add queue',38,'add_queue'),(114,'Can change queue',38,'change_queue'),(115,'Can delete queue',38,'delete_queue'),(116,'Can add song comment',39,'add_songcomment'),(117,'Can change song comment',39,'change_songcomment'),(118,'Can delete song comment',39,'delete_songcomment'),(119,'Can add favorite',40,'add_favorite'),(120,'Can change favorite',40,'change_favorite'),(121,'Can delete favorite',40,'delete_favorite'),(122,'Can add oneliner muted',41,'add_onelinermuted'),(123,'Can change oneliner muted',41,'change_onelinermuted'),(124,'Can delete oneliner muted',41,'delete_onelinermuted'),(125,'Can mute people in oneliner',41,'add_mute_oneliner'),(126,'Can add oneliner',42,'add_oneliner'),(127,'Can change oneliner',42,'change_oneliner'),(128,'Can delete oneliner',42,'delete_oneliner'),(129,'Muted from oneliner',42,'mute_oneliner'),(130,'Can add ajax event',43,'add_ajaxevent'),(131,'Can change ajax event',43,'change_ajaxevent'),(132,'Can delete ajax event',43,'delete_ajaxevent'),(133,'Can add news',44,'add_news'),(134,'Can change news',44,'change_news'),(135,'Can delete news',44,'delete_news'),(136,'Can add radio stream',45,'add_radiostream'),(137,'Can change radio stream',45,'change_radiostream'),(138,'Can delete radio stream',45,'delete_radiostream'),(139,'Can add private message',46,'add_privatemessage'),(140,'Can change private message',46,'change_privatemessage'),(141,'Can delete private message',46,'delete_privatemessage'),(142,'Can add upload ticket',47,'add_uploadticket'),(143,'Can change upload ticket',47,'change_uploadticket'),(144,'Can delete upload ticket',47,'delete_uploadticket'),(145,'Can add country list',48,'add_countrylist'),(146,'Can change country list',48,'change_countrylist'),(147,'Can delete country list',48,'delete_countrylist'),(148,'Can add Link Category',49,'add_linkcategory'),(149,'Can change Link Category',49,'change_linkcategory'),(150,'Can delete Link Category',49,'delete_linkcategory'),(151,'Can add link',50,'add_link'),(152,'Can change link',50,'change_link'),(153,'Can delete link',50,'delete_link'),(154,'Can add FAQ',51,'add_faq'),(155,'Can change FAQ',51,'change_faq'),(156,'Can delete FAQ',51,'delete_faq'),(157,'Can add song license',52,'add_songlicense'),(158,'Can change song license',52,'change_songlicense'),(159,'Can delete song license',52,'delete_songlicense'),(160,'Can add registration profile',53,'add_registrationprofile'),(161,'Can change registration profile',53,'change_registrationprofile'),(162,'Can delete registration profile',53,'delete_registrationprofile'),(163,'Can add Forum',54,'add_forum'),(164,'Can change Forum',54,'change_forum'),(165,'Can delete Forum',54,'delete_forum'),(166,'Can add Thread',55,'add_thread'),(167,'Can change Thread',55,'change_thread'),(168,'Can delete Thread',55,'delete_thread'),(169,'Can add Forum Post',56,'add_post'),(170,'Can change Forum Post',56,'change_post'),(171,'Can delete Forum Post',56,'delete_post'),(172,'Can add Subscription',57,'add_subscription'),(173,'Can change Subscription',57,'change_subscription'),(174,'Can delete Subscription',57,'delete_subscription'),(175,'Can add OpenID',58,'add_openid'),(176,'Can change OpenID',58,'change_openid'),(177,'Can delete OpenID',58,'delete_openid'),(178,'Can add trusted root',59,'add_trustedroot'),(179,'Can change trusted root',59,'change_trustedroot'),(180,'Can delete trusted root',59,'delete_trustedroot');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@localhost','pbkdf2_sha256$10000$m9iX6mod8vXt$pkQjIzWaSCtHTPGrCAh5XfehAe+W0WiCmMKx8aRTWsI=',1,1,1,'2017-05-23 12:40:26','2017-05-23 12:40:26'),(2,'djrandom','','','djrandom@localhost','pbkdf2_sha256$10000$RfvEyPYAEDjJ$7h8QbDi9t3x88xrPOzy85m2KnkYV6oiKiz3LrBauL/E=',1,1,1,'2017-05-23 19:17:26','2017-05-23 19:17:26');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-05-23 19:16:06',1,19,'1','admin',1,''),(2,'2017-05-23 19:16:15',1,19,'1','admin',2,'Changed country.'),(3,'2017-05-23 19:18:16',1,19,'2','djrandom',2,'Changed email_on_artist_add, email_on_artist_comment, email_on_group_add, email_on_pm, paginate_favorites, pm_accepted_upload, show_screenshots, show_youtube, use_tags and visible_to.'),(4,'2017-05-23 19:57:10',1,21,'1','Barry Leitch',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_authopenid_association`
--

DROP TABLE IF EXISTS `django_authopenid_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_authopenid_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` longtext NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` longtext NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_authopenid_association`
--

LOCK TABLES `django_authopenid_association` WRITE;
/*!40000 ALTER TABLE `django_authopenid_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_authopenid_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_authopenid_nonce`
--

DROP TABLE IF EXISTS `django_authopenid_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_authopenid_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_authopenid_nonce`
--

LOCK TABLES `django_authopenid_nonce` WRITE;
/*!40000 ALTER TABLE `django_authopenid_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_authopenid_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_authopenid_userassociation`
--

DROP TABLE IF EXISTS `django_authopenid_userassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_authopenid_userassociation` (
  `openid_url` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`openid_url`),
  KEY `django_authopenid_userassociation_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_163d208d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_authopenid_userassociation`
--

LOCK TABLES `django_authopenid_userassociation` WRITE;
/*!40000 ALTER TABLE `django_authopenid_userassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_authopenid_userassociation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'tag','tagging','tag'),(10,'tagged item','tagging','taggeditem'),(11,'nonce','django_authopenid','nonce'),(12,'association','django_authopenid','association'),(13,'user association','django_authopenid','userassociation'),(14,'group','webview','group'),(15,'generic base link','webview','genericbaselink'),(16,'generic link','webview','genericlink'),(17,'group vote','webview','groupvote'),(18,'theme','webview','theme'),(19,'userprofile','webview','userprofile'),(20,'label','webview','label'),(21,'artist','webview','artist'),(22,'artist vote','webview','artistvote'),(23,'song type','webview','songtype'),(24,'song platform','webview','songplatform'),(25,'logo','webview','logo'),(26,'screenshot','webview','screenshot'),(27,'screenshot object link','webview','screenshotobjectlink'),(28,'song meta data','webview','songmetadata'),(29,'object log','webview','objectlog'),(30,'song','webview','song'),(31,'tag history','webview','taghistory'),(32,'song vote','webview','songvote'),(33,'compilation','webview','compilation'),(34,'compilation song list','webview','compilationsonglist'),(35,'compilation vote','webview','compilationvote'),(36,'song approvals','webview','songapprovals'),(37,'song download','webview','songdownload'),(38,'queue','webview','queue'),(39,'song comment','webview','songcomment'),(40,'favorite','webview','favorite'),(41,'oneliner muted','webview','onelinermuted'),(42,'oneliner','webview','oneliner'),(43,'ajax event','webview','ajaxevent'),(44,'news','webview','news'),(45,'radio stream','webview','radiostream'),(46,'private message','webview','privatemessage'),(47,'upload ticket','webview','uploadticket'),(48,'country list','webview','countrylist'),(49,'Link Category','webview','linkcategory'),(50,'link','webview','link'),(51,'FAQ','webview','faq'),(52,'song license','webview','songlicense'),(53,'registration profile','registration','registrationprofile'),(54,'Forum','forum','forum'),(55,'Thread','forum','thread'),(56,'Forum Post','forum','post'),(57,'Subscription','forum','subscription'),(58,'OpenID','openid_provider','openid'),(59,'trusted root','openid_provider','trustedroot');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_forum`
--

DROP TABLE IF EXISTS `forum_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_forum` (
  `description` longtext NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `posts` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `threads` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_forum_63f17a16` (`parent_id`),
  KEY `forum_forum_a951d5d6` (`slug`),
  CONSTRAINT `parent_id_refs_id_f9260119` FOREIGN KEY (`parent_id`) REFERENCES `forum_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_forum`
--

LOCK TABLES `forum_forum` WRITE;
/*!40000 ALTER TABLE `forum_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_post` (
  `body` longtext NOT NULL,
  `edited` datetime DEFAULT NULL,
  `thread_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `forum_post_9a6ed576` (`thread_id`),
  KEY `forum_post_cc846901` (`author_id`),
  CONSTRAINT `author_id_refs_id_2b14eec2` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `thread_id_refs_id_ae639751` FOREIGN KEY (`thread_id`) REFERENCES `forum_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_subscription`
--

DROP TABLE IF EXISTS `forum_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_subscription_author_id_4f2a38ba32a18cb0_uniq` (`author_id`,`thread_id`),
  KEY `forum_subscription_9a6ed576` (`thread_id`),
  KEY `forum_subscription_cc846901` (`author_id`),
  CONSTRAINT `author_id_refs_id_857eb2e9` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `thread_id_refs_id_3f27b62a` FOREIGN KEY (`thread_id`) REFERENCES `forum_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_subscription`
--

LOCK TABLES `forum_subscription` WRITE;
/*!40000 ALTER TABLE `forum_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_thread`
--

DROP TABLE IF EXISTS `forum_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_thread` (
  `latest_post_time` datetime DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `views` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `sticky` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `forum_thread_b665e7a6` (`forum_id`),
  CONSTRAINT `forum_id_refs_id_2feab8bd` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_thread`
--

LOCK TABLES `forum_thread` WRITE;
/*!40000 ALTER TABLE `forum_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_provider_openid`
--

DROP TABLE IF EXISTS `openid_provider_openid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_provider_openid` (
  `default` tinyint(1) NOT NULL,
  `openid` varchar(200) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`),
  KEY `openid_provider_openid_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_4f9ec687` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_provider_openid`
--

LOCK TABLES `openid_provider_openid` WRITE;
/*!40000 ALTER TABLE `openid_provider_openid` DISABLE KEYS */;
INSERT INTO `openid_provider_openid` VALUES (0,'admin',1,1),(0,'djrandom',2,2);
/*!40000 ALTER TABLE `openid_provider_openid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_provider_trustedroot`
--

DROP TABLE IF EXISTS `openid_provider_trustedroot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openid_provider_trustedroot` (
  `openid_id` int(11) NOT NULL,
  `trust_root` varchar(200) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `openid_provider_trustedroot_bec7244b` (`openid_id`),
  CONSTRAINT `openid_id_refs_id_86cfe262` FOREIGN KEY (`openid_id`) REFERENCES `openid_provider_openid` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_provider_trustedroot`
--

LOCK TABLES `openid_provider_trustedroot` WRITE;
/*!40000 ALTER TABLE `openid_provider_trustedroot` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_provider_trustedroot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `activation_key` varchar(40) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_cecd7f3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'webview','0001_initial','2017-05-23 19:12:22'),(2,'webview','0002_extending_profile','2017-05-23 19:12:22'),(3,'webview','0003_profile_send_on_email','2017-05-23 19:12:22'),(4,'webview','0004_queue_eta','2017-05-23 19:12:22'),(5,'webview','0005_added_song_lockfield','2017-05-23 19:12:22'),(6,'webview','0006_set_locktime','2017-05-23 19:12:22'),(7,'webview','0007_add_song_num_favorited','2017-05-23 19:12:22'),(8,'webview','0008_populate_song_num_favorited','2017-05-23 19:12:22'),(9,'webview','0009_add_artist_user_link','2017-05-23 19:12:22'),(10,'webview','0010_song_approval_list','2017-05-23 19:12:22'),(11,'webview','0011_add_pm_on_accept','2017-05-23 19:12:22'),(12,'webview','0012_extend_profile','2017-05-23 19:12:22'),(13,'webview','0013_country_list','2017-05-23 19:12:22'),(14,'webview','0014_pm_visibility_field','2017-05-23 19:12:22'),(15,'webview','0015_theme_fields','2017-05-23 19:12:23'),(16,'webview','0016_compilation_db_artist_voting','2017-05-23 19:12:23'),(17,'webview','0017_compilation_db_tweaks','2017-05-23 19:12:23'),(18,'webview','0018_more_compilation_tweaks','2017-05-23 19:12:23'),(19,'webview','0019_more_compilation_db_changes','2017-05-23 19:12:23'),(20,'webview','0020_forum_updates_db_changes','2017-05-23 19:12:23'),(21,'webview','0021_various_approval_states','2017-05-23 19:12:23'),(22,'webview','0022_artist_image','2017-05-23 19:12:23'),(23,'webview','0023_tweaks_to_creation_models','2017-05-23 19:12:23'),(24,'webview','0024_more_db_tweaks','2017-05-23 19:12:24'),(25,'webview','0025_remix_id_last_fm_id','2017-05-23 19:12:24'),(26,'webview','0026_more_indexes','2017-05-23 19:12:24'),(27,'webview','0026_new_database_features','2017-05-23 19:12:24'),(28,'webview','0027_tweaked_some_db_entries','2017-05-23 19:12:24'),(29,'webview','0028_rearranged_model_positions','2017-05-23 19:12:24'),(30,'webview','0029_more_data_field_tweaks_additions','2017-05-23 19:12:25'),(31,'webview','0030_added_wos_support','2017-05-23 19:12:25'),(32,'webview','0031_changed_wos_to_char','2017-05-23 19:12:25'),(33,'webview','0032_added_hol_db_support','2017-05-23 19:12:25'),(34,'webview','0033_try_index_to_queue_played','2017-05-23 19:12:25'),(35,'webview','0034_added_deceased_artist_support','2017-05-23 19:12:25'),(36,'webview','0035_correction_to_song_reldate','2017-05-23 19:12:25'),(37,'webview','0036_add_image_fields_for_platform','2017-05-23 19:12:25'),(38,'webview','0037_added_twitter_and_stuff','2017-05-23 19:12:25'),(39,'webview','0038_added_text_link_database','2017-05-23 19:12:26'),(40,'webview','0039_add_last_changed','2017-05-23 19:12:26'),(41,'webview','0040_multiple_db_changes_tweaks','2017-05-23 19:12:26'),(42,'webview','0041_multiple_db_changes_additions','2017-05-23 19:12:26'),(43,'webview','0042_add_replay_stuff','2017-05-23 19:12:26'),(44,'webview','0043_add_stream_owner','2017-05-23 19:12:27'),(45,'webview','0044_add_tag_history','2017-05-23 19:12:27'),(46,'webview','0045_add_profile_last_changed','2017-05-23 19:12:28'),(47,'webview','0046_change_compilation_title_length','2017-05-23 19:12:28'),(48,'webview','0047_auto__chg_field_compilation_name','2017-05-23 19:12:28'),(49,'webview','0048_auto','2017-05-23 19:12:28'),(50,'webview','0049_auto','2017-05-23 19:12:28'),(51,'webview','0050_auto__add_field_song_pouetlink__add_field_song_pouetss__add_field_song','2017-05-23 19:12:28'),(52,'webview','0051_auto__chg_field_song_file','2017-05-23 19:12:28'),(53,'webview','0052_auto__add_genericbaselink__add_genericlink','2017-05-23 19:12:29'),(54,'webview','0053_auto','2017-05-23 19:12:29'),(55,'webview','0054_increased_length_of_generic_linkfield','2017-05-23 19:12:29'),(56,'webview','0055_auto__add_field_song_ytvidid__add_field_song_ytvidoffset','2017-05-23 19:12:29'),(57,'webview','0056_auto__add_field_userprofile_show_youtube','2017-05-23 19:12:29'),(58,'webview','0057_auto__add_field_songcomment_staff_comment__add_field_songdownload_stat','2017-05-23 19:12:29'),(59,'webview','0058_auto__add_songmetadata__chg_field_songcomment_staff_comment__chg_field','2017-05-23 19:12:30'),(60,'webview','0059_move_metadata','2017-05-23 19:12:30'),(61,'webview','0060_auto__add_field_songmetadata_comment','2017-05-23 19:12:30'),(62,'webview','0061_auto__add_field_genericlink_comment','2017-05-23 19:12:30'),(63,'webview','0062_auto__add_field_genericlink_user','2017-05-23 19:12:30'),(64,'webview','0063_auto__add_field_songmetadata_ytvidid__add_field_songmetadata_ytvidoffs','2017-05-23 19:12:31'),(65,'webview','0064_move_metadata2','2017-05-23 19:12:31'),(66,'webview','0065_auto','2017-05-23 19:12:31'),(67,'webview','0066_auto__add_compilationsonglist__add_field_queue_description','2017-05-23 19:12:31'),(68,'webview','0067_move_compilationdata','2017-05-23 19:12:31'),(69,'webview','0068_auto__del_field_compilationsonglist_num__add_field_compilationsonglist','2017-05-23 19:12:31'),(70,'webview','0069_auto__chg_field_song_pouetlink','2017-05-23 19:12:32'),(71,'webview','0070_chg_field_song_pouetlink','2017-05-23 19:12:32'),(72,'webview','0071_auto__add_songlicense__add_field_song_license','2017-05-23 19:12:32'),(73,'webview','0072_auto__add_objectlog','2017-05-23 19:12:32'),(74,'webview','0073_improved_screenshot_abilities','2017-05-23 19:12:32'),(75,'webview','0074_add_screenshot_control_option','2017-05-23 19:12:32'),(76,'webview','0075_auto__del_field_song_wos_id__del_field_song_ytvidid__del_field_song_cv','2017-05-23 19:12:33'),(77,'webview','0076_auto__chg_field_screenshot_name','2017-05-23 19:12:33'),(78,'webview','0077_auto__add_screenshotobjectlink__chg_field_screenshot_name','2017-05-23 19:12:33'),(79,'webview','0078_move_genericlink','2017-05-23 19:12:33'),(80,'webview','0079_auto__del_field_screenshot_object_id__del_field_screenshot_content_typ','2017-05-23 19:12:33'),(81,'webview','0080_auto__add_unique_screenshotobjectlink_image_object_id_content_type','2017-05-23 19:12:34'),(82,'webview','0081_auto__add_field_song_playback_fadeout__add_field_song_playback_bass_mo','2017-05-23 19:12:34'),(83,'webview','0082_change_compilation_screen_format','2017-05-23 19:12:34'),(84,'webview','0083_auto__add_field_objectlog_extra','2017-05-23 19:12:34'),(85,'webview','0084_auto__chg_field_ajaxevent_event','2017-05-23 19:12:34'),(86,'webview','0085_auto__add_field_theme_default','2017-05-23 19:12:35'),(87,'webview','0086_auto__del_field_theme_preview__add_field_theme_active__add_field_theme','2017-05-23 19:12:35'),(88,'webview','0087_auto__add_field_logo_legacy','2017-05-23 19:12:35'),(89,'webview','0087_auto__add_field_song_playback_bass_mix','2017-05-23 19:12:35'),(90,'webview','0088_auto__chg_field_song_playback_bass_ramp__chg_field_song_playback_bass_','2017-05-23 19:12:35'),(91,'webview','0089_auto__add_onelinermuted','2017-05-23 19:12:35'),(92,'webview','0090_auto__add_field_userprofile_last_ip__chg_field_onelinermuted_reason','2017-05-23 19:12:36'),(93,'webview','0091_auto__add_field_onelinermuted_ip_ban','2017-05-23 19:12:36'),(94,'webview','0092_auto__add_field_artist_scene_relevance','2017-05-23 19:12:36'),(95,'webview','0093_auto__add_field_onelinermuted_hits','2017-05-23 19:12:36'),(96,'webview','0094_auto__add_field_userprofile_hellbanned','2017-05-23 19:12:36'),(97,'registration','0001_initial','2017-05-23 19:12:37'),(98,'forum','0001_initial','2017-05-23 19:12:38'),(99,'forum','0002_added_private_forum_support','2017-05-23 19:12:38'),(100,'forum','0003_is_private_default','2017-05-23 19:12:38'),(101,'forum','0004_set_last_changed','2017-05-23 19:12:38'),(102,'django_extensions','0001_empty','2017-05-23 19:12:39'),(103,'openid_provider','0001_initial','2017-05-23 19:12:39'),(104,'openid_provider','0002_add_id_for_users','2017-05-23 19:12:39');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tag`
--

DROP TABLE IF EXISTS `tagging_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_taggeditem`
--

DROP TABLE IF EXISTS `tagging_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_e4470c6e` (`content_type_id`),
  KEY `tagging_taggeditem_829e37fd` (`object_id`),
  CONSTRAINT `content_type_id_refs_id_f1f84eed` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tag_id_refs_id_9f51000d` FOREIGN KEY (`tag_id`) REFERENCES `tagging_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_taggeditem`
--

LOCK TABLES `tagging_taggeditem` WRITE;
/*!40000 ALTER TABLE `tagging_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_ajaxevent`
--

DROP TABLE IF EXISTS `webview_ajaxevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_ajaxevent` (
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_ajaxevent_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_1e7fd7c3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_ajaxevent`
--

LOCK TABLES `webview_ajaxevent` WRITE;
/*!40000 ALTER TABLE `webview_ajaxevent` DISABLE KEYS */;
INSERT INTO `webview_ajaxevent` VALUES (1,1,'msg:{\"category\": 0, \"message\": \"Bootup has been queued. It is expected to play at <span class=\'tzinfo\'>19:57</span>.\"}'),(NULL,2,'a_queue_1'),(NULL,3,'queue');
/*!40000 ALTER TABLE `webview_ajaxevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_artist`
--

DROP TABLE IF EXISTS `webview_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_artist` (
  `info` longtext NOT NULL,
  `startswith` varchar(1) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `webpage` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `alias_of_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_to_user_id` int(11) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `artist_pic` varchar(100) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `last_fm_id` varchar(32) NOT NULL,
  `home_location` varchar(40) NOT NULL,
  `home_country` varchar(10) NOT NULL,
  `wiki_link` varchar(200) NOT NULL,
  `hol_id` int(11) DEFAULT NULL,
  `is_deceased` tinyint(1) NOT NULL,
  `deceased_date` date DEFAULT NULL,
  `twitter_id` varchar(32) NOT NULL,
  `scene_relevance` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`),
  UNIQUE KEY `link_to_user_id` (`link_to_user_id`),
  KEY `webview_artist_df90be6` (`startswith`),
  KEY `webview_artist_e521700` (`alias_of_id`),
  KEY `webview_artist_b5de30be` (`created_by_id`),
  KEY `webview_artist_c9ad71dd` (`status`),
  CONSTRAINT `alias_of_id_refs_id_585836d` FOREIGN KEY (`alias_of_id`) REFERENCES `webview_artist` (`id`),
  CONSTRAINT `created_by_id_refs_id_66b30201` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `link_to_user_id_refs_id_66b30201` FOREIGN KEY (`link_to_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_artist`
--

LOCK TABLES `webview_artist` WRITE;
/*!40000 ALTER TABLE `webview_artist` DISABLE KEYS */;
INSERT INTO `webview_artist` VALUES ('','b','Barry Leitch','','',NULL,NULL,1,NULL,'A','',NULL,'2017-05-23 19:57:10','','','','',NULL,0,NULL,'','');
/*!40000 ALTER TABLE `webview_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_artist_groups`
--

DROP TABLE IF EXISTS `webview_artist_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_artist_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_artist_groups_e995513f` (`artist_id`),
  KEY `webview_artist_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_c467b216` FOREIGN KEY (`group_id`) REFERENCES `webview_group` (`id`),
  CONSTRAINT `artist_id_refs_id_4e48f90f` FOREIGN KEY (`artist_id`) REFERENCES `webview_artist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_artist_groups`
--

LOCK TABLES `webview_artist_groups` WRITE;
/*!40000 ALTER TABLE `webview_artist_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_artist_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_artist_labels`
--

DROP TABLE IF EXISTS `webview_artist_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_artist_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_artist_labels_e995513f` (`artist_id`),
  KEY `webview_artist_labels_63868627` (`label_id`),
  CONSTRAINT `label_id_refs_id_cc1c9f62` FOREIGN KEY (`label_id`) REFERENCES `webview_label` (`id`),
  CONSTRAINT `artist_id_refs_id_c59d849a` FOREIGN KEY (`artist_id`) REFERENCES `webview_artist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_artist_labels`
--

LOCK TABLES `webview_artist_labels` WRITE;
/*!40000 ALTER TABLE `webview_artist_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_artist_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_artistvote`
--

DROP TABLE IF EXISTS `webview_artistvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_artistvote` (
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `comment` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_artistvote_fbfc09f1` (`user_id`),
  KEY `webview_artistvote_e995513f` (`artist_id`),
  CONSTRAINT `artist_id_refs_id_fc51ba09` FOREIGN KEY (`artist_id`) REFERENCES `webview_artist` (`id`),
  CONSTRAINT `user_id_refs_id_b1b95b03` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_artistvote`
--

LOCK TABLES `webview_artistvote` WRITE;
/*!40000 ALTER TABLE `webview_artistvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_artistvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_compilation`
--

DROP TABLE IF EXISTS `webview_compilation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_compilation` (
  `info` longtext NOT NULL,
  `purchase_page` varchar(200) NOT NULL,
  `cover_art` varchar(100) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `startswith` varchar(1) NOT NULL,
  `label` varchar(30) NOT NULL,
  `rel_date` date DEFAULT NULL,
  `details_page` varchar(200) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_discs` int(11) DEFAULT NULL,
  `running_time` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `media_format` varchar(30) NOT NULL,
  `pouet` int(11) DEFAULT NULL,
  `bar_code` varchar(30) NOT NULL,
  `youtube_link` varchar(200) NOT NULL,
  `prod_notes` longtext NOT NULL,
  `download_link` varchar(200) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `wiki_link` varchar(200) NOT NULL,
  `zxdemo_id` int(11) DEFAULT NULL,
  `projecttwosix_id` int(11) DEFAULT NULL,
  `hol_id` int(11) DEFAULT NULL,
  `comp_icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `webview_compilation_df90be6` (`startswith`),
  KEY `webview_compilation_b5de30be` (`created_by_id`),
  CONSTRAINT `created_by_id_refs_id_b0a8e61e` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_compilation`
--

LOCK TABLES `webview_compilation` WRITE;
/*!40000 ALTER TABLE `webview_compilation` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_compilation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_compilation_prod_artists`
--

DROP TABLE IF EXISTS `webview_compilation_prod_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_compilation_prod_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compilation_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_compilation_prod_artists_e8316056` (`compilation_id`),
  KEY `webview_compilation_prod_artists_e995513f` (`artist_id`),
  CONSTRAINT `artist_id_refs_id_72171034` FOREIGN KEY (`artist_id`) REFERENCES `webview_artist` (`id`),
  CONSTRAINT `compilation_id_refs_id_48c366bb` FOREIGN KEY (`compilation_id`) REFERENCES `webview_compilation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_compilation_prod_artists`
--

LOCK TABLES `webview_compilation_prod_artists` WRITE;
/*!40000 ALTER TABLE `webview_compilation_prod_artists` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_compilation_prod_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_compilation_prod_groups`
--

DROP TABLE IF EXISTS `webview_compilation_prod_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_compilation_prod_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compilation_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_compilation_prod_groups_e8316056` (`compilation_id`),
  KEY `webview_compilation_prod_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_8eadc436` FOREIGN KEY (`group_id`) REFERENCES `webview_group` (`id`),
  CONSTRAINT `compilation_id_refs_id_3745f780` FOREIGN KEY (`compilation_id`) REFERENCES `webview_compilation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_compilation_prod_groups`
--

LOCK TABLES `webview_compilation_prod_groups` WRITE;
/*!40000 ALTER TABLE `webview_compilation_prod_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_compilation_prod_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_compilationsonglist`
--

DROP TABLE IF EXISTS `webview_compilationsonglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_compilationsonglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  `compilation_id` int(11) NOT NULL,
  `index` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_compilationsonglist_c170b8c9` (`song_id`),
  KEY `webview_compilationsonglist_e8316056` (`compilation_id`),
  CONSTRAINT `compilation_id_refs_id_f5dadb08` FOREIGN KEY (`compilation_id`) REFERENCES `webview_compilation` (`id`),
  CONSTRAINT `song_id_refs_id_2bb6f5c7` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_compilationsonglist`
--

LOCK TABLES `webview_compilationsonglist` WRITE;
/*!40000 ALTER TABLE `webview_compilationsonglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_compilationsonglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_compilationvote`
--

DROP TABLE IF EXISTS `webview_compilationvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_compilationvote` (
  `vote` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_compilationvote_1221027d` (`comp_id`),
  KEY `webview_compilationvote_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_f9233f9e` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comp_id_refs_id_5603bc35` FOREIGN KEY (`comp_id`) REFERENCES `webview_compilation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_compilationvote`
--

LOCK TABLES `webview_compilationvote` WRITE;
/*!40000 ALTER TABLE `webview_compilationvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_compilationvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_countrylist`
--

DROP TABLE IF EXISTS `webview_countrylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_countrylist` (
  `flag` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_countrylist`
--

LOCK TABLES `webview_countrylist` WRITE;
/*!40000 ALTER TABLE `webview_countrylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_countrylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_faq`
--

DROP TABLE IF EXISTS `webview_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_faq` (
  `added` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `question` varchar(500) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `answer` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `added_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_faq_5d61ed14` (`added`),
  KEY `webview_faq_34d728db` (`active`),
  KEY `webview_faq_8d09cb1e` (`added_by_id`),
  CONSTRAINT `added_by_id_refs_id_fdaaa29b` FOREIGN KEY (`added_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_faq`
--

LOCK TABLES `webview_faq` WRITE;
/*!40000 ALTER TABLE `webview_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_favorite`
--

DROP TABLE IF EXISTS `webview_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_favorite` (
  `comment` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webview_favorite_user_id_1d987cef54a90660_uniq` (`user_id`,`song_id`),
  KEY `webview_favorite_fbfc09f1` (`user_id`),
  KEY `webview_favorite_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_161123da` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `user_id_refs_id_21788904` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_favorite`
--

LOCK TABLES `webview_favorite` WRITE;
/*!40000 ALTER TABLE `webview_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_genericbaselink`
--

DROP TABLE IF EXISTS `webview_genericbaselink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_genericbaselink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `link` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `inputinfo` longtext NOT NULL,
  `regex` longtext NOT NULL,
  `linktype` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_genericbaselink`
--

LOCK TABLES `webview_genericbaselink` WRITE;
/*!40000 ALTER TABLE `webview_genericbaselink` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_genericbaselink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_genericlink`
--

DROP TABLE IF EXISTS `webview_genericlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_genericlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `link_id` int(11) NOT NULL,
  `value` varchar(80) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_genericlink_e4470c6e` (`content_type_id`),
  KEY `webview_genericlink_f44c31a0` (`link_id`),
  KEY `webview_genericlink_829e37fd` (`object_id`),
  KEY `webview_genericlink_fbfc09f1` (`user_id`),
  KEY `webview_genericlink_c9ad71dd` (`status`),
  CONSTRAINT `user_id_refs_id_59d85b08` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `content_type_id_refs_id_7a78db8c` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `link_id_refs_id_9c2e03f6` FOREIGN KEY (`link_id`) REFERENCES `webview_genericbaselink` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_genericlink`
--

LOCK TABLES `webview_genericlink` WRITE;
/*!40000 ALTER TABLE `webview_genericlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_genericlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_group`
--

DROP TABLE IF EXISTS `webview_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_group` (
  `info` longtext NOT NULL,
  `startswith` varchar(1) NOT NULL,
  `pouetid` int(11) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `webpage` varchar(200) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_logo` varchar(100) DEFAULT NULL,
  `found_date` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `wiki_link` varchar(200) NOT NULL,
  `group_icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `webview_group_df90be6` (`startswith`),
  KEY `webview_group_b5de30be` (`created_by_id`),
  KEY `webview_group_c9ad71dd` (`status`),
  CONSTRAINT `created_by_id_refs_id_6a239e0c` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_group`
--

LOCK TABLES `webview_group` WRITE;
/*!40000 ALTER TABLE `webview_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_groupvote`
--

DROP TABLE IF EXISTS `webview_groupvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_groupvote` (
  `vote` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `group_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_groupvote_bda51c3c` (`group_id`),
  KEY `webview_groupvote_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_2d4f4e8` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_a6d9887` FOREIGN KEY (`group_id`) REFERENCES `webview_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_groupvote`
--

LOCK TABLES `webview_groupvote` WRITE;
/*!40000 ALTER TABLE `webview_groupvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_groupvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_label`
--

DROP TABLE IF EXISTS `webview_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_label` (
  `info` longtext NOT NULL,
  `startswith` varchar(1) NOT NULL,
  `pouetid` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `wiki_link` varchar(200) NOT NULL,
  `webpage` varchar(200) NOT NULL,
  `cease_date` date DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `found_date` date DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hol_id` int(11) DEFAULT NULL,
  `label_icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `webview_label_df90be6` (`startswith`),
  KEY `webview_label_b5de30be` (`created_by_id`),
  KEY `webview_label_c9ad71dd` (`status`),
  CONSTRAINT `created_by_id_refs_id_9ef1b119` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_label`
--

LOCK TABLES `webview_label` WRITE;
/*!40000 ALTER TABLE `webview_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_link`
--

DROP TABLE IF EXISTS `webview_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_link` (
  `status` varchar(1) NOT NULL,
  `link_title` varchar(60) DEFAULT NULL,
  `added` datetime NOT NULL,
  `name` varchar(40) NOT NULL,
  `submitted_by_id` int(11) DEFAULT NULL,
  `link_url` varchar(200) NOT NULL,
  `link_image` varchar(100) DEFAULT NULL,
  `url_cat_id` int(11) NOT NULL,
  `priority` tinyint(1) NOT NULL,
  `approved_by_id` int(11) DEFAULT NULL,
  `notes` longtext,
  `keywords` varchar(60) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_type` varchar(1) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `link_url` (`link_url`),
  KEY `webview_link_5d61ed14` (`added`),
  KEY `webview_link_c3edbe75` (`submitted_by_id`),
  KEY `webview_link_64a1ba53` (`url_cat_id`),
  KEY `webview_link_acbe192d` (`priority`),
  KEY `webview_link_aa1eebb8` (`approved_by_id`),
  CONSTRAINT `approved_by_id_refs_id_7576119c` FOREIGN KEY (`approved_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `submitted_by_id_refs_id_7576119c` FOREIGN KEY (`submitted_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `url_cat_id_refs_id_24d57315` FOREIGN KEY (`url_cat_id`) REFERENCES `webview_linkcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_link`
--

LOCK TABLES `webview_link` WRITE;
/*!40000 ALTER TABLE `webview_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_linkcategory`
--

DROP TABLE IF EXISTS `webview_linkcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_linkcategory` (
  `description` longtext NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `id_slug` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_linkcategory_74678931` (`id_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_linkcategory`
--

LOCK TABLES `webview_linkcategory` WRITE;
/*!40000 ALTER TABLE `webview_linkcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_linkcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_logo`
--

DROP TABLE IF EXISTS `webview_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_logo` (
  `active` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `creator` varchar(60) NOT NULL,
  `legacy` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_logo`
--

LOCK TABLES `webview_logo` WRITE;
/*!40000 ALTER TABLE `webview_logo` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_news`
--

DROP TABLE IF EXISTS `webview_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_news` (
  `status` varchar(1) NOT NULL,
  `added` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(200) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_news`
--

LOCK TABLES `webview_news` WRITE;
/*!40000 ALTER TABLE `webview_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_objectlog`
--

DROP TABLE IF EXISTS `webview_objectlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_objectlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `text` longtext NOT NULL,
  `extra` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_objectlog_e4470c6e` (`content_type_id`),
  KEY `webview_objectlog_fbfc09f1` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_587f6188` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_3243dc7c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_objectlog`
--

LOCK TABLES `webview_objectlog` WRITE;
/*!40000 ALTER TABLE `webview_objectlog` DISABLE KEYS */;
INSERT INTO `webview_objectlog` VALUES (1,30,1,1,'2017-05-23 19:57:43','Approved song','');
/*!40000 ALTER TABLE `webview_objectlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_oneliner`
--

DROP TABLE IF EXISTS `webview_oneliner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_oneliner` (
  `message` varchar(256) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_oneliner_fbfc09f1` (`user_id`),
  KEY `webview_oneliner_5d61ed14` (`added`),
  CONSTRAINT `user_id_refs_id_55dd0cf4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_oneliner`
--

LOCK TABLES `webview_oneliner` WRITE;
/*!40000 ALTER TABLE `webview_oneliner` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_oneliner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_onelinermuted`
--

DROP TABLE IF EXISTS `webview_onelinermuted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_onelinermuted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `added_by_id` int(11) NOT NULL,
  `details` longtext NOT NULL,
  `muted_to` datetime NOT NULL,
  `ip_ban` char(15) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_onelinermuted_fbfc09f1` (`user_id`),
  KEY `webview_onelinermuted_8d09cb1e` (`added_by_id`),
  KEY `webview_onelinermuted_93730a44` (`muted_to`),
  CONSTRAINT `added_by_id_refs_id_22aa0c64` FOREIGN KEY (`added_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `user_id_refs_id_22aa0c64` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_onelinermuted`
--

LOCK TABLES `webview_onelinermuted` WRITE;
/*!40000 ALTER TABLE `webview_onelinermuted` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_onelinermuted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_privatemessage`
--

DROP TABLE IF EXISTS `webview_privatemessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_privatemessage` (
  `sender_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `message` longtext NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` datetime NOT NULL,
  `subject` varchar(60) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_privatemessage_901f59e9` (`sender_id`),
  KEY `webview_privatemessage_80e39a0d` (`to_id`),
  KEY `webview_privatemessage_2710e4f4` (`reply_to_id`),
  CONSTRAINT `reply_to_id_refs_id_429f2a53` FOREIGN KEY (`reply_to_id`) REFERENCES `webview_privatemessage` (`id`),
  CONSTRAINT `sender_id_refs_id_f4917bf0` FOREIGN KEY (`sender_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `to_id_refs_id_f4917bf0` FOREIGN KEY (`to_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_privatemessage`
--

LOCK TABLES `webview_privatemessage` WRITE;
/*!40000 ALTER TABLE `webview_privatemessage` DISABLE KEYS */;
INSERT INTO `webview_privatemessage` VALUES (1,1,NULL,'This is an automated message from the example.com Approval System.\n\nThis message is to inform you that your recent upload ([song]1[/song]) has been Accepted on the site. The direct link to the song is: http://example.com/demovibes/song/1/\n\nIf you have any additional questions, please contact an administrator/moderator. Thank-you.\n',1,1,'2017-05-23 19:57:43','Song Upload Status Changed To: Accepted',1);
/*!40000 ALTER TABLE `webview_privatemessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_queue`
--

DROP TABLE IF EXISTS `webview_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_queue` (
  `requested` datetime NOT NULL,
  `played` tinyint(1) NOT NULL,
  `song_id` int(11) NOT NULL,
  `requested_by_id` int(11) NOT NULL,
  `time_played` datetime DEFAULT NULL,
  `playtime` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` tinyint(1) NOT NULL,
  `eta` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_queue_dc16359a` (`requested`),
  KEY `webview_queue_c170b8c9` (`song_id`),
  KEY `webview_queue_87861524` (`requested_by_id`),
  KEY `webview_queue_98066801` (`time_played`),
  KEY `webview_queue_7e9257a2` (`playtime`),
  KEY `webview_queue_acbe192d` (`priority`),
  CONSTRAINT `requested_by_id_refs_id_773451a8` FOREIGN KEY (`requested_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `song_id_refs_id_16b92c92` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_queue`
--

LOCK TABLES `webview_queue` WRITE;
/*!40000 ALTER TABLE `webview_queue` DISABLE KEYS */;
INSERT INTO `webview_queue` VALUES ('2017-05-23 19:57:53',0,1,1,NULL,NULL,1,0,'2017-05-23 19:57:53','');
/*!40000 ALTER TABLE `webview_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_radiostream`
--

DROP TABLE IF EXISTS `webview_radiostream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_radiostream` (
  `description` longtext NOT NULL,
  `url` varchar(120) NOT NULL,
  `streamtype` varchar(1) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_radiostream_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_1af90e96` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_radiostream`
--

LOCK TABLES `webview_radiostream` WRITE;
/*!40000 ALTER TABLE `webview_radiostream` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_radiostream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_screenshot`
--

DROP TABLE IF EXISTS `webview_screenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_screenshot` (
  `startswith` varchar(1) NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `added_by_id` int(11) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `webview_screenshot_df90be6` (`startswith`),
  KEY `webview_screenshot_8d09cb1e` (`added_by_id`),
  KEY `webview_screenshot_c9ad71dd` (`status`),
  KEY `webview_screenshot_f0bd6439` (`type`),
  CONSTRAINT `added_by_id_refs_id_59b08dbe` FOREIGN KEY (`added_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_screenshot`
--

LOCK TABLES `webview_screenshot` WRITE;
/*!40000 ALTER TABLE `webview_screenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_screenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_screenshotobjectlink`
--

DROP TABLE IF EXISTS `webview_screenshotobjectlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_screenshotobjectlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `image_id` int(11) NOT NULL,
  `is_main` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webview_screenshotobjectlink_image_id_7c69e50ed4e4f70c_uniq` (`image_id`,`object_id`,`content_type_id`),
  KEY `webview_screenshotobjectlink_e4470c6e` (`content_type_id`),
  KEY `webview_screenshotobjectlink_6682136` (`image_id`),
  CONSTRAINT `content_type_id_refs_id_8a8ec617` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `image_id_refs_id_7f14b8dc` FOREIGN KEY (`image_id`) REFERENCES `webview_screenshot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_screenshotobjectlink`
--

LOCK TABLES `webview_screenshotobjectlink` WRITE;
/*!40000 ALTER TABLE `webview_screenshotobjectlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_screenshotobjectlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_song`
--

DROP TABLE IF EXISTS `webview_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_song` (
  `startswith` varchar(1) NOT NULL,
  `rating` double DEFAULT NULL,
  `uploader_id` int(11) DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `rating_total` int(11) NOT NULL,
  `times_played` int(11) DEFAULT NULL,
  `rating_votes` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `bitrate` int(11) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `song_length` int(11) DEFAULT NULL,
  `samplerate` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locked_until` datetime DEFAULT NULL,
  `num_favorited` int(11) NOT NULL,
  `last_changed` datetime NOT NULL,
  `explicit` tinyint(1) NOT NULL,
  `loopfade_time` int(10) unsigned NOT NULL,
  `replay_gain` double NOT NULL,
  `pouetlink` varchar(200) NOT NULL,
  `pouetss` varchar(100) NOT NULL,
  `pouetgroup` varchar(100) NOT NULL,
  `pouettitle` varchar(100) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `playback_fadeout` tinyint(1) NOT NULL,
  `playback_bass_mode` varchar(4) NOT NULL,
  `playback_bass_inter` varchar(6) NOT NULL,
  `playback_bass_ramp` varchar(10) NOT NULL,
  `playback_bass_mix` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_song_df90be6` (`startswith`),
  KEY `webview_song_f8d6856` (`uploader_id`),
  KEY `webview_song_841a7e28` (`title`),
  KEY `webview_song_139668fe` (`license_id`),
  KEY `webview_song_c9ad71dd` (`status`),
  CONSTRAINT `license_id_refs_id_73c9c49` FOREIGN KEY (`license_id`) REFERENCES `webview_songlicense` (`id`),
  CONSTRAINT `uploader_id_refs_id_61afd64f` FOREIGN KEY (`uploader_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_song`
--

LOCK TABLES `webview_song` WRITE;
/*!40000 ALTER TABLE `webview_song` DISABLE KEYS */;
INSERT INTO `webview_song` VALUES ('b',NULL,1,'Bootup',0,0,0,'2017-05-23 19:57:34','A',0,'media/music/b/o/bootup_4KaKBty.mod',168,44100,1,'2017-05-23 19:57:53',0,'2017-05-23 19:57:53',0,0,-9.159996,'','','','',NULL,1,'','','','');
/*!40000 ALTER TABLE `webview_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songapprovals`
--

DROP TABLE IF EXISTS `webview_songapprovals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songapprovals` (
  `approved` datetime NOT NULL,
  `uploaded_by_id` int(11) NOT NULL,
  `approved_by_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_songapprovals_e43a31e7` (`uploaded_by_id`),
  KEY `webview_songapprovals_aa1eebb8` (`approved_by_id`),
  KEY `webview_songapprovals_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_2920ffea` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `approved_by_id_refs_id_2424756c` FOREIGN KEY (`approved_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `uploaded_by_id_refs_id_2424756c` FOREIGN KEY (`uploaded_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songapprovals`
--

LOCK TABLES `webview_songapprovals` WRITE;
/*!40000 ALTER TABLE `webview_songapprovals` DISABLE KEYS */;
INSERT INTO `webview_songapprovals` VALUES ('2017-05-23 19:57:43',1,1,1,1);
/*!40000 ALTER TABLE `webview_songapprovals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songcomment`
--

DROP TABLE IF EXISTS `webview_songcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songcomment` (
  `comment` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  `staff_comment` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_songcomment_fbfc09f1` (`user_id`),
  KEY `webview_songcomment_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_485f948b` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `user_id_refs_id_d7cfb051` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songcomment`
--

LOCK TABLES `webview_songcomment` WRITE;
/*!40000 ALTER TABLE `webview_songcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songdownload`
--

DROP TABLE IF EXISTS `webview_songdownload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songdownload` (
  `title` varchar(64) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(200) NOT NULL,
  `song_id` int(11) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `download_url` (`download_url`),
  KEY `webview_songdownload_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_eb7df36f` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songdownload`
--

LOCK TABLES `webview_songdownload` WRITE;
/*!40000 ALTER TABLE `webview_songdownload` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songdownload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songlicense`
--

DROP TABLE IF EXISTS `webview_songlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songlicense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `downloadable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songlicense`
--

LOCK TABLES `webview_songlicense` WRITE;
/*!40000 ALTER TABLE `webview_songlicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songlicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songmetadata`
--

DROP TABLE IF EXISTS `webview_songmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songmetadata` (
  `info` longtext NOT NULL,
  `added` datetime NOT NULL,
  `checked` tinyint(1) NOT NULL,
  `release_year` varchar(4) DEFAULT NULL,
  `song_id` int(11) NOT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `remix_of_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `ytvidid` varchar(30) NOT NULL,
  `ytvidoffset` int(10) unsigned NOT NULL,
  `pouetid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_songmetadata_c1efc3ee` (`release_year`),
  KEY `webview_songmetadata_c170b8c9` (`song_id`),
  KEY `webview_songmetadata_d1a43793` (`platform_id`),
  KEY `webview_songmetadata_63400ba1` (`remix_of_id`),
  KEY `webview_songmetadata_fbfc09f1` (`user_id`),
  KEY `webview_songmetadata_777d41c8` (`type_id`),
  KEY `webview_songmetadata_34d728db` (`active`),
  KEY `webview_songmetadata_93bf040f` (`checked`),
  CONSTRAINT `platform_id_refs_id_1ca36c97` FOREIGN KEY (`platform_id`) REFERENCES `webview_songplatform` (`id`),
  CONSTRAINT `song_id_refs_id_bb9b426a` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `type_id_refs_id_de31c192` FOREIGN KEY (`type_id`) REFERENCES `webview_songtype` (`id`),
  CONSTRAINT `user_id_refs_id_b545be00` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songmetadata`
--

LOCK TABLES `webview_songmetadata` WRITE;
/*!40000 ALTER TABLE `webview_songmetadata` DISABLE KEYS */;
INSERT INTO `webview_songmetadata` VALUES ('','2017-05-23 19:57:35',1,'',1,NULL,NULL,1,1,NULL,1,'','',0,NULL);
/*!40000 ALTER TABLE `webview_songmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songmetadata_artists`
--

DROP TABLE IF EXISTS `webview_songmetadata_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songmetadata_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songmetadata_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webview_songmetadata_arti_songmetadata_id_771ee35824108e2c_uniq` (`songmetadata_id`,`artist_id`),
  KEY `webview_songmetadata_artists_c64cbc9c` (`songmetadata_id`),
  KEY `webview_songmetadata_artists_e995513f` (`artist_id`),
  CONSTRAINT `artist_id_refs_id_765b8645` FOREIGN KEY (`artist_id`) REFERENCES `webview_artist` (`id`),
  CONSTRAINT `songmetadata_id_refs_id_957b42` FOREIGN KEY (`songmetadata_id`) REFERENCES `webview_songmetadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songmetadata_artists`
--

LOCK TABLES `webview_songmetadata_artists` WRITE;
/*!40000 ALTER TABLE `webview_songmetadata_artists` DISABLE KEYS */;
INSERT INTO `webview_songmetadata_artists` VALUES (1,1,1);
/*!40000 ALTER TABLE `webview_songmetadata_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songmetadata_groups`
--

DROP TABLE IF EXISTS `webview_songmetadata_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songmetadata_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songmetadata_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webview_songmetadata_grou_songmetadata_id_24cace59f2e6041e_uniq` (`songmetadata_id`,`group_id`),
  KEY `webview_songmetadata_groups_c64cbc9c` (`songmetadata_id`),
  KEY `webview_songmetadata_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f3adb169` FOREIGN KEY (`group_id`) REFERENCES `webview_group` (`id`),
  CONSTRAINT `songmetadata_id_refs_id_33064625` FOREIGN KEY (`songmetadata_id`) REFERENCES `webview_songmetadata` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songmetadata_groups`
--

LOCK TABLES `webview_songmetadata_groups` WRITE;
/*!40000 ALTER TABLE `webview_songmetadata_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songmetadata_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songmetadata_labels`
--

DROP TABLE IF EXISTS `webview_songmetadata_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songmetadata_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songmetadata_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webview_songmetadata_labe_songmetadata_id_6d688c04318fde40_uniq` (`songmetadata_id`,`label_id`),
  KEY `webview_songmetadata_labels_c64cbc9c` (`songmetadata_id`),
  KEY `webview_songmetadata_labels_63868627` (`label_id`),
  CONSTRAINT `label_id_refs_id_7b0e6e1` FOREIGN KEY (`label_id`) REFERENCES `webview_label` (`id`),
  CONSTRAINT `songmetadata_id_refs_id_5532b062` FOREIGN KEY (`songmetadata_id`) REFERENCES `webview_songmetadata` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songmetadata_labels`
--

LOCK TABLES `webview_songmetadata_labels` WRITE;
/*!40000 ALTER TABLE `webview_songmetadata_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songmetadata_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songplatform`
--

DROP TABLE IF EXISTS `webview_songplatform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songplatform` (
  `description` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songplatform`
--

LOCK TABLES `webview_songplatform` WRITE;
/*!40000 ALTER TABLE `webview_songplatform` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songplatform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songtype`
--

DROP TABLE IF EXISTS `webview_songtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songtype` (
  `description` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songtype`
--

LOCK TABLES `webview_songtype` WRITE;
/*!40000 ALTER TABLE `webview_songtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_songvote`
--

DROP TABLE IF EXISTS `webview_songvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_songvote` (
  `vote` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_songvote_fbfc09f1` (`user_id`),
  KEY `webview_songvote_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_f26a8bc1` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `user_id_refs_id_98fe3c5b` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_songvote`
--

LOCK TABLES `webview_songvote` WRITE;
/*!40000 ALTER TABLE `webview_songvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_songvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_taghistory`
--

DROP TABLE IF EXISTS `webview_taghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_taghistory` (
  `user_id` int(11) NOT NULL,
  `tags` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `added` datetime NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_taghistory_fbfc09f1` (`user_id`),
  KEY `webview_taghistory_c170b8c9` (`song_id`),
  CONSTRAINT `song_id_refs_id_c02eeea0` FOREIGN KEY (`song_id`) REFERENCES `webview_song` (`id`),
  CONSTRAINT `user_id_refs_id_7718abca` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_taghistory`
--

LOCK TABLES `webview_taghistory` WRITE;
/*!40000 ALTER TABLE `webview_taghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_taghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_theme`
--

DROP TABLE IF EXISTS `webview_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_theme` (
  `description` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `css` varchar(120) NOT NULL,
  `title` varchar(20) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webview_theme_f97a5119` (`creator_id`),
  CONSTRAINT `creator_id_refs_id_7635510a` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_theme`
--

LOCK TABLES `webview_theme` WRITE;
/*!40000 ALTER TABLE `webview_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_uploadticket`
--

DROP TABLE IF EXISTS `webview_uploadticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_uploadticket` (
  `added` datetime NOT NULL,
  `tempfile` varchar(100) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `webview_uploadticket_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_d02d857` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_uploadticket`
--

LOCK TABLES `webview_uploadticket` WRITE;
/*!40000 ALTER TABLE `webview_uploadticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `webview_uploadticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webview_userprofile`
--

DROP TABLE IF EXISTS `webview_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webview_userprofile` (
  `info` longtext NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `last_active` datetime DEFAULT NULL,
  `web_page` varchar(200) NOT NULL,
  `country` varchar(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `infoline` varchar(50) NOT NULL,
  `visible_to` varchar(1) NOT NULL,
  `email_on_pm` tinyint(1) NOT NULL,
  `pm_accepted_upload` tinyint(1) NOT NULL,
  `paginate_favorites` tinyint(1) NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `custom_css` varchar(200) NOT NULL,
  `fave_id` int(11) DEFAULT NULL,
  `email_on_artist_comment` tinyint(1) NOT NULL,
  `location` varchar(40) NOT NULL,
  `email_on_group_add` tinyint(1) NOT NULL,
  `email_on_artist_add` tinyint(1) NOT NULL,
  `real_name` varchar(40) NOT NULL,
  `icq_id` varchar(40) NOT NULL,
  `yahoo_id` varchar(40) NOT NULL,
  `aol_id` varchar(40) NOT NULL,
  `hol_id` int(11) DEFAULT NULL,
  `twitter_id` varchar(32) NOT NULL,
  `use_tags` tinyint(1) NOT NULL,
  `last_changed` datetime NOT NULL,
  `show_youtube` tinyint(1) NOT NULL,
  `show_screenshots` tinyint(1) NOT NULL,
  `last_ip` char(15) NOT NULL,
  `hellbanned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `webview_userprofile_bda51c3c` (`group_id`),
  KEY `webview_userprofile_1079d5be` (`theme_id`),
  KEY `webview_userprofile_4786f88a` (`last_activity`),
  CONSTRAINT `group_id_refs_id_1472a7e8` FOREIGN KEY (`group_id`) REFERENCES `webview_group` (`id`),
  CONSTRAINT `theme_id_refs_id_b2411a` FOREIGN KEY (`theme_id`) REFERENCES `webview_theme` (`id`),
  CONSTRAINT `user_id_refs_id_4b4d0679` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webview_userprofile`
--

LOCK TABLES `webview_userprofile` WRITE;
/*!40000 ALTER TABLE `webview_userprofile` DISABLE KEYS */;
INSERT INTO `webview_userprofile` VALUES ('',NULL,NULL,'','nectaflag','',1,1,'','das admin','A',0,1,1,'2017-05-23 19:56:46',NULL,'',NULL,0,'',0,0,'','','','',NULL,'',1,'2017-05-23 19:56:46',1,1,'10.0.2.2',0),('',NULL,NULL,'','','',2,2,'','','N',0,0,0,NULL,NULL,'',NULL,0,'',0,0,'','','','',NULL,'',0,'2017-05-23 19:18:16',0,0,'',0);
/*!40000 ALTER TABLE `webview_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 19:58:24
