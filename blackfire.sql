-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: casapalacio_dev
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2-log

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
-- Table structure for table `casa_palacio_cms_basic_blocks`
--

DROP TABLE IF EXISTS `casa_palacio_cms_basic_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_basic_blocks` (
  `id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_9809FC76BF396750` FOREIGN KEY (`id`) REFERENCES `casa_palacio_cms_blocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_basic_blocks`
--

LOCK TABLES `casa_palacio_cms_basic_blocks` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_basic_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_basic_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_blocks`
--

DROP TABLE IF EXISTS `casa_palacio_cms_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `block_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_blocks`
--

LOCK TABLES `casa_palacio_cms_blocks` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_images`
--

DROP TABLE IF EXISTS `casa_palacio_cms_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F3420E7E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_images`
--

LOCK TABLES `casa_palacio_cms_images` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_page_blocks`
--

DROP TABLE IF EXISTS `casa_palacio_cms_page_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_page_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2CA2E0CFC4663E4` (`page_id`),
  KEY `IDX_2CA2E0CFE9ED820C` (`block_id`),
  CONSTRAINT `FK_2CA2E0CFC4663E4` FOREIGN KEY (`page_id`) REFERENCES `casa_palacio_cms_pages` (`id`),
  CONSTRAINT `FK_2CA2E0CFE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `casa_palacio_cms_blocks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_page_blocks`
--

LOCK TABLES `casa_palacio_cms_page_blocks` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_page_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_page_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_pages`
--

DROP TABLE IF EXISTS `casa_palacio_cms_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_pages`
--

LOCK TABLES `casa_palacio_cms_pages` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_quote_blocks`
--

DROP TABLE IF EXISTS `casa_palacio_cms_quote_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_quote_blocks` (
  `id` int(11) NOT NULL,
  `quote` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_5BD2B9F4BF396750` FOREIGN KEY (`id`) REFERENCES `casa_palacio_cms_blocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_quote_blocks`
--

LOCK TABLES `casa_palacio_cms_quote_blocks` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_quote_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_quote_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casa_palacio_cms_text_blocks`
--

DROP TABLE IF EXISTS `casa_palacio_cms_text_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casa_palacio_cms_text_blocks` (
  `id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_56F88F22BF396750` FOREIGN KEY (`id`) REFERENCES `casa_palacio_cms_blocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa_palacio_cms_text_blocks`
--

LOCK TABLES `casa_palacio_cms_text_blocks` WRITE;
/*!40000 ALTER TABLE `casa_palacio_cms_text_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `casa_palacio_cms_text_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ext_log_entries`
--

DROP TABLE IF EXISTS `ext_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_class_lookup_idx` (`object_class`),
  KEY `log_date_lookup_idx` (`logged_at`),
  KEY `log_user_lookup_idx` (`username`),
  KEY `log_version_lookup_idx` (`object_id`,`object_class`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=1297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ext_log_entries`
--

LOCK TABLES `ext_log_entries` WRITE;
/*!40000 ALTER TABLE `ext_log_entries` DISABLE KEYS */;
INSERT INTO `ext_log_entries` VALUES (1,'create','2016-10-22 10:48:35','1','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:34.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(2,'create','2016-10-22 10:48:35','1','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Mug \"aperiam\"\";s:11:\"description\";s:539:\"Fugiat eum suscipit qui quo. Labore non ex sed. Qui assumenda temporibus aut sequi odit vero quae. Omnis aspernatur et consequatur delectus.\n\nDeserunt eum eum animi ratione illum velit. Quisquam molestiae molestiae corrupti. Molestiae earum eum blanditiis consequatur quibusdam illum molestiae.\n\nOccaecati animi illo et voluptatem repellendus eligendi expedita. Eligendi quia velit et facilis et ex a quidem. Cumque cumque in sunt fuga aliquid fuga pariatur. Quasi nulla sit labore qui esse. Nesciunt tempora perferendis animi aut impedit.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:125:\"Est qui reiciendis porro velit fugiat nostrum. Veniam vel et enim. Numquam consequuntur accusamus et est consequatur quaerat.\";}',NULL),(3,'create','2016-10-22 10:48:35','1','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3754;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(4,'create','2016-10-22 10:48:35','2','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6643;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(5,'create','2016-10-22 10:48:35','3','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6720;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(6,'create','2016-10-22 10:48:35','2','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(7,'create','2016-10-22 10:48:35','2','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:9:\"Mug \"aut\"\";s:11:\"description\";s:336:\"Aut veniam ipsam impedit a qui. Sit dolores porro nihil et. Et quidem vitae eos accusamus modi velit.\n\nVel et consequatur quas molestias commodi. Repudiandae voluptates deleniti natus autem. Aut mollitia fugiat dolores est.\n\nQuis illum et neque illo et. Corporis vero eligendi tempore. Ut sapiente impedit voluptatem temporibus dolorem.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:160:\"Omnis dolorem in ipsum aliquam repellat suscipit. Voluptatum saepe dolorum et dicta quis voluptatem rerum libero. Sunt dolorem perspiciatis qui quia cupiditate.\";}',NULL),(8,'create','2016-10-22 10:48:35','4','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8074;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(9,'create','2016-10-22 10:48:35','5','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8531;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(10,'create','2016-10-22 10:48:35','6','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6442;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(11,'create','2016-10-22 10:48:35','3','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(12,'create','2016-10-22 10:48:35','3','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:16:\"Mug \"distinctio\"\";s:11:\"description\";s:436:\"Unde nesciunt qui nisi ut aut. Similique mollitia et a est praesentium corporis aliquid. Perferendis consequatur suscipit nisi facilis veritatis pariatur consequuntur quia.\n\nTotam quis qui consequatur qui neque ut. Tenetur aspernatur occaecati voluptatem eum occaecati. Quae perspiciatis repudiandae repudiandae soluta.\n\nMolestiae aut atque facere quae adipisci. Et animi illo velit non eos et. Ea nobis reprehenderit sed reiciendis at.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:134:\"Natus eos nulla qui. Qui odit natus libero nihil commodi numquam. Et expedita doloribus ullam quisquam sed aliquam sapiente inventore.\";}',NULL),(13,'create','2016-10-22 10:48:35','7','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7665;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(14,'create','2016-10-22 10:48:35','8','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2364;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(15,'create','2016-10-22 10:48:35','9','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:832;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(16,'create','2016-10-22 10:48:35','4','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(17,'create','2016-10-22 10:48:35','4','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:8:\"Mug \"et\"\";s:11:\"description\";s:350:\"Consequatur magnam aut autem. Omnis magnam praesentium in consequuntur voluptas tenetur et. Repellat saepe aperiam qui omnis corrupti nostrum excepturi.\n\nEt ut eum maiores eveniet et quis. Culpa rerum voluptas et autem voluptate. Placeat veniam cupiditate dolor temporibus nemo.\n\nDolore laborum inventore aut hic totam. Eum iste repudiandae enim aut.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:258:\"Aperiam aut quidem totam doloribus est ducimus. Blanditiis fugiat libero aliquid totam. Ut sint dolores nihil quidem reprehenderit tenetur voluptatem. Sunt explicabo sunt ut voluptas culpa voluptatibus amet non. Voluptatem facere voluptas deleniti sint enim.\";}',NULL),(18,'create','2016-10-22 10:48:35','10','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1201;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(19,'create','2016-10-22 10:48:35','11','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5436;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(20,'create','2016-10-22 10:48:35','12','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:631;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(21,'create','2016-10-22 10:48:35','5','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(22,'create','2016-10-22 10:48:35','5','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Mug \"dolores\"\";s:11:\"description\";s:445:\"Dolorem dignissimos veritatis laboriosam error vel quidem. Iure consectetur hic expedita temporibus. Culpa quidem quos laboriosam illo.\n\nQuis natus pariatur ea minima. Quaerat consequatur placeat et ratione dolorem nostrum non. Illum eos necessitatibus quam. Assumenda blanditiis quae voluptatem consequatur sed voluptatem.\n\nEos accusamus iusto sunt quia eius blanditiis numquam. Qui quam sint ipsam. Consequatur fugit maxime aliquid eaque odio.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:188:\"Magnam quam magnam quidem nesciunt praesentium numquam consequuntur. Qui nihil magnam minus. Omnis ut non et ea delectus. Corporis consequatur magnam possimus et ex vero architecto beatae.\";}',NULL),(23,'create','2016-10-22 10:48:35','13','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2068;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(24,'create','2016-10-22 10:48:35','14','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6109;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(25,'create','2016-10-22 10:48:35','15','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6027;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(26,'create','2016-10-22 10:48:35','6','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(27,'create','2016-10-22 10:48:35','6','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"Mug \"occaecati\"\";s:11:\"description\";s:492:\"Voluptas doloremque repellendus corrupti sit nemo fugiat. Error minus ipsam consequatur cum totam sit. Quam consequatur recusandae officiis fuga autem sint nostrum. Eos voluptate qui rem aliquam minus et.\n\nTempora minus minus nostrum accusamus. Quia error cumque ipsa cum. Ea exercitationem ratione quisquam sit. Omnis nulla est autem omnis quo nobis quo alias.\n\nDeserunt omnis quas aliquam corporis officia culpa earum. Incidunt accusantium culpa aut et sint. Aliquid officia doloribus quis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:178:\"Consequatur ut nisi pariatur deleniti. Omnis a dicta explicabo eum nulla enim. Minus aliquam a est dolores dolores similique ipsa. Rem sint quas laudantium itaque et magni omnis.\";}',NULL),(28,'create','2016-10-22 10:48:35','16','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:887;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(29,'create','2016-10-22 10:48:35','17','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6783;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(30,'create','2016-10-22 10:48:35','18','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3613;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(31,'create','2016-10-22 10:48:35','7','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(32,'create','2016-10-22 10:48:35','7','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:9:\"Mug \"hic\"\";s:11:\"description\";s:451:\"Voluptas voluptas eos laudantium id iure hic nemo. Rem mollitia qui deleniti enim voluptate. Culpa consequatur accusantium libero velit alias ipsam. Quia qui porro non doloremque qui.\n\nLaudantium quos iusto nesciunt voluptas. Ut sed dolor eos. Optio occaecati architecto illum aut fugit ut. Aliquam dolor quisquam reiciendis optio.\n\nNihil officia beatae consequatur ad quia. Aut quia est qui. Iure dolore quae qui consequatur laboriosam dolorem rerum.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:164:\"Neque omnis nemo qui. Et rem ad vel voluptates consequatur commodi. Aut magni eveniet iure est quos tempore. Reiciendis non est magnam nostrum eos ipsam architecto.\";}',NULL),(33,'create','2016-10-22 10:48:35','19','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6771;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(34,'create','2016-10-22 10:48:35','20','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7350;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(35,'create','2016-10-22 10:48:35','21','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7571;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(36,'create','2016-10-22 10:48:35','8','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(37,'create','2016-10-22 10:48:35','8','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Mug \"laborum\"\";s:11:\"description\";s:490:\"Eos qui numquam fuga omnis. Voluptatem non eum quia quos et dignissimos. Aut architecto molestias ipsum qui. Delectus aliquam est et labore provident dolores magni.\n\nQui vitae consequuntur molestias officia quis. Aut vero debitis doloribus officiis et quod. Ipsa sit voluptatem occaecati ea corrupti excepturi reprehenderit.\n\nSunt autem aut nulla autem. Ducimus velit totam cum harum dolor ducimus. Velit id sunt fugiat dignissimos. Eveniet ducimus pariatur numquam sapiente magni culpa ea.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:124:\"Assumenda architecto dolor quis illum ad. Officia voluptatem fuga nulla rerum. Quidem possimus aspernatur culpa fugit autem.\";}',NULL),(38,'create','2016-10-22 10:48:35','22','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7224;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(39,'create','2016-10-22 10:48:35','23','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3867;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(40,'create','2016-10-22 10:48:35','24','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5484;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(41,'create','2016-10-22 10:48:35','9','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(42,'create','2016-10-22 10:48:35','9','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:10:\"Mug \"modi\"\";s:11:\"description\";s:375:\"Facilis aut et ut sed. Quisquam ut est aut aliquid et. Sit ut ratione inventore sunt officiis.\n\nQuis rerum velit veritatis sit voluptas autem. Quis natus odio perspiciatis animi sunt sit fuga vitae. Occaecati eaque distinctio aut enim.\n\nQui est reiciendis vero minima iste qui. Laboriosam vel hic quisquam error quo. Nemo voluptates numquam beatae temporibus asperiores sunt.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:173:\"Possimus illum nihil quod sit quia est qui. Eius cupiditate quia non voluptates blanditiis. Omnis hic numquam velit. Accusamus fugiat molestiae animi nobis nobis corrupti a.\";}',NULL),(43,'create','2016-10-22 10:48:35','25','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8623;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(44,'create','2016-10-22 10:48:35','26','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6607;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(45,'create','2016-10-22 10:48:35','27','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:457;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(46,'create','2016-10-22 10:48:35','10','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:35.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(47,'create','2016-10-22 10:48:35','10','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:10:\"Mug \"enim\"\";s:11:\"description\";s:421:\"Consectetur ipsam labore fugit nemo rerum in ut. Recusandae libero aperiam id omnis repellat. Sed est autem aliquid velit vel harum velit.\n\nDolores voluptatum at quo soluta et. Eos aut qui totam expedita. Velit quam ipsa amet cupiditate.\n\nMolestiae dolorem necessitatibus aut ducimus. Illo sit laboriosam nemo est magni praesentium ipsa. Aut sit rerum magni dicta. Cupiditate quas voluptatem voluptatem harum autem animi.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:144:\"Fuga quia voluptas maxime temporibus voluptas qui et. Maiores facilis ipsam vero quis atque molestias numquam. Qui aperiam praesentium eum sunt.\";}',NULL),(48,'create','2016-10-22 10:48:35','28','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8881;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(49,'create','2016-10-22 10:48:35','29','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:394;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(50,'create','2016-10-22 10:48:35','30','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3472;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(51,'create','2016-10-22 10:48:36','11','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(52,'create','2016-10-22 10:48:36','11','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:9:\"Mug \"quo\"\";s:11:\"description\";s:617:\"Tenetur dolorem id aut cupiditate eum. Deleniti quas unde natus illo quos modi modi et. Quae porro illum eos sint natus officiis. Rerum porro quibusdam est laboriosam.\n\nDucimus voluptate impedit veniam laudantium eos praesentium enim. Earum dolorum in placeat adipisci architecto. Ipsam laborum fugiat delectus nobis qui est voluptatem.\n\nLaborum soluta dignissimos sit quidem ut magnam tempore totam. Dolorum commodi voluptatem pariatur distinctio. Ea explicabo ut placeat vero laborum neque molestiae repellendus. Excepturi minima ea asperiores minus sunt assumenda earum pariatur. Et repellat aut molestiae debitis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:128:\"Et assumenda natus blanditiis. Repellendus quia dolorem qui quas necessitatibus totam sunt aut. Qui rerum odit quaerat quos qui.\";}',NULL),(53,'create','2016-10-22 10:48:36','31','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8432;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(54,'create','2016-10-22 10:48:36','32','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5016;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(55,'create','2016-10-22 10:48:36','33','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1708;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(56,'create','2016-10-22 10:48:36','12','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(57,'create','2016-10-22 10:48:36','12','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"Mug \"praesentium\"\";s:11:\"description\";s:487:\"Dolorum est recusandae quisquam voluptatem voluptatibus vel. Architecto voluptatem rerum iusto ut culpa nulla.\n\nQui magni eos rerum nihil officia. Ut omnis quo quis quas. Repudiandae ut quis consequatur quis. Qui fuga ea veniam impedit molestiae.\n\nVel quas quam beatae quaerat ut magnam. Quasi temporibus ea provident cupiditate sunt eligendi ad. Aut delectus debitis aut ut accusamus beatae et. Debitis cupiditate id in eligendi temporibus nostrum. Nihil odio nesciunt totam ut dolores.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:196:\"Provident aspernatur eaque quo inventore vel dolores occaecati. Reprehenderit dolorum consequatur corrupti aliquid rerum quia et. Totam exercitationem laboriosam vitae. Qui amet quis aliquid quis.\";}',NULL),(58,'create','2016-10-22 10:48:36','34','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:870;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(59,'create','2016-10-22 10:48:36','35','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8905;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(60,'create','2016-10-22 10:48:36','36','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9811;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(61,'create','2016-10-22 10:48:36','13','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(62,'create','2016-10-22 10:48:36','13','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"Mug \"mollitia\"\";s:11:\"description\";s:438:\"Eaque quis eos laboriosam eveniet fugit. Esse praesentium quia dolor aut qui. Aut beatae alias cupiditate et qui qui deleniti tempore.\n\nSapiente molestiae est eius est consequatur. Qui hic aut ducimus ut molestiae molestias reiciendis voluptatibus. Sunt exercitationem occaecati ipsam ut suscipit nisi.\n\nModi qui commodi harum velit minima voluptatibus. Ut similique sit voluptatem incidunt nam deserunt porro. Aut odit a dolorem officia.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:152:\"Rerum dolores molestiae iusto velit. Non ut similique doloremque neque dolor ad sint. Illum autem recusandae illo iure. Dicta ut sit qui deleniti nobis.\";}',NULL),(63,'create','2016-10-22 10:48:36','37','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8421;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(64,'create','2016-10-22 10:48:36','38','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8728;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(65,'create','2016-10-22 10:48:36','39','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8668;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(66,'create','2016-10-22 10:48:36','14','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(67,'create','2016-10-22 10:48:36','14','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:9:\"Mug \"aut\"\";s:11:\"description\";s:501:\"Accusamus repellat rerum asperiores quo et. Eum odio reprehenderit facere quasi eius et. Quo aliquid labore et voluptatem porro et. Non voluptatum est sunt perspiciatis nemo voluptatibus non.\n\nVoluptatum officiis deserunt et cum. Reiciendis aut non et nihil qui. Cumque aut ut quia eaque nihil.\n\nVoluptas velit fugit praesentium nostrum soluta. Animi dignissimos quis expedita minima voluptatibus odit. Voluptatem id voluptas soluta et itaque quia voluptatibus. Voluptatum expedita quia autem dolores.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:160:\"A rerum nostrum nostrum. Nihil aliquid vitae cupiditate rerum ut. Esse voluptatum eveniet ut et natus. Officia totam doloribus nulla illum at rerum dignissimos.\";}',NULL),(68,'create','2016-10-22 10:48:36','40','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5397;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(69,'create','2016-10-22 10:48:36','41','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9727;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(70,'create','2016-10-22 10:48:36','42','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4752;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(71,'create','2016-10-22 10:48:36','15','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(72,'create','2016-10-22 10:48:36','15','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"Mug \"doloribus\"\";s:11:\"description\";s:547:\"Accusamus quasi vel ad. Neque asperiores et quisquam quas eaque. Saepe eum quisquam quis velit. Aut rerum esse voluptas perspiciatis velit et atque.\n\nTempora quod earum maxime incidunt distinctio eveniet ad. Eveniet aut praesentium molestiae ratione nulla optio officiis. Sequi sit facilis numquam ut vel.\n\nEx distinctio officiis provident dolor eaque reiciendis nemo. Et ducimus ut voluptate quia est ut. Enim quos ut ut eveniet harum sint. Ducimus explicabo pariatur commodi repellendus. Cumque consectetur voluptatibus nam ea molestiae facilis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:193:\"Nam rerum aut ratione aspernatur inventore quibusdam. Non accusantium fuga laboriosam molestias maxime sunt aliquam. Ut eos ut aut molestiae tempore corrupti. Autem sed ducimus quia eveniet ad.\";}',NULL),(73,'create','2016-10-22 10:48:36','43','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6415;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(74,'create','2016-10-22 10:48:36','44','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9430;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(75,'create','2016-10-22 10:48:36','45','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7340;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(76,'create','2016-10-22 10:48:37','16','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(77,'create','2016-10-22 10:48:37','16','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"Sticker \"et\"\";s:11:\"description\";s:568:\"Iusto quis repellat sed corrupti qui in officia numquam. Ipsa minima placeat harum voluptas totam accusantium sunt. Non voluptates necessitatibus maxime. Dicta sed sunt nihil nulla. Voluptate et sint sed in eos qui dolore animi.\n\nRepudiandae ullam et fugiat aliquid odio. Voluptatem voluptatem harum maiores at blanditiis nihil consequatur. Nobis molestias et tempore et vel.\n\nVoluptate enim voluptates expedita ut. Laborum ut nesciunt voluptatem enim quis laborum exercitationem magni. Debitis quia ex nihil laborum eos perferendis. Velit fugiat quia qui consectetur.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:157:\"Ea amet quia iste aspernatur ut reprehenderit dolorem. Accusantium culpa fugiat quidem sint quisquam. Voluptas temporibus eveniet commodi eum laboriosam vel.\";}',NULL),(78,'create','2016-10-22 10:48:37','46','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2742;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(79,'create','2016-10-22 10:48:37','47','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5623;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(80,'create','2016-10-22 10:48:37','48','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7961;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(81,'create','2016-10-22 10:48:37','17','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(82,'create','2016-10-22 10:48:37','17','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:22:\"Sticker \"consequuntur\"\";s:11:\"description\";s:414:\"Sit libero aperiam aut sint optio qui nisi. Et omnis ea ut modi cupiditate ipsum. Rerum praesentium tenetur eum ipsam illo quod eius cupiditate.\n\nIusto iusto totam velit dolores cupiditate incidunt. Nihil cumque aut ea laborum.\n\nEt maxime nihil assumenda et. Blanditiis culpa aspernatur aliquid magni dolorem dolor ut. A animi voluptatibus ullam eveniet animi neque. Nostrum ut culpa at neque praesentium sit sunt.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:123:\"Quisquam explicabo modi minima placeat beatae. Et quibusdam non et et quia enim fugiat. Ullam quae dolorem optio minus non.\";}',NULL),(83,'create','2016-10-22 10:48:37','49','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3357;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(84,'create','2016-10-22 10:48:37','50','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5615;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(85,'create','2016-10-22 10:48:37','51','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8682;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(86,'create','2016-10-22 10:48:37','18','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(87,'create','2016-10-22 10:48:37','18','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:18:\"Sticker \"voluptas\"\";s:11:\"description\";s:561:\"Similique fuga velit et earum ut. Eos quia ipsa beatae delectus voluptatibus pariatur accusamus. Enim deserunt repudiandae ab aperiam quaerat. Amet aut natus accusantium at sapiente. Atque explicabo inventore nihil excepturi ut quam.\n\nAssumenda aut est facilis magni non odio asperiores. Hic sint doloribus suscipit hic debitis consequuntur. Et veritatis exercitationem praesentium et soluta commodi inventore.\n\nEst aut non ullam doloremque deleniti porro dolor. Modi et officiis omnis officia repellendus autem molestias tenetur. Dicta culpa quasi cumque unde.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:187:\"Animi voluptatem voluptas nulla libero cumque. Officiis iste eum esse neque praesentium illum. Est et repellat explicabo repudiandae nobis occaecati. Veritatis provident inventore soluta.\";}',NULL),(88,'create','2016-10-22 10:48:37','52','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9692;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(89,'create','2016-10-22 10:48:37','53','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9247;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(90,'create','2016-10-22 10:48:37','54','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1794;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(91,'create','2016-10-22 10:48:37','19','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(92,'create','2016-10-22 10:48:37','19','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Sticker \"aut\"\";s:11:\"description\";s:455:\"Cupiditate non eum ut aut deleniti possimus. Magni voluptatibus et dolores repellendus adipisci et. Omnis sed ex ipsum qui.\n\nIn exercitationem voluptate velit ut ad. Aut nemo quia facere qui perferendis aperiam. Ab in consectetur non quos sunt voluptatum accusamus amet.\n\nSint quas et molestias beatae velit. Qui consequatur culpa cum quasi eveniet. Sit tempora illum aut dolores magni quisquam. Ex eligendi esse voluptatem accusantium perspiciatis omnis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:121:\"Et reiciendis autem et nihil distinctio qui blanditiis. Aut quas hic dolores deserunt. Facilis et maiores sunt voluptate.\";}',NULL),(93,'create','2016-10-22 10:48:37','55','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8317;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(94,'create','2016-10-22 10:48:37','56','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1268;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(95,'create','2016-10-22 10:48:37','57','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7305;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(96,'create','2016-10-22 10:48:37','20','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(97,'create','2016-10-22 10:48:37','20','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"Sticker \"nemo\"\";s:11:\"description\";s:469:\"Voluptate sapiente dignissimos debitis eligendi. Aspernatur porro sit eius voluptatum minus exercitationem assumenda. Sapiente eos unde et nam laudantium.\n\nSit aperiam totam eum non cupiditate ex magni. Nobis placeat eum vel sint sed facilis et. Suscipit qui est non et illum consequatur.\n\nAnimi vel impedit error praesentium velit et dignissimos. Pariatur eveniet expedita et consectetur quam reiciendis quia. Adipisci aut velit eligendi ipsa culpa tenetur laudantium.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:178:\"Porro nemo culpa facilis aut iusto. Ipsam officia voluptatibus sed quidem molestiae aliquam. Praesentium eveniet inventore nulla nihil sit. Quasi quisquam a ut aut eaque quia in.\";}',NULL),(98,'create','2016-10-22 10:48:37','58','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8108;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(99,'create','2016-10-22 10:48:37','59','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5540;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(100,'create','2016-10-22 10:48:37','60','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6420;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(101,'create','2016-10-22 10:48:37','21','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(102,'create','2016-10-22 10:48:37','21','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Sticker \"vel\"\";s:11:\"description\";s:599:\"Nihil id exercitationem recusandae distinctio impedit a saepe repudiandae. Alias earum facilis nihil soluta molestiae. Architecto dolore iste quia et totam consequatur. Nostrum inventore earum minus ipsam error quo impedit quisquam.\n\nQuae sint voluptatem nulla quibusdam deleniti qui. Ut rerum nostrum quos molestiae animi et quo libero. Eius et ut assumenda nobis consequatur voluptates.\n\nVel quidem nobis repellendus rerum. Provident cum doloribus eligendi est adipisci. Corrupti voluptatibus adipisci quod voluptatem magnam officiis consequuntur. Eaque veniam est minima sint harum ipsa illum ut.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:78:\"Sint qui voluptatibus corporis enim aliquam. At deleniti atque voluptatem eos.\";}',NULL),(103,'create','2016-10-22 10:48:37','61','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1782;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(104,'create','2016-10-22 10:48:37','62','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6227;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(105,'create','2016-10-22 10:48:37','63','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5775;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(106,'create','2016-10-22 10:48:37','22','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(107,'create','2016-10-22 10:48:37','22','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"Sticker \"id\"\";s:11:\"description\";s:364:\"Aut eum voluptas aut in sunt assumenda. Sed et voluptatibus atque aut blanditiis vel. Nemo odio ut nesciunt quia corporis eius ea. Tempore quia rerum asperiores possimus quos.\n\nDebitis ea quo nihil esse sint fuga. Voluptas repellendus debitis repellendus ut voluptatibus amet eum.\n\nMinus magnam est dolores sint voluptatibus. Ut ipsa velit nisi ipsam aut porro id.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:95:\"Facilis hic cupiditate quis tempora facilis atque. Illo et nihil itaque quidem non impedit non.\";}',NULL),(108,'create','2016-10-22 10:48:37','64','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3930;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(109,'create','2016-10-22 10:48:37','65','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1669;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(110,'create','2016-10-22 10:48:37','66','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5147;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(111,'create','2016-10-22 10:48:37','23','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(112,'create','2016-10-22 10:48:37','23','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Sticker \"aut\"\";s:11:\"description\";s:536:\"Perferendis qui exercitationem adipisci quia sunt. Possimus consequatur molestiae mollitia inventore. Debitis repellendus voluptas repellendus nisi. Magnam quam ut fugit nihil.\n\nCorporis accusamus quod corporis est vitae. Perferendis assumenda velit reiciendis voluptatem aspernatur quasi in. Fugit esse facere minus odit.\n\nEa autem ipsum id. Eaque voluptatum reiciendis autem id molestias quisquam eum. Est nulla maiores animi. Deleniti minima vel tempora asperiores sapiente. Et autem nisi facere mollitia quibusdam quaerat iusto cum.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:109:\"Qui ipsam a accusantium at. Nobis totam qui repellendus in voluptas omnis. Dolores ipsa at perspiciatis odio.\";}',NULL),(113,'create','2016-10-22 10:48:37','67','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8538;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(114,'create','2016-10-22 10:48:37','68','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6912;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(115,'create','2016-10-22 10:48:37','69','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6029;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(116,'create','2016-10-22 10:48:37','24','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(117,'create','2016-10-22 10:48:37','24','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"Sticker \"ut\"\";s:11:\"description\";s:510:\"Nesciunt architecto consequatur expedita ad a sint. Ut quo laboriosam non adipisci distinctio qui. Eum sunt et numquam. Nobis cum voluptatum veniam voluptatem repudiandae beatae incidunt. Minima nam explicabo possimus et accusamus.\n\nUt suscipit ea repudiandae recusandae laborum est labore. Atque cumque omnis omnis ratione ea temporibus iusto. Assumenda quis nam qui eos. Dolores est dolore fuga quidem voluptatum doloribus.\n\nDolor voluptatem ipsam similique est. Unde itaque est animi ipsum et dolorum velit.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:178:\"Ex qui nihil soluta eum laborum. Sit et fugit occaecati quia quam suscipit voluptas magnam. Aut rem ut ut nam autem optio eaque delectus. Rerum eos dicta eius optio saepe libero.\";}',NULL),(118,'create','2016-10-22 10:48:37','70','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6393;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(119,'create','2016-10-22 10:48:37','71','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2088;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(120,'create','2016-10-22 10:48:37','72','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:508;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(121,'create','2016-10-22 10:48:37','25','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(122,'create','2016-10-22 10:48:37','25','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"Sticker \"dolor\"\";s:11:\"description\";s:440:\"Voluptatem facilis in inventore iure commodi laboriosam. Nihil cum repellat adipisci qui natus. A impedit aut quas perspiciatis tempore dolor.\n\nIllum necessitatibus aut consequatur natus labore eius molestias. Ducimus et accusamus inventore enim. Labore ratione perferendis temporibus et.\n\nUt doloribus error necessitatibus. Non hic vitae qui explicabo et velit. Perspiciatis consectetur non minus dolores nihil soluta necessitatibus neque.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:126:\"Eveniet a ex omnis sit. Ea qui amet alias. Nostrum aut sed nemo incidunt. Inventore libero et exercitationem sint quis dolore.\";}',NULL),(123,'create','2016-10-22 10:48:37','73','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2568;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(124,'create','2016-10-22 10:48:37','74','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2854;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(125,'create','2016-10-22 10:48:37','75','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:39;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(126,'create','2016-10-22 10:48:38','26','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(127,'create','2016-10-22 10:48:38','26','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"Sticker \"quia\"\";s:11:\"description\";s:508:\"Error quis doloremque porro voluptatem. Aliquam voluptatem ut maxime molestiae. Architecto sapiente ut velit omnis occaecati doloremque facere.\n\nCommodi earum tempora quia eaque voluptas quidem ut. Excepturi accusantium quod et officia tempore magnam. Nesciunt aut sint qui et voluptatem. Impedit ut omnis provident asperiores quis commodi vel dolore.\n\nEst vel debitis vel officia amet nisi. Pariatur omnis dolorem minima a perspiciatis voluptatibus. Assumenda officiis voluptatem et et sit unde atque omnis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:134:\"Sequi praesentium et dignissimos tempora. Vel atque quos quis quis praesentium corrupti dolorum. Voluptas commodi non officiis veniam.\";}',NULL),(128,'create','2016-10-22 10:48:38','76','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1771;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(129,'create','2016-10-22 10:48:38','77','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8855;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(130,'create','2016-10-22 10:48:38','78','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2002;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(131,'create','2016-10-22 10:48:38','27','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(132,'create','2016-10-22 10:48:38','27','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"Sticker \"est\"\";s:11:\"description\";s:334:\"Itaque esse ab blanditiis saepe non aut dicta eius. Architecto veritatis nostrum qui voluptatem placeat minus.\n\nConsequatur velit magni eius. Sed facere adipisci nostrum. Atque quo consequatur unde odio. Quis veritatis sequi mollitia aliquam dolores corporis sed ut.\n\nTenetur fuga minima totam. Unde nobis maxime provident voluptatem.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:200:\"Est nobis excepturi autem quo tenetur quis. Voluptatem reprehenderit nulla nemo exercitationem est. Deserunt facere inventore odio iste consequatur. A alias eum et doloremque ullam hic dolorem quidem.\";}',NULL),(133,'create','2016-10-22 10:48:38','79','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:706;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(134,'create','2016-10-22 10:48:38','80','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2799;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(135,'create','2016-10-22 10:48:38','81','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:155;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(136,'create','2016-10-22 10:48:38','28','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(137,'create','2016-10-22 10:48:38','28','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"Sticker \"ea\"\";s:11:\"description\";s:565:\"Dolores omnis consectetur ut aspernatur quis laborum laboriosam. Sint doloribus minima impedit qui rerum. Culpa iure ut id saepe fugiat. Porro minima sed labore porro enim cumque.\n\nEt quo eos consequuntur ut magni. Pariatur quae possimus corrupti neque qui recusandae. Expedita qui quis cum quos omnis debitis vel. Officiis asperiores ducimus eius ad.\n\nAssumenda at eum inventore recusandae accusantium. Eius necessitatibus laudantium reprehenderit. Facilis provident dolor dolores non voluptatem in. Doloribus quae non explicabo quae dolores ea impedit laudantium.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:96:\"Rerum aut reprehenderit voluptate tempora maxime dolores. Aut consequatur eum doloribus et quis.\";}',NULL),(138,'create','2016-10-22 10:48:38','82','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4860;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(139,'create','2016-10-22 10:48:38','83','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1295;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(140,'create','2016-10-22 10:48:38','84','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4145;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(141,'create','2016-10-22 10:48:38','29','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(142,'create','2016-10-22 10:48:38','29','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:20:\"Sticker \"asperiores\"\";s:11:\"description\";s:401:\"Perspiciatis earum est vitae accusantium porro. Incidunt eos quia vitae enim esse sint. Aspernatur aliquam atque perspiciatis ratione nam.\n\nDebitis dolore dolorem veritatis iure. Labore minima esse et quam. Tenetur enim voluptatem nemo.\n\nNumquam sit ut rerum voluptas et. Eligendi minima debitis sed officiis libero architecto. Molestiae in nobis nemo commodi sit. Doloribus molestias rerum modi eius.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:179:\"Id molestiae est accusantium tenetur qui voluptas. Nam impedit enim doloribus incidunt qui commodi reiciendis. Deserunt quibusdam dolores non voluptate reprehenderit nisi commodi.\";}',NULL),(143,'create','2016-10-22 10:48:38','85','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5977;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(144,'create','2016-10-22 10:48:38','86','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1778;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(145,'create','2016-10-22 10:48:38','87','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:813;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(146,'create','2016-10-22 10:48:38','30','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(147,'create','2016-10-22 10:48:38','30','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:12:\"Sticker \"ut\"\";s:11:\"description\";s:447:\"Praesentium magni nostrum sit alias. Veritatis ut maxime neque reiciendis omnis molestiae autem. Dolorem non voluptate expedita rerum numquam vero dolorem. A quaerat nisi maiores odit dolor.\n\nNihil possimus aliquid et sequi delectus. Reprehenderit rerum aperiam natus. Aspernatur nihil id aut optio voluptas dolor.\n\nDolorem dolorem sunt qui. Adipisci nisi aut vero rem. Sed magni voluptatum porro consequatur aut culpa ipsa. Et neque quo id nihil.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:174:\"Qui minima totam ab ut iste suscipit laborum quo. Cupiditate dignissimos laboriosam mollitia vitae ipsum a enim. Impedit officiis omnis quo sapiente molestiae ducimus minima.\";}',NULL),(148,'create','2016-10-22 10:48:38','88','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2124;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(149,'create','2016-10-22 10:48:38','89','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6945;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(150,'create','2016-10-22 10:48:38','90','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8734;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(151,'create','2016-10-22 10:48:38','31','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(152,'create','2016-10-22 10:48:38','31','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:26:\"Book \"sit\" by Aida Effertz\";s:11:\"description\";s:513:\"Deserunt cupiditate aut qui rerum in distinctio. Et nam et voluptas natus fugiat commodi vel. Et beatae in sit alias. At fugiat dicta quaerat cum illum.\n\nCommodi voluptatem sequi vel deleniti est. Voluptas soluta aut magni. Quo accusamus sapiente doloremque velit earum ratione velit.\n\nQui sit distinctio dolor aut qui est enim. Non ut odio adipisci sunt suscipit debitis autem. Harum doloribus voluptatem nobis ea quisquam. Sed consequatur ratione quibusdam placeat debitis ut. Laboriosam blanditiis sed aliquam.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:200:\"Dolore doloribus vel sit pariatur delectus perferendis. Officiis quo impedit consequatur voluptates qui expedita velit. Dolor rerum ea enim et quia. Sint est quam dignissimos dolore optio minus animi.\";}',NULL),(153,'create','2016-10-22 10:48:38','91','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3831;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(154,'create','2016-10-22 10:48:38','32','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(155,'create','2016-10-22 10:48:38','32','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:30:\"Book \"dolore\" by Shaylee Boyer\";s:11:\"description\";s:507:\"Ullam ea sunt aut. Dolor adipisci cum excepturi voluptas consequatur sed. Pariatur sed rerum autem nulla culpa doloribus magni. Consequatur sed sequi ipsam consequuntur doloremque.\n\nPlaceat quidem magnam molestias sit consectetur voluptatem fugit. Consequatur distinctio consequatur in cum.\n\nEsse tempora et at doloremque animi. Officiis rem consequatur magni modi ut pariatur consequatur. Officia eius fugit in quisquam quos. Aliquam incidunt reiciendis in soluta doloribus. Amet quia et labore architecto.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:231:\"Quis non facere beatae facere. Quibusdam sit sit enim ut dolor eligendi. Eligendi perferendis quisquam maiores consequuntur voluptas nam. Laboriosam eos tempore officiis et incidunt similique maxime. Consequatur eos quam quibusdam.\";}',NULL),(156,'create','2016-10-22 10:48:38','92','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6739;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(157,'create','2016-10-22 10:48:38','33','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(158,'create','2016-10-22 10:48:38','33','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:31:\"Book \"deserunt\" by Tia Donnelly\";s:11:\"description\";s:391:\"Quidem maxime veritatis impedit et. Adipisci consequatur dicta maiores quam ullam. Accusantium et quidem labore accusantium. Omnis tempore vel necessitatibus adipisci.\n\nCum quod aut aspernatur neque. Dolorem molestiae qui repellat at voluptas sunt error id. Non tempore quo non sapiente.\n\nPariatur itaque nemo quis autem fuga illo. Quam eum est laboriosam. Animi consequatur voluptatem illo.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:182:\"Dicta quia sit ea eum omnis. Reprehenderit velit doloremque voluptas labore officia. Praesentium alias similique dolor necessitatibus pariatur. Nihil alias molestiae blanditiis ipsa.\";}',NULL),(159,'create','2016-10-22 10:48:38','93','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2288;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(160,'create','2016-10-22 10:48:38','34','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(161,'create','2016-10-22 10:48:38','34','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:27:\"Book \"qui\" by May White PhD\";s:11:\"description\";s:394:\"Nihil et ab nemo. Quos porro deserunt et facere. Quis nihil placeat aut deserunt omnis ut.\n\nAnimi nihil et cupiditate tempore non sit ut. Error dolore amet cupiditate molestiae earum odio. Officiis est occaecati ad quasi.\n\nQuod ducimus vel quisquam ex quaerat vel quasi. Dolor et dolor nulla quam quo. Fugiat veritatis optio et voluptas eos qui consectetur. Explicabo facere vero culpa sed eos.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:167:\"Voluptatem non voluptates minus. Molestiae sed et libero fugit quia autem. Iste quisquam vitae similique ut fugit. Laudantium vel non itaque nam quo deserunt suscipit.\";}',NULL),(162,'create','2016-10-22 10:48:38','94','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:628;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(163,'create','2016-10-22 10:48:38','35','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(164,'create','2016-10-22 10:48:38','35','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:36:\"Book \"iste\" by Dr. Madelynn Kassulke\";s:11:\"description\";s:427:\"Nihil est qui maiores perspiciatis. Est quod quibusdam eum consequuntur enim et debitis. Aut aut expedita ipsum aliquam voluptatem saepe illum. Veritatis magnam mollitia quos. Corrupti earum corporis rerum voluptas.\n\nNulla dolores consequuntur voluptatem quasi voluptatum quisquam voluptas et. Iure nihil impedit dolorem. In qui assumenda est. Quia qui quis dignissimos.\n\nSimilique est iusto voluptas sed. Hic placeat et ad ut.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:219:\"Cupiditate accusantium voluptatibus sit harum accusantium voluptatem. Numquam laborum nostrum velit sint voluptatem deserunt esse ea. Voluptas et iure blanditiis aut cumque quasi aut. Non adipisci non et sit nisi neque.\";}',NULL),(165,'create','2016-10-22 10:48:38','95','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7972;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(166,'create','2016-10-22 10:48:38','36','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(167,'create','2016-10-22 10:48:38','36','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:38:\"Book \"libero\" by Westley Langworth PhD\";s:11:\"description\";s:498:\"Suscipit numquam expedita et ea quia eaque cum unde. Accusamus odio vitae repudiandae voluptates saepe quia. Beatae qui occaecati totam voluptatem tenetur suscipit nihil. Quaerat autem sapiente minus et nihil fugit. Sapiente voluptates voluptas rerum dolor.\n\nDolorum tempora saepe aut illo. Voluptates rerum cumque nihil. Recusandae a ut praesentium praesentium.\n\nAperiam numquam placeat sunt commodi natus. Sunt tempora perferendis doloremque alias illum iste. Eveniet nam ipsa magni ut molestiae.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:121:\"Est quod consectetur fuga est sit impedit. Reprehenderit reiciendis ut enim veritatis quis. Aliquid et porro est est sit.\";}',NULL),(168,'create','2016-10-22 10:48:38','96','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5701;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(169,'create','2016-10-22 10:48:38','37','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(170,'create','2016-10-22 10:48:38','37','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:28:\"Book \"et\" by Odie Johnson MD\";s:11:\"description\";s:487:\"Quibusdam beatae similique nam ut doloremque. Laudantium et sed et doloribus et. Nihil omnis qui beatae nulla. Sed at eveniet consequatur est quasi vitae soluta.\n\nSapiente dolorum accusantium et tempora non. Velit quisquam dolor ea molestias quo cupiditate ea. Asperiores velit illo illum reprehenderit quia. Necessitatibus at saepe quas.\n\nEum minus ad aliquam rem. Fugiat saepe architecto quisquam provident. Repellat consequatur qui nihil. Harum sit aliquid voluptatum similique culpa.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:159:\"Qui omnis officiis ut cum vel corporis voluptas impedit. Repudiandae et voluptas atque sequi vitae voluptatem. Officia in eum ut iure ea iure magni voluptatem.\";}',NULL),(171,'create','2016-10-22 10:48:38','97','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5776;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(172,'create','2016-10-22 10:48:38','38','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(173,'create','2016-10-22 10:48:38','38','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:33:\"Book \"maxime\" by Mariela Lubowitz\";s:11:\"description\";s:591:\"Aperiam officiis totam enim quod et ratione rerum. Similique nihil possimus repellat. Sed fugiat voluptatem cupiditate sapiente aspernatur adipisci maiores eum.\n\nEx laboriosam aperiam corporis perspiciatis et earum. Velit debitis maiores quaerat debitis et error. Et et adipisci quaerat nihil molestias eveniet. Sed quae quia blanditiis reprehenderit iste eos consequuntur dolore.\n\nIpsam possimus quia excepturi dolores placeat maxime alias laboriosam. Velit molestias corrupti doloremque magnam voluptate architecto eaque corporis. Excepturi itaque qui suscipit ipsum eos corrupti corporis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:171:\"Sunt incidunt eum optio et ipsum. Vel consequatur eum dolorem omnis quas corporis. Eveniet est saepe in corrupti. Necessitatibus eos dicta facere dolores minus asperiores.\";}',NULL),(174,'create','2016-10-22 10:48:38','98','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6802;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(175,'create','2016-10-22 10:48:38','39','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(176,'create','2016-10-22 10:48:38','39','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:33:\"Book \"debitis\" by Mrs. Janie Mohr\";s:11:\"description\";s:539:\"Commodi autem voluptates omnis quasi beatae numquam omnis. Labore soluta nam error quia laudantium facilis voluptas. Maiores debitis aut sit eos quas. Nihil assumenda saepe in consectetur occaecati impedit.\n\nFacere voluptatibus quae eligendi sit ex. Et fugiat eaque in iste repellendus quis. Praesentium explicabo quia sit quia aliquid qui enim. Voluptatum veniam neque error et est.\n\nNon voluptatem laborum vel voluptatem laudantium laudantium. Aut quia dolore quo adipisci. Sunt voluptate aut veritatis voluptas similique in consequatur.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:188:\"Soluta est est cum odit in minus sit. Iusto minus voluptas quia a minus. Reiciendis nihil odio deleniti similique dolores delectus quaerat. Ut ea voluptatem eligendi atque ut occaecati ad.\";}',NULL),(177,'create','2016-10-22 10:48:38','99','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5188;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(178,'create','2016-10-22 10:48:38','40','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:38.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(179,'create','2016-10-22 10:48:38','40','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:31:\"Book \"vero\" by Ms. Aletha Upton\";s:11:\"description\";s:714:\"Eaque velit laboriosam iste alias voluptate. Et blanditiis explicabo recusandae aperiam consequatur esse hic. Incidunt aperiam adipisci aliquid et aut. Sint impedit in corporis et ab deserunt officiis id. Possimus a aperiam voluptatem doloremque consequatur vero.\n\nConsectetur modi eos esse fugiat reiciendis dolores iste. Qui explicabo excepturi ducimus asperiores tempore ullam est accusamus. Officiis occaecati dicta assumenda quisquam ut quia temporibus. Temporibus exercitationem velit nesciunt facilis voluptates quidem ad.\n\nVel et vel molestias debitis saepe. Magni quaerat hic molestias error delectus. Ratione voluptatem aut sit culpa beatae quia tenetur sint. Et minima id sunt vero repellat itaque quas.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:163:\"Omnis accusamus aut quidem quis exercitationem itaque. Ratione vitae laudantium corrupti modi. Ut aut animi qui tempore rerum a. Dolore incidunt quasi consequatur.\";}',NULL),(180,'create','2016-10-22 10:48:38','100','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6629;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(181,'create','2016-10-22 10:48:39','41','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(182,'create','2016-10-22 10:48:39','41','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:29:\"Book \"sint\" by Nikki Franecki\";s:11:\"description\";s:514:\"Quis est velit vitae a dicta nisi. Deserunt assumenda natus est molestiae qui qui. Sunt ullam qui nesciunt in optio autem ipsam.\n\nSoluta rerum inventore non saepe. Qui quo repellendus aut nihil repellendus. Maxime rerum et earum in aut quia id. Porro explicabo quia suscipit corporis autem. Aut suscipit cumque dolorum vitae.\n\nCommodi enim ut in eaque. Sit impedit consequatur veniam dignissimos autem dolor recusandae. Deleniti repellendus quis distinctio omnis. Voluptatem nesciunt molestias voluptates possimus.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:187:\"Omnis earum voluptas animi at ab sunt quis. Repellendus natus voluptatibus ut rerum. Excepturi aut incidunt deserunt delectus at. Quidem repellat sit ex adipisci accusamus id repudiandae.\";}',NULL),(183,'create','2016-10-22 10:48:39','101','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4053;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(184,'create','2016-10-22 10:48:39','42','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(185,'create','2016-10-22 10:48:39','42','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:44:\"Book \"laudantium\" by Dr. Reinhold Weimann II\";s:11:\"description\";s:340:\"Fugiat voluptates aliquid quidem ex et. Porro et est non.\n\nRerum dolorum et vel voluptate sed suscipit. Dolores nam quae veritatis ad commodi in veritatis. Eligendi consectetur reiciendis dicta quas. Id ex dolor quo fuga consequatur veniam.\n\nIste quas eos sint aut. Voluptatem aperiam quas provident ea repellat repellendus dolores officia.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:110:\"Et sed reprehenderit quas ut tenetur. Ratione officia dolorum omnis ut aut quisquam. Quo est et ea sit magnam.\";}',NULL),(186,'create','2016-10-22 10:48:39','102','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8013;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(187,'create','2016-10-22 10:48:39','43','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(188,'create','2016-10-22 10:48:39','43','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:37:\"Book \"expedita\" by Rosella Labadie MD\";s:11:\"description\";s:594:\"Consectetur cumque qui qui quod reiciendis iste. Atque autem vitae quia harum inventore quis repellat. Eos vel dolorem maiores et. Veritatis possimus aspernatur ut odio porro.\n\nQuos ut voluptatem possimus laboriosam cumque. Est maiores aut quasi est veniam hic. Rerum expedita odit asperiores eum et consequuntur eaque. Itaque aliquam sit vero sit vero necessitatibus qui quas.\n\nError qui soluta aperiam ipsum eum vel optio. Dolorem ipsam perspiciatis molestiae in. Non quod beatae reprehenderit et. In ipsa placeat modi repudiandae optio in cum. Aperiam eum voluptatibus aut eaque velit dolor.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:138:\"Delectus repudiandae sunt et quaerat aut. Corporis voluptas incidunt veritatis quam quo blanditiis sed provident. Nobis et iusto pariatur.\";}',NULL),(189,'create','2016-10-22 10:48:39','103','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3179;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(190,'create','2016-10-22 10:48:39','44','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(191,'create','2016-10-22 10:48:39','44','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:32:\"Book \"voluptatem\" by Okey Wehner\";s:11:\"description\";s:506:\"Dolorem non in possimus. Consequuntur quod qui exercitationem minima sint quis in illo. Rerum minus ut sunt distinctio quis. Ad laborum fugiat sed a rerum.\n\nAspernatur velit saepe totam eius odit. Aperiam eveniet ducimus aut provident. Excepturi sit exercitationem eos et iusto suscipit sint mollitia. Odit magni placeat voluptatem nihil repudiandae nam sit consectetur.\n\nUt at totam quam iure. Cum sunt aut eveniet vel quia sed. Voluptatibus omnis et aperiam et excepturi. Optio velit magni qui eos culpa.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:177:\"Corporis eius quo et sunt natus. Qui dolorem reprehenderit et non delectus. Debitis amet fugit est nesciunt et quisquam consequatur. Aut dignissimos quia ut id eveniet modi est.\";}',NULL),(192,'create','2016-10-22 10:48:39','104','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9801;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(193,'create','2016-10-22 10:48:39','45','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(194,'create','2016-10-22 10:48:39','45','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:24:\"Book \"est\" by Aliya Roob\";s:11:\"description\";s:532:\"Aperiam qui consequatur quos delectus enim. Aut assumenda omnis facere ullam aut nihil modi quis. Quibusdam aperiam odio aut deleniti consequatur repellat. Labore laboriosam qui aut nostrum.\n\nNobis voluptas hic saepe ad est asperiores dolor. Rerum est consequatur sequi impedit autem itaque dolor. Et ut ut consequatur quasi omnis assumenda ipsa. Dolorum iusto quos tenetur voluptates molestiae deleniti.\n\nQuos tenetur beatae animi consectetur tempore est. Voluptatum vel laudantium et totam saepe. Impedit sit id possimus voluptas.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:189:\"Ea laborum sed amet eaque sit eum rerum molestiae. Iure inventore voluptate fugiat non. Sint accusamus officiis esse accusantium facere dolor. Minus esse facilis dolorem tempore porro amet.\";}',NULL),(195,'create','2016-10-22 10:48:39','105','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2346;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(196,'create','2016-10-22 10:48:39','46','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(197,'create','2016-10-22 10:48:39','46','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:18:\"T-Shirt \"corporis\"\";s:11:\"description\";s:482:\"Sit rem aliquam voluptatem. Laborum sit tenetur blanditiis. Dolor nostrum quasi sunt dolores pariatur asperiores mollitia. Aut voluptatibus consequuntur veniam.\n\nCum nam est suscipit ab animi et. A soluta animi dolores rerum fuga et occaecati eveniet. Molestiae cumque ut qui quae facere tenetur ut. Quo cumque voluptate sed voluptas consequatur.\n\nTotam magnam cumque dicta eos. Neque non non esse dolorem adipisci. Quisquam nesciunt quia repellat voluptatem. Sint aut veritatis et.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:132:\"Est inventore delectus nobis facere praesentium et. Dolorem dicta rerum quibusdam. Veniam sed ea repellat dolor sed animi natus non.\";}',NULL),(198,'create','2016-10-22 10:48:39','106','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3328;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(199,'create','2016-10-22 10:48:39','107','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6708;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(200,'create','2016-10-22 10:48:39','108','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2851;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(201,'create','2016-10-22 10:48:39','109','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6409;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(202,'create','2016-10-22 10:48:39','110','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4438;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(203,'create','2016-10-22 10:48:39','111','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4884;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(204,'create','2016-10-22 10:48:39','112','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9217;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(205,'create','2016-10-22 10:48:39','113','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8868;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(206,'create','2016-10-22 10:48:39','114','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4826;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(207,'create','2016-10-22 10:48:39','115','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2539;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(208,'create','2016-10-22 10:48:39','116','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4351;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(209,'create','2016-10-22 10:48:39','117','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8619;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(210,'create','2016-10-22 10:48:39','118','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1866;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(211,'create','2016-10-22 10:48:39','119','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6832;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(212,'create','2016-10-22 10:48:39','120','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5912;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(213,'create','2016-10-22 10:48:39','47','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(214,'create','2016-10-22 10:48:39','47','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"T-Shirt \"est\"\";s:11:\"description\";s:552:\"Voluptas maiores perspiciatis saepe beatae quod voluptatem. Repudiandae quae eum doloribus tenetur quia nihil. Nulla voluptas dolor qui distinctio illum. Quisquam nihil magnam vitae odio sint eius.\n\nDignissimos eligendi corporis similique dolorum laborum a. Exercitationem harum officiis voluptatem dolor. Omnis fugiat dolor dicta eos necessitatibus voluptas.\n\nVoluptatum quidem dignissimos porro consequuntur. Sunt qui et deleniti maxime laudantium inventore. Ut quam repellendus earum velit qui provident. Maxime nulla aliquid quis vel dolorum fugit.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:129:\"Iure qui nemo doloribus. Totam rerum nihil et cum dicta error. Possimus inventore fugit quasi eligendi rerum delectus rem libero.\";}',NULL),(215,'create','2016-10-22 10:48:39','121','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6292;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(216,'create','2016-10-22 10:48:39','122','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1903;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(217,'create','2016-10-22 10:48:39','123','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7969;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(218,'create','2016-10-22 10:48:39','124','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6728;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(219,'create','2016-10-22 10:48:39','125','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9803;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(220,'create','2016-10-22 10:48:39','126','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6239;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(221,'create','2016-10-22 10:48:39','127','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3116;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(222,'create','2016-10-22 10:48:39','128','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5035;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(223,'create','2016-10-22 10:48:39','129','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8274;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(224,'create','2016-10-22 10:48:39','130','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3561;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(225,'create','2016-10-22 10:48:39','131','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5183;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(226,'create','2016-10-22 10:48:39','132','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7808;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(227,'create','2016-10-22 10:48:39','133','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6714;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(228,'create','2016-10-22 10:48:39','134','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2441;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(229,'create','2016-10-22 10:48:39','135','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6384;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(230,'create','2016-10-22 10:48:39','48','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(231,'create','2016-10-22 10:48:39','48','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:20:\"T-Shirt \"laudantium\"\";s:11:\"description\";s:390:\"Aut molestias natus asperiores voluptates facere perferendis suscipit. Maxime est et totam quia fuga omnis enim. Blanditiis cumque eos esse aspernatur.\n\nAt officiis quod dolore asperiores odit dolor distinctio. Nobis sed dolore mollitia omnis dignissimos.\n\nEum voluptas vel harum omnis odio. Quam repudiandae et velit et. Error et est accusamus assumenda. Eligendi recusandae quia dicta et.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:145:\"Aliquam possimus vero quo saepe. Alias provident tempora in sit repudiandae aliquid quod. Similique provident eaque dolorem et facere quas nihil.\";}',NULL),(232,'create','2016-10-22 10:48:39','136','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4762;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(233,'create','2016-10-22 10:48:39','137','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9532;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(234,'create','2016-10-22 10:48:39','138','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7244;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(235,'create','2016-10-22 10:48:39','139','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9701;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(236,'create','2016-10-22 10:48:39','140','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4504;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(237,'create','2016-10-22 10:48:39','141','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:892;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(238,'create','2016-10-22 10:48:39','142','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4340;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(239,'create','2016-10-22 10:48:39','143','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4690;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(240,'create','2016-10-22 10:48:39','144','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5398;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(241,'create','2016-10-22 10:48:39','145','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7327;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(242,'create','2016-10-22 10:48:39','146','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3884;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(243,'create','2016-10-22 10:48:39','147','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8248;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(244,'create','2016-10-22 10:48:39','148','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9909;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(245,'create','2016-10-22 10:48:39','149','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7004;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(246,'create','2016-10-22 10:48:39','150','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2525;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(247,'create','2016-10-22 10:48:39','49','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(248,'create','2016-10-22 10:48:39','49','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"T-Shirt \"dolorem\"\";s:11:\"description\";s:423:\"Voluptatem excepturi modi quaerat laboriosam. Reprehenderit voluptas quae sit omnis vero alias ut dicta. Ipsa sit et sit deleniti. Velit fugiat non numquam.\n\nRerum ut quam dolorem facilis. Sint reprehenderit molestiae impedit et est ad et. Voluptate non dolor quasi quia ea autem.\n\nVoluptatum eum aut exercitationem omnis. Ut et officiis beatae repellat enim. Neque non aspernatur neque illum nihil quia earum perspiciatis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:153:\"Ut ea laboriosam ex cum excepturi consequatur dignissimos. Assumenda sed non quia porro qui repellendus. Esse explicabo et placeat dolore sunt quia quia.\";}',NULL),(249,'create','2016-10-22 10:48:39','151','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8847;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(250,'create','2016-10-22 10:48:39','152','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7993;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(251,'create','2016-10-22 10:48:39','153','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1302;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(252,'create','2016-10-22 10:48:39','154','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8053;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(253,'create','2016-10-22 10:48:39','155','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8047;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(254,'create','2016-10-22 10:48:39','156','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7101;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(255,'create','2016-10-22 10:48:39','157','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:197;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(256,'create','2016-10-22 10:48:39','158','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5950;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(257,'create','2016-10-22 10:48:39','159','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5306;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(258,'create','2016-10-22 10:48:39','160','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1823;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(259,'create','2016-10-22 10:48:39','161','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5620;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(260,'create','2016-10-22 10:48:39','162','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3447;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(261,'create','2016-10-22 10:48:39','163','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5353;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(262,'create','2016-10-22 10:48:39','164','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9091;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(263,'create','2016-10-22 10:48:39','165','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2982;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(264,'create','2016-10-22 10:48:39','50','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(265,'create','2016-10-22 10:48:39','50','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"T-Shirt \"rerum\"\";s:11:\"description\";s:443:\"Laudantium cumque facilis ut aperiam nam vel. Qui ut quidem qui necessitatibus ipsum. Eos aut possimus autem. Tenetur et qui facere amet.\n\nQui quos tempora architecto a. Reprehenderit vel laboriosam ab omnis. Et in aut porro. In voluptate dolore error vero rerum est aut.\n\nOmnis rem tempora odit non. Odit necessitatibus molestias delectus unde. Sint expedita laboriosam ullam. Omnis quaerat nihil minima cumque corrupti doloremque blanditiis.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:144:\"Et culpa consequatur in. Ut nobis iusto ea reiciendis corporis voluptates. Deleniti distinctio dolores voluptate ipsum qui est laboriosam animi.\";}',NULL),(266,'create','2016-10-22 10:48:39','166','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:522;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(267,'create','2016-10-22 10:48:39','167','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6911;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(268,'create','2016-10-22 10:48:39','168','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3469;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(269,'create','2016-10-22 10:48:39','169','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:529;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(270,'create','2016-10-22 10:48:39','170','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7557;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(271,'create','2016-10-22 10:48:39','171','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5288;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(272,'create','2016-10-22 10:48:39','172','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2797;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(273,'create','2016-10-22 10:48:39','173','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:899;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(274,'create','2016-10-22 10:48:39','174','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9553;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(275,'create','2016-10-22 10:48:39','175','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9529;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(276,'create','2016-10-22 10:48:39','176','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4902;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(277,'create','2016-10-22 10:48:39','177','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7655;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(278,'create','2016-10-22 10:48:39','178','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1112;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(279,'create','2016-10-22 10:48:39','179','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2157;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(280,'create','2016-10-22 10:48:39','180','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2073;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(281,'create','2016-10-22 10:48:39','51','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(282,'create','2016-10-22 10:48:39','51','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:17:\"T-Shirt \"quaerat\"\";s:11:\"description\";s:472:\"Et ut in sit quasi repellat deserunt nam. Maxime repellendus ut odio dolor vel laudantium dignissimos. Voluptatem sunt dolores qui assumenda voluptas.\n\nAut unde ut nobis inventore. Consequatur voluptas recusandae consequatur et dolor inventore. Sed placeat vitae non error. Ipsam aperiam nisi vel.\n\nCumque quos repellat nobis perferendis. Minus et est dolore sint accusantium similique. Accusantium ut similique beatae provident nihil recusandae. Ad et enim omnis ratione.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:164:\"Quisquam omnis rem possimus dolores et. Rem harum adipisci sapiente omnis consequatur laborum suscipit. Vel occaecati quae reprehenderit exercitationem expedita ab.\";}',NULL),(283,'create','2016-10-22 10:48:39','181','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2169;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(284,'create','2016-10-22 10:48:39','182','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2226;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(285,'create','2016-10-22 10:48:39','183','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1705;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(286,'create','2016-10-22 10:48:39','184','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8694;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(287,'create','2016-10-22 10:48:39','185','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2589;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(288,'create','2016-10-22 10:48:39','186','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5933;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(289,'create','2016-10-22 10:48:39','187','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6687;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(290,'create','2016-10-22 10:48:39','188','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3749;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(291,'create','2016-10-22 10:48:39','189','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4739;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(292,'create','2016-10-22 10:48:39','190','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5627;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(293,'create','2016-10-22 10:48:39','191','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5651;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(294,'create','2016-10-22 10:48:39','192','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:442;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(295,'create','2016-10-22 10:48:39','193','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6669;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(296,'create','2016-10-22 10:48:39','194','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8524;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(297,'create','2016-10-22 10:48:39','195','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6383;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(298,'create','2016-10-22 10:48:39','52','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(299,'create','2016-10-22 10:48:39','52','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:19:\"T-Shirt \"explicabo\"\";s:11:\"description\";s:468:\"Eligendi et voluptatum velit dolores. Illo in necessitatibus deleniti officia cupiditate facilis perspiciatis. Vel ipsa non laboriosam sit ea qui quia.\n\nEt hic consectetur et error cupiditate dolore alias quia. Repudiandae adipisci voluptate porro esse est eos. Et earum omnis optio ut voluptate.\n\nEligendi tempora nesciunt ut qui laudantium necessitatibus iure. Iste similique praesentium in fugiat nisi quibusdam ea. Delectus odit vero in soluta quia blanditiis non.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:254:\"Reiciendis modi id ducimus vel provident voluptatem. Corporis alias expedita facilis voluptas delectus molestias praesentium sed. Corporis maxime labore excepturi quidem doloribus eos et praesentium. Iusto quia tenetur voluptatem aperiam et odit eveniet.\";}',NULL),(300,'create','2016-10-22 10:48:39','196','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6945;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(301,'create','2016-10-22 10:48:39','197','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:163;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(302,'create','2016-10-22 10:48:39','198','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3672;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(303,'create','2016-10-22 10:48:39','199','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7034;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(304,'create','2016-10-22 10:48:39','200','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:902;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(305,'create','2016-10-22 10:48:39','201','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9879;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(306,'create','2016-10-22 10:48:39','202','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6388;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(307,'create','2016-10-22 10:48:39','203','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7119;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(308,'create','2016-10-22 10:48:39','204','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8601;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(309,'create','2016-10-22 10:48:39','205','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4666;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(310,'create','2016-10-22 10:48:39','206','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4086;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(311,'create','2016-10-22 10:48:39','207','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6193;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(312,'create','2016-10-22 10:48:39','208','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7575;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(313,'create','2016-10-22 10:48:39','209','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7631;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(314,'create','2016-10-22 10:48:39','210','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1186;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(315,'create','2016-10-22 10:48:39','53','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(316,'create','2016-10-22 10:48:39','53','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:21:\"T-Shirt \"consectetur\"\";s:11:\"description\";s:442:\"Consequatur qui dignissimos harum ut quia. Iste odio nulla aut temporibus quo rerum. Velit non velit nihil non eum commodi ipsa vel. Eos mollitia nihil et molestias atque pariatur.\n\nRem recusandae qui necessitatibus ipsam voluptatem asperiores. Ad beatae quia non. Aspernatur et eaque illum.\n\nSuscipit cum aut molestias in omnis ut. Exercitationem et molestiae officia voluptas animi exercitationem. Itaque qui fugiat laboriosam voluptas hic.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:123:\"Doloribus possimus maiores aliquid. Rerum nihil reiciendis quo. Laudantium ab beatae tempore odit ducimus adipisci quaerat.\";}',NULL),(317,'create','2016-10-22 10:48:39','211','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(318,'create','2016-10-22 10:48:39','212','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6025;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(319,'create','2016-10-22 10:48:39','213','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3707;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(320,'create','2016-10-22 10:48:39','214','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7707;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(321,'create','2016-10-22 10:48:39','215','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1233;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(322,'create','2016-10-22 10:48:39','216','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:351;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(323,'create','2016-10-22 10:48:39','217','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8493;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(324,'create','2016-10-22 10:48:39','218','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5377;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(325,'create','2016-10-22 10:48:39','219','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:450;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(326,'create','2016-10-22 10:48:39','220','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6075;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(327,'create','2016-10-22 10:48:39','221','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:312;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(328,'create','2016-10-22 10:48:39','222','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9932;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(329,'create','2016-10-22 10:48:39','223','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4084;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(330,'create','2016-10-22 10:48:39','224','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1679;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(331,'create','2016-10-22 10:48:39','225','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1328;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(332,'create','2016-10-22 10:48:39','54','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(333,'create','2016-10-22 10:48:39','54','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:20:\"T-Shirt \"asperiores\"\";s:11:\"description\";s:481:\"Rerum aut sapiente exercitationem eveniet tenetur ad sit. Dolores et commodi vel error ducimus ut consequatur. Pariatur id repudiandae non adipisci asperiores.\n\nRatione repellat illum eos libero fugit. Error consequuntur minus accusantium inventore et aliquam aut. Sapiente officiis accusamus tenetur. At a corporis facilis necessitatibus consequatur iste.\n\nQuas pariatur et libero quibusdam. Est quia id unde reiciendis iure est dolorem. Repellat odio ex odit qui mollitia maxime.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:137:\"Sunt ut voluptatem similique voluptatem possimus illo itaque totam. Vero in repellat quasi dolorum. Aut a temporibus accusamus molestias.\";}',NULL),(334,'create','2016-10-22 10:48:39','226','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1250;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(335,'create','2016-10-22 10:48:39','227','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6171;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(336,'create','2016-10-22 10:48:39','228','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4732;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(337,'create','2016-10-22 10:48:39','229','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7164;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(338,'create','2016-10-22 10:48:39','230','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6670;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(339,'create','2016-10-22 10:48:39','231','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5846;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(340,'create','2016-10-22 10:48:39','232','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9359;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(341,'create','2016-10-22 10:48:39','233','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4736;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(342,'create','2016-10-22 10:48:39','234','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9676;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(343,'create','2016-10-22 10:48:39','235','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7795;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(344,'create','2016-10-22 10:48:39','236','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7138;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(345,'create','2016-10-22 10:48:39','237','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5937;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(346,'create','2016-10-22 10:48:39','238','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4775;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(347,'create','2016-10-22 10:48:39','239','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1893;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(348,'create','2016-10-22 10:48:39','240','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3055;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(349,'create','2016-10-22 10:48:39','55','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(350,'create','2016-10-22 10:48:39','55','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"T-Shirt \"non\"\";s:11:\"description\";s:550:\"Voluptatem et voluptates alias est adipisci odio. Soluta sit mollitia alias aperiam nihil numquam labore. Harum sint quia numquam ut voluptatem. Aut amet soluta neque maxime ullam blanditiis et sunt.\n\nQuisquam amet sed sunt dignissimos tempore ipsum quod. Fugit dolorem dicta eum quo quia. Dolores fuga et nihil delectus molestias voluptatem enim. Ex aliquid ut aut voluptas et.\n\nEt ut voluptatum maxime minima et iusto vel sit. Quia eum illo voluptatem mollitia nihil fugiat. Qui nisi dicta ut quia modi. Cupiditate atque harum est nulla earum ipsa.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:115:\"Id voluptatibus ipsa et. Ut quam unde maxime dolores. Soluta similique repudiandae tenetur facilis doloremque sunt.\";}',NULL),(351,'create','2016-10-22 10:48:39','241','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6832;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(352,'create','2016-10-22 10:48:39','242','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2883;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(353,'create','2016-10-22 10:48:39','243','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9796;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(354,'create','2016-10-22 10:48:39','244','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7206;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(355,'create','2016-10-22 10:48:39','245','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5682;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(356,'create','2016-10-22 10:48:39','246','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4367;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(357,'create','2016-10-22 10:48:39','247','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4914;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(358,'create','2016-10-22 10:48:39','248','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5315;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(359,'create','2016-10-22 10:48:39','249','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8712;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(360,'create','2016-10-22 10:48:39','250','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7822;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(361,'create','2016-10-22 10:48:39','251','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4235;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(362,'create','2016-10-22 10:48:39','252','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2968;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(363,'create','2016-10-22 10:48:39','253','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:458;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(364,'create','2016-10-22 10:48:39','254','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5429;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(365,'create','2016-10-22 10:48:39','255','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3330;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(366,'create','2016-10-22 10:48:40','56','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(367,'create','2016-10-22 10:48:40','56','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"T-Shirt \"est\"\";s:11:\"description\";s:503:\"Accusamus qui ex voluptas quis sit. Fugit et error labore quis occaecati. Sed voluptatem est magni et autem. Illum sapiente eveniet molestias est modi.\n\nVel est in fugit nisi ipsum. Harum eos deserunt quis est dolorum et. Voluptates repellendus corrupti et harum totam nesciunt iste molestias. Aut fugiat nihil ratione qui quidem voluptate aut.\n\nArchitecto quia expedita eius quasi sunt atque itaque aut. Repellat adipisci maxime est molestias. Voluptas velit voluptas sed. Sed ad inventore autem nihil.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:147:\"Similique ut eius eos ab quo tenetur quis. Voluptatum rerum optio quam porro quia et. Non sit quo repellat illo excepturi dolor temporibus nostrum.\";}',NULL),(368,'create','2016-10-22 10:48:40','256','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:16;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(369,'create','2016-10-22 10:48:40','257','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7114;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(370,'create','2016-10-22 10:48:40','258','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7087;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(371,'create','2016-10-22 10:48:40','259','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1055;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(372,'create','2016-10-22 10:48:40','260','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5253;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(373,'create','2016-10-22 10:48:40','261','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7045;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(374,'create','2016-10-22 10:48:40','262','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1217;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(375,'create','2016-10-22 10:48:40','263','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3299;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(376,'create','2016-10-22 10:48:40','264','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1661;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(377,'create','2016-10-22 10:48:40','265','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6635;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(378,'create','2016-10-22 10:48:40','266','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3820;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(379,'create','2016-10-22 10:48:40','267','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5043;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(380,'create','2016-10-22 10:48:40','268','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:79;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(381,'create','2016-10-22 10:48:40','269','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:253;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(382,'create','2016-10-22 10:48:40','270','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7319;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(383,'create','2016-10-22 10:48:40','57','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(384,'create','2016-10-22 10:48:40','57','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:14:\"T-Shirt \"illo\"\";s:11:\"description\";s:417:\"Voluptas earum eius nobis. Eaque non exercitationem vel aut rerum quia. Iusto consequatur rerum eos et rerum voluptatum non. Consectetur est porro id voluptate tempora cupiditate.\n\nSed nihil quia sunt fuga. Quas et a omnis quasi velit dolorem. Ut velit doloremque tempora eligendi quos quia quo quasi.\n\nUt non ducimus culpa ullam consectetur sit occaecati. Atque voluptatem ipsam aliquid voluptatem sapiente vitae in.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:180:\"Voluptatem eos recusandae natus iusto culpa accusamus sequi. Quia ut quaerat sed optio nisi cum. Sed dolorem ipsa distinctio asperiores. Qui et cupiditate facere saepe accusantium.\";}',NULL),(385,'create','2016-10-22 10:48:40','271','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1404;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(386,'create','2016-10-22 10:48:40','272','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5664;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(387,'create','2016-10-22 10:48:40','273','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1099;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(388,'create','2016-10-22 10:48:40','274','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3566;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(389,'create','2016-10-22 10:48:40','275','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6904;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(390,'create','2016-10-22 10:48:40','276','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9953;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(391,'create','2016-10-22 10:48:40','277','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:998;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(392,'create','2016-10-22 10:48:40','278','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4634;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(393,'create','2016-10-22 10:48:40','279','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8705;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(394,'create','2016-10-22 10:48:40','280','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9667;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(395,'create','2016-10-22 10:48:40','281','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1462;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(396,'create','2016-10-22 10:48:40','282','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9841;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(397,'create','2016-10-22 10:48:40','283','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6057;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(398,'create','2016-10-22 10:48:40','284','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4311;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(399,'create','2016-10-22 10:48:40','285','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4549;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(400,'create','2016-10-22 10:48:40','58','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(401,'create','2016-10-22 10:48:40','58','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"T-Shirt \"nobis\"\";s:11:\"description\";s:533:\"Voluptas deleniti aliquid impedit atque dicta dolorem. Laudantium tenetur iusto aut quibusdam consequatur. Voluptas ipsum expedita molestiae incidunt nulla deserunt.\n\nEt voluptate voluptates natus et. Quo illum et minima quos. Repellendus nemo incidunt ducimus quas. Libero est suscipit voluptatem sapiente laudantium laudantium.\n\nSit eos aspernatur mollitia quisquam tenetur. Quaerat qui nesciunt adipisci ea ipsum officia inventore. Aspernatur debitis voluptas voluptate cum. Sint praesentium sit debitis veritatis vitae vitae est.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:140:\"Est et possimus unde voluptas officia quis illum. Temporibus a sunt ut reprehenderit laudantium eaque. Quos nostrum pariatur eius harum qui.\";}',NULL),(402,'create','2016-10-22 10:48:40','286','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6654;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(403,'create','2016-10-22 10:48:40','287','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8569;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(404,'create','2016-10-22 10:48:40','288','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4024;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(405,'create','2016-10-22 10:48:40','289','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6335;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(406,'create','2016-10-22 10:48:40','290','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1432;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(407,'create','2016-10-22 10:48:40','291','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:520;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(408,'create','2016-10-22 10:48:40','292','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1054;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(409,'create','2016-10-22 10:48:40','293','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2993;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(410,'create','2016-10-22 10:48:40','294','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9759;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(411,'create','2016-10-22 10:48:40','295','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6304;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(412,'create','2016-10-22 10:48:40','296','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:760;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(413,'create','2016-10-22 10:48:40','297','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8173;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(414,'create','2016-10-22 10:48:40','298','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:583;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(415,'create','2016-10-22 10:48:40','299','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1577;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(416,'create','2016-10-22 10:48:40','300','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5540;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(417,'create','2016-10-22 10:48:40','59','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(418,'create','2016-10-22 10:48:40','59','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:13:\"T-Shirt \"non\"\";s:11:\"description\";s:396:\"Impedit at amet iusto quibusdam et voluptatem inventore. Aut magnam ut a. In optio accusantium non perspiciatis omnis. Qui ratione qui neque.\n\nIllum hic at dolorem ipsum. Quia architecto qui sit eaque possimus explicabo.\n\nDistinctio magni aut accusamus exercitationem. Saepe repudiandae blanditiis in magnam odit. Officiis nihil qui velit quis repudiandae. Vero tempore voluptas voluptatum alias.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:167:\"Iusto qui ut error et laudantium. Omnis qui ea et quia repudiandae. Odio impedit est qui impedit perspiciatis ea est. Quod et qui cumque accusamus illum sint deleniti.\";}',NULL),(419,'create','2016-10-22 10:48:40','301','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6274;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(420,'create','2016-10-22 10:48:40','302','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9281;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(421,'create','2016-10-22 10:48:40','303','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9308;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(422,'create','2016-10-22 10:48:40','304','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9337;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(423,'create','2016-10-22 10:48:40','305','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4844;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(424,'create','2016-10-22 10:48:40','306','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7174;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(425,'create','2016-10-22 10:48:40','307','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8809;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(426,'create','2016-10-22 10:48:40','308','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3799;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(427,'create','2016-10-22 10:48:40','309','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6559;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(428,'create','2016-10-22 10:48:40','310','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7129;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(429,'create','2016-10-22 10:48:40','311','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4722;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(430,'create','2016-10-22 10:48:40','312','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:436;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(431,'create','2016-10-22 10:48:40','313','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2758;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(432,'create','2016-10-22 10:48:40','314','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4471;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(433,'create','2016-10-22 10:48:40','315','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9189;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(434,'create','2016-10-22 10:48:40','60','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-22 10:48:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(435,'create','2016-10-22 10:48:40','60','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:15:\"T-Shirt \"iusto\"\";s:11:\"description\";s:387:\"Ut iste provident aut. Velit explicabo odio similique. Autem esse quis fugit alias incidunt a.\n\nRem incidunt asperiores perferendis velit nam laboriosam quaerat. Reiciendis accusantium praesentium omnis ut et. Autem modi provident et maxime aut.\n\nLaborum a cupiditate non tempora. Repellendus est ratione eveniet veniam repellat iusto labore. Voluptatem sed totam voluptatem velit rerum.\";s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";s:210:\"Temporibus error nihil dolores odit ratione fugiat. Qui architecto numquam illo. Et saepe iusto blanditiis et. Voluptas iusto voluptate optio dolorem cupiditate vitae. Provident nobis ut consequuntur in soluta.\";}',NULL),(436,'create','2016-10-22 10:48:40','316','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1200;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(437,'create','2016-10-22 10:48:40','317','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1853;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(438,'create','2016-10-22 10:48:40','318','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4051;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(439,'create','2016-10-22 10:48:40','319','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4456;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(440,'create','2016-10-22 10:48:40','320','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3778;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(441,'create','2016-10-22 10:48:40','321','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6337;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(442,'create','2016-10-22 10:48:40','322','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:2810;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(443,'create','2016-10-22 10:48:40','323','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:4985;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(444,'create','2016-10-22 10:48:40','324','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:7941;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(445,'create','2016-10-22 10:48:40','325','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5815;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(446,'create','2016-10-22 10:48:40','326','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:6573;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(447,'create','2016-10-22 10:48:40','327','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3769;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(448,'create','2016-10-22 10:48:40','328','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9233;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(449,'create','2016-10-22 10:48:40','329','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:3420;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(450,'create','2016-10-22 10:48:40','330','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:5312;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(451,'create','2016-10-22 10:48:42','1','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(452,'create','2016-10-22 10:48:42','1','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Fredy\";s:8:\"lastName\";s:5:\"Jones\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Schmidt Meadow\";s:7:\"company\";N;s:4:\"city\";s:11:\"Jayceemouth\";s:8:\"postcode\";s:5:\"23317\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(453,'create','2016-10-22 10:48:42','1','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:61830;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(454,'create','2016-10-22 10:48:42','1','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:628;}',NULL),(455,'create','2016-10-22 10:48:42','2','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:6654;}',NULL),(456,'create','2016-10-22 10:48:42','3','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:7174;}',NULL),(457,'create','2016-10-22 10:48:42','4','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6802;}',NULL),(458,'create','2016-10-22 10:48:42','2','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(459,'create','2016-10-22 10:48:42','2','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Vivien\";s:8:\"lastName\";s:6:\"Ernser\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Zemlak Ramp\";s:7:\"company\";N;s:4:\"city\";s:10:\"West Ellie\";s:8:\"postcode\";s:10:\"58833-6151\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(460,'create','2016-10-22 10:48:42','2','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:9415;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(461,'create','2016-10-22 10:48:42','5','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:1099;}',NULL),(462,'create','2016-10-22 10:48:42','3','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(463,'create','2016-10-22 10:48:42','3','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Cleo\";s:8:\"lastName\";s:8:\"Kshlerin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Dino Flats\";s:7:\"company\";N;s:4:\"city\";s:13:\"Jackelinefort\";s:8:\"postcode\";s:10:\"48421-4459\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(464,'create','2016-10-22 10:48:42','3','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:74430;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(465,'create','2016-10-22 10:48:42','6','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:1295;}',NULL),(466,'create','2016-10-22 10:48:42','7','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:4053;}',NULL),(467,'create','2016-10-22 10:48:42','8','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:4775;}',NULL),(468,'create','2016-10-22 10:48:42','9','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:8053;}',NULL),(469,'create','2016-10-22 10:48:42','10','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:8881;}',NULL),(470,'create','2016-10-22 10:48:42','4','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(471,'create','2016-10-22 10:48:42','4','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Judge\";s:8:\"lastName\";s:5:\"Rohan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Abbott Pike\";s:7:\"company\";N;s:4:\"city\";s:10:\"Hilllmouth\";s:8:\"postcode\";s:5:\"29376\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(472,'create','2016-10-22 10:48:42','4','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:57033;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(473,'create','2016-10-22 10:48:42','11','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:6027;}',NULL),(474,'create','2016-10-22 10:48:42','12','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:887;}',NULL),(475,'create','2016-10-22 10:48:42','13','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:3179;}',NULL),(476,'create','2016-10-22 10:48:42','14','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6802;}',NULL),(477,'create','2016-10-22 10:48:42','15','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:3769;}',NULL),(478,'create','2016-10-22 10:48:42','5','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(479,'create','2016-10-22 10:48:42','5','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Percy\";s:8:\"lastName\";s:3:\"Von\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Kunde Walks\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Elmerchester\";s:8:\"postcode\";s:10:\"12207-9022\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(480,'create','2016-10-22 10:48:42','5','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:73029;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(481,'create','2016-10-22 10:48:42','16','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:9811;}',NULL),(482,'create','2016-10-22 10:48:42','17','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:508;}',NULL),(483,'create','2016-10-22 10:48:42','18','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:3179;}',NULL),(484,'create','2016-10-22 10:48:42','19','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:3179;}',NULL),(485,'create','2016-10-22 10:48:42','6','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(486,'create','2016-10-22 10:48:42','6','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Romaine\";s:8:\"lastName\";s:4:\"Rath\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Lehner Wells\";s:7:\"company\";N;s:4:\"city\";s:11:\"Dawsonhaven\";s:8:\"postcode\";s:5:\"84729\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(487,'create','2016-10-22 10:48:42','6','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:20270;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(488,'create','2016-10-22 10:48:42','20','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:5977;}',NULL),(489,'create','2016-10-22 10:48:42','7','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(490,'create','2016-10-22 10:48:42','7','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Scarlett\";s:8:\"lastName\";s:4:\"Cole\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"O\'Hara Extension\";s:7:\"company\";N;s:4:\"city\";s:13:\"Gunnarchester\";s:8:\"postcode\";s:10:\"26728-6244\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(491,'create','2016-10-22 10:48:42','7','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:61829;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(492,'create','2016-10-22 10:48:42','21','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:9953;}',NULL),(493,'create','2016-10-22 10:48:42','22','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:2799;}',NULL),(494,'create','2016-10-22 10:48:42','23','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:3179;}',NULL),(495,'create','2016-10-22 10:48:42','24','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:7972;}',NULL),(496,'create','2016-10-22 10:48:42','8','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(497,'create','2016-10-22 10:48:42','8','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Quinton\";s:8:\"lastName\";s:5:\"Towne\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"Berniece Centers\";s:7:\"company\";N;s:4:\"city\";s:13:\"Bahringerport\";s:8:\"postcode\";s:5:\"40069\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(498,'create','2016-10-22 10:48:42','8','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:44269;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(499,'create','2016-10-22 10:48:42','25','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:253;}',NULL),(500,'create','2016-10-22 10:48:42','26','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:2068;}',NULL),(501,'create','2016-10-22 10:48:42','27','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:1217;}',NULL),(502,'create','2016-10-22 10:48:42','28','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:813;}',NULL),(503,'create','2016-10-22 10:48:42','29','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:4732;}',NULL),(504,'create','2016-10-22 10:48:42','9','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(505,'create','2016-10-22 10:48:42','9','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Stefan\";s:8:\"lastName\";s:9:\"Schneider\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Princess Track\";s:7:\"company\";N;s:4:\"city\";s:19:\"North Jaidenborough\";s:8:\"postcode\";s:5:\"92755\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(506,'create','2016-10-22 10:48:42','9','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:59907;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(507,'create','2016-10-22 10:48:42','30','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:458;}',NULL),(508,'create','2016-10-22 10:48:42','31','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:4471;}',NULL),(509,'create','2016-10-22 10:48:42','32','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:7340;}',NULL),(510,'create','2016-10-22 10:48:42','33','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:3357;}',NULL),(511,'create','2016-10-22 10:48:42','10','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(512,'create','2016-10-22 10:48:42','10','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Catherine\";s:8:\"lastName\";s:4:\"Roob\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Metz Lakes\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Shanieport\";s:8:\"postcode\";s:10:\"04689-7769\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(513,'create','2016-10-22 10:48:42','10','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:65664;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(514,'create','2016-10-22 10:48:42','34','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6629;}',NULL),(515,'create','2016-10-22 10:48:42','35','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:7114;}',NULL),(516,'create','2016-10-22 10:48:42','36','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:5540;}',NULL),(517,'create','2016-10-22 10:48:42','37','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6388;}',NULL),(518,'create','2016-10-22 10:48:42','38','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:3179;}',NULL),(519,'create','2016-10-22 10:48:42','11','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(520,'create','2016-10-22 10:48:42','11','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Alene\";s:8:\"lastName\";s:6:\"Skiles\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Mohr Roads\";s:7:\"company\";N;s:4:\"city\";s:9:\"West Tito\";s:8:\"postcode\";s:5:\"89105\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(521,'create','2016-10-22 10:48:42','11','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:93165;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(522,'create','2016-10-22 10:48:42','39','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:5933;}',NULL),(523,'create','2016-10-22 10:48:42','40','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:5436;}',NULL),(524,'create','2016-10-22 10:48:42','41','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:6109;}',NULL),(525,'create','2016-10-22 10:48:42','42','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:4860;}',NULL),(526,'create','2016-10-22 10:48:42','12','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(527,'create','2016-10-22 10:48:42','12','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Neha\";s:8:\"lastName\";s:6:\"Heaney\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"Oberbrunner Route\";s:7:\"company\";N;s:4:\"city\";s:12:\"East Alburgh\";s:8:\"postcode\";s:10:\"65161-1770\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(528,'create','2016-10-22 10:48:42','12','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:62254;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(529,'create','2016-10-22 10:48:42','43','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:2157;}',NULL),(530,'create','2016-10-22 10:48:42','44','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:3447;}',NULL),(531,'create','2016-10-22 10:48:42','45','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:5615;}',NULL),(532,'create','2016-10-22 10:48:42','13','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(533,'create','2016-10-22 10:48:42','13','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Verla\";s:8:\"lastName\";s:7:\"Roberts\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Ahmed Hollow\";s:7:\"company\";N;s:4:\"city\";s:11:\"Carmelatown\";s:8:\"postcode\";s:10:\"65537-1909\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(534,'create','2016-10-22 10:48:42','13','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:32164;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(535,'create','2016-10-22 10:48:42','46','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6027;}',NULL),(536,'create','2016-10-22 10:48:42','47','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:8905;}',NULL),(537,'create','2016-10-22 10:48:42','48','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:6420;}',NULL),(538,'create','2016-10-22 10:48:42','14','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(539,'create','2016-10-22 10:48:42','14','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Lillie\";s:8:\"lastName\";s:7:\"Schmitt\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Robin Hill\";s:7:\"company\";N;s:4:\"city\";s:13:\"West Erynport\";s:8:\"postcode\";s:5:\"94126\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(540,'create','2016-10-22 10:48:42','14','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:59276;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(541,'create','2016-10-22 10:48:42','49','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6027;}',NULL),(542,'create','2016-10-22 10:48:42','50','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:9801;}',NULL),(543,'create','2016-10-22 10:48:42','51','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:9727;}',NULL),(544,'create','2016-10-22 10:48:42','15','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(545,'create','2016-10-22 10:48:42','15','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Eduardo\";s:8:\"lastName\";s:7:\"Stanton\";s:11:\"phoneNumber\";N;s:6:\"street\";s:10:\"Kulas Camp\";s:7:\"company\";N;s:4:\"city\";s:9:\"Orvalside\";s:8:\"postcode\";s:10:\"69730-4874\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(546,'create','2016-10-22 10:48:42','15','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:57521;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(547,'create','2016-10-22 10:48:42','52','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:6415;}',NULL),(548,'create','2016-10-22 10:48:42','53','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:1782;}',NULL),(549,'create','2016-10-22 10:48:42','54','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:6783;}',NULL),(550,'create','2016-10-22 10:48:42','16','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(551,'create','2016-10-22 10:48:42','16','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:10:\"Antonietta\";s:8:\"lastName\";s:7:\"Collins\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Bosco Falls\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Robbie\";s:8:\"postcode\";s:10:\"23920-6775\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(552,'create','2016-10-22 10:48:42','16','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:16063;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(553,'create','2016-10-22 10:48:42','55','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:1771;}',NULL),(554,'create','2016-10-22 10:48:42','56','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:3179;}',NULL),(555,'create','2016-10-22 10:48:42','17','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(556,'create','2016-10-22 10:48:42','17','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Braeden\";s:8:\"lastName\";s:9:\"Ankunding\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"Kertzmann Camp\";s:7:\"company\";N;s:4:\"city\";s:12:\"North Marlon\";s:8:\"postcode\";s:10:\"71160-7152\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(557,'create','2016-10-22 10:48:42','17','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:114081;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(558,'create','2016-10-22 10:48:42','57','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:6415;}',NULL),(559,'create','2016-10-22 10:48:42','58','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:6802;}',NULL),(560,'create','2016-10-22 10:48:42','59','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:5776;}',NULL),(561,'create','2016-10-22 10:48:42','60','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:9701;}',NULL),(562,'create','2016-10-22 10:48:42','61','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:5776;}',NULL),(563,'create','2016-10-22 10:48:42','18','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(564,'create','2016-10-22 10:48:42','18','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Gavin\";s:8:\"lastName\";s:6:\"Beahan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"Mosciski Spur\";s:7:\"company\";N;s:4:\"city\";s:13:\"Maybellemouth\";s:8:\"postcode\";s:5:\"24801\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(565,'create','2016-10-22 10:48:42','18','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:86189;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(566,'create','2016-10-22 10:48:42','62','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:6442;}',NULL),(567,'create','2016-10-22 10:48:42','63','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:3179;}',NULL),(568,'create','2016-10-22 10:48:42','64','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:6409;}',NULL),(569,'create','2016-10-22 10:48:42','65','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:8013;}',NULL),(570,'create','2016-10-22 10:48:42','19','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(571,'create','2016-10-22 10:48:42','19','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Zaria\";s:8:\"lastName\";s:5:\"Terry\";s:11:\"phoneNumber\";N;s:6:\"street\";s:12:\"Bridget Isle\";s:7:\"company\";N;s:4:\"city\";s:9:\"Imaniland\";s:8:\"postcode\";s:5:\"83488\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(572,'create','2016-10-22 10:48:42','19','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:115410;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(573,'create','2016-10-22 10:48:42','66','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:6415;}',NULL),(574,'create','2016-10-22 10:48:42','67','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:9692;}',NULL),(575,'create','2016-10-22 10:48:42','68','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:4;s:9:\"unitPrice\";i:8531;}',NULL),(576,'create','2016-10-22 10:48:42','69','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:5775;}',NULL),(577,'create','2016-10-22 10:48:42','70','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:2742;}',NULL),(578,'create','2016-10-22 10:48:42','20','Sylius\\Component\\Core\\Model\\Order',1,'a:1:{s:12:\"currencyCode\";s:3:\"USD\";}',NULL),(579,'create','2016-10-22 10:48:42','20','Sylius\\Component\\Core\\Model\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Ova\";s:8:\"lastName\";s:10:\"Hodkiewicz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:11:\"Jacky Court\";s:7:\"company\";N;s:4:\"city\";s:13:\"Carriechester\";s:8:\"postcode\";s:10:\"29876-0125\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(580,'create','2016-10-22 10:48:42','20','Sylius\\Component\\Core\\Model\\Payment',1,'a:4:{s:12:\"currencyCode\";s:3:\"USD\";s:6:\"amount\";i:102050;s:5:\"state\";s:3:\"new\";s:7:\"details\";a:0:{}}',NULL),(581,'create','2016-10-22 10:48:42','71','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:6802;}',NULL),(582,'create','2016-10-22 10:48:42','72','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:3;s:9:\"unitPrice\";i:6783;}',NULL),(583,'create','2016-10-22 10:48:42','73','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:2;s:9:\"unitPrice\";i:2124;}',NULL),(584,'create','2016-10-22 10:48:42','74','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:5;s:9:\"unitPrice\";i:6739;}',NULL),(585,'create','2016-10-22 10:48:42','75','Sylius\\Component\\Core\\Model\\OrderItem',1,'a:2:{s:8:\"quantity\";i:1;s:9:\"unitPrice\";i:1432;}',NULL),(586,'remove','2016-10-22 10:50:07','1','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(587,'remove','2016-10-22 10:50:07','2','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(588,'remove','2016-10-22 10:50:07','3','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(589,'remove','2016-10-22 10:50:07','4','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(590,'remove','2016-10-22 10:50:08','5','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(591,'remove','2016-10-22 10:50:08','6','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(592,'remove','2016-10-22 10:50:08','7','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(593,'remove','2016-10-22 10:50:08','8','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(594,'remove','2016-10-22 10:50:08','9','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(595,'remove','2016-10-22 10:50:08','10','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(596,'remove','2016-10-22 10:50:08','11','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(597,'remove','2016-10-22 10:50:08','12','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(598,'remove','2016-10-22 10:50:08','13','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(599,'remove','2016-10-22 10:50:08','14','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(600,'remove','2016-10-22 10:50:08','15','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(601,'remove','2016-10-22 10:50:08','16','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(602,'remove','2016-10-22 10:50:08','17','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(603,'remove','2016-10-22 10:50:08','18','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(604,'remove','2016-10-22 10:50:09','19','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(605,'remove','2016-10-22 10:50:09','20','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(606,'remove','2016-10-22 10:50:09','21','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(607,'remove','2016-10-22 10:50:09','22','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(608,'remove','2016-10-22 10:50:09','23','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(609,'remove','2016-10-22 10:50:09','24','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(610,'remove','2016-10-22 10:50:09','25','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(611,'remove','2016-10-22 10:50:09','26','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(612,'remove','2016-10-22 10:50:09','27','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(613,'remove','2016-10-22 10:50:09','28','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(614,'remove','2016-10-22 10:50:09','29','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(615,'remove','2016-10-22 10:50:09','30','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(616,'remove','2016-10-22 10:50:09','31','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(617,'remove','2016-10-22 10:50:09','32','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(618,'remove','2016-10-22 10:50:09','33','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(619,'remove','2016-10-22 10:50:10','34','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(620,'remove','2016-10-22 10:50:10','35','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(621,'remove','2016-10-22 10:50:10','36','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(622,'remove','2016-10-22 10:50:10','37','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(623,'remove','2016-10-22 10:50:10','38','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(624,'remove','2016-10-22 10:50:10','39','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(625,'remove','2016-10-22 10:50:10','40','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(626,'remove','2016-10-22 10:50:10','41','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(627,'remove','2016-10-22 10:50:10','42','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(628,'remove','2016-10-22 10:50:10','43','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(629,'remove','2016-10-22 10:50:10','44','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(630,'remove','2016-10-22 10:50:10','45','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(631,'remove','2016-10-22 10:50:10','46','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(632,'remove','2016-10-22 10:50:10','47','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(633,'remove','2016-10-22 10:50:11','48','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(634,'remove','2016-10-22 10:50:11','49','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(635,'remove','2016-10-22 10:50:11','50','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(636,'remove','2016-10-22 10:50:11','51','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(637,'remove','2016-10-22 10:50:11','52','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(638,'remove','2016-10-22 10:50:11','53','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(639,'remove','2016-10-22 10:50:11','54','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(640,'remove','2016-10-22 10:50:11','55','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(641,'remove','2016-10-22 10:50:11','56','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(642,'remove','2016-10-22 10:50:11','57','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(643,'remove','2016-10-22 10:50:11','58','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(644,'remove','2016-10-22 10:50:11','59','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(645,'remove','2016-10-22 10:50:11','60','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(646,'remove','2016-10-22 10:50:11','61','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(647,'remove','2016-10-22 10:50:11','62','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(648,'remove','2016-10-22 10:50:12','63','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(649,'remove','2016-10-22 10:50:12','64','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(650,'remove','2016-10-22 10:50:12','65','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(651,'remove','2016-10-22 10:50:12','66','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(652,'remove','2016-10-22 10:50:12','67','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(653,'remove','2016-10-22 10:50:12','68','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(654,'remove','2016-10-22 10:50:12','69','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(655,'remove','2016-10-22 10:50:12','70','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(656,'remove','2016-10-22 10:50:12','71','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(657,'remove','2016-10-22 10:50:12','72','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(658,'remove','2016-10-22 10:50:12','73','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(659,'remove','2016-10-22 10:50:12','74','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(660,'remove','2016-10-22 10:50:13','75','Sylius\\Component\\Core\\Model\\OrderItem',2,'N;',NULL),(661,'remove','2016-10-22 10:50:13','1','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(662,'remove','2016-10-22 10:50:13','1','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(663,'remove','2016-10-22 10:50:13','2','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(664,'remove','2016-10-22 10:50:13','3','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(665,'remove','2016-10-22 10:50:13','1','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(666,'remove','2016-10-22 10:50:13','2','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(667,'remove','2016-10-22 10:50:13','4','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(668,'remove','2016-10-22 10:50:13','5','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(669,'remove','2016-10-22 10:50:13','6','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(670,'remove','2016-10-22 10:50:13','2','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(671,'remove','2016-10-22 10:50:13','3','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(672,'remove','2016-10-22 10:50:13','7','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(673,'remove','2016-10-22 10:50:13','8','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(674,'remove','2016-10-22 10:50:13','9','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(675,'remove','2016-10-22 10:50:13','3','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(676,'remove','2016-10-22 10:50:13','4','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(677,'remove','2016-10-22 10:50:13','10','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(678,'remove','2016-10-22 10:50:13','11','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(679,'remove','2016-10-22 10:50:13','12','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(680,'remove','2016-10-22 10:50:13','4','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(681,'remove','2016-10-22 10:50:13','5','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(682,'remove','2016-10-22 10:50:13','13','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(683,'remove','2016-10-22 10:50:13','14','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(684,'remove','2016-10-22 10:50:13','15','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(685,'remove','2016-10-22 10:50:13','5','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(686,'remove','2016-10-22 10:50:13','6','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(687,'remove','2016-10-22 10:50:13','16','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(688,'remove','2016-10-22 10:50:13','17','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(689,'remove','2016-10-22 10:50:13','18','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(690,'remove','2016-10-22 10:50:13','6','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(691,'remove','2016-10-22 10:50:13','7','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(692,'remove','2016-10-22 10:50:13','19','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(693,'remove','2016-10-22 10:50:13','20','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(694,'remove','2016-10-22 10:50:13','21','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(695,'remove','2016-10-22 10:50:13','7','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(696,'remove','2016-10-22 10:50:14','8','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(697,'remove','2016-10-22 10:50:14','22','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(698,'remove','2016-10-22 10:50:14','23','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(699,'remove','2016-10-22 10:50:14','24','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(700,'remove','2016-10-22 10:50:14','8','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(701,'remove','2016-10-22 10:50:14','9','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(702,'remove','2016-10-22 10:50:14','25','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(703,'remove','2016-10-22 10:50:14','26','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(704,'remove','2016-10-22 10:50:14','27','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(705,'remove','2016-10-22 10:50:14','9','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(706,'remove','2016-10-22 10:50:14','10','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(707,'remove','2016-10-22 10:50:14','28','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(708,'remove','2016-10-22 10:50:14','29','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(709,'remove','2016-10-22 10:50:14','30','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(710,'remove','2016-10-22 10:50:14','10','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(711,'remove','2016-10-22 10:50:14','11','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(712,'remove','2016-10-22 10:50:14','31','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(713,'remove','2016-10-22 10:50:14','32','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(714,'remove','2016-10-22 10:50:14','33','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(715,'remove','2016-10-22 10:50:14','11','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(716,'remove','2016-10-22 10:50:14','12','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(717,'remove','2016-10-22 10:50:14','34','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(718,'remove','2016-10-22 10:50:14','35','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(719,'remove','2016-10-22 10:50:14','36','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(720,'remove','2016-10-22 10:50:14','12','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(721,'remove','2016-10-22 10:50:14','13','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(722,'remove','2016-10-22 10:50:14','37','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(723,'remove','2016-10-22 10:50:14','38','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(724,'remove','2016-10-22 10:50:14','39','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(725,'remove','2016-10-22 10:50:14','13','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(726,'remove','2016-10-22 10:50:14','14','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(727,'remove','2016-10-22 10:50:14','40','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(728,'remove','2016-10-22 10:50:14','41','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(729,'remove','2016-10-22 10:50:14','42','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(730,'remove','2016-10-22 10:50:14','14','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(731,'remove','2016-10-22 10:50:14','15','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(732,'remove','2016-10-22 10:50:14','43','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(733,'remove','2016-10-22 10:50:14','44','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(734,'remove','2016-10-22 10:50:14','45','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(735,'remove','2016-10-22 10:50:14','15','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(736,'remove','2016-10-22 10:50:14','16','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(737,'remove','2016-10-22 10:50:14','46','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(738,'remove','2016-10-22 10:50:14','47','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(739,'remove','2016-10-22 10:50:14','48','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(740,'remove','2016-10-22 10:50:14','16','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(741,'remove','2016-10-22 10:50:14','17','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(742,'remove','2016-10-22 10:50:14','49','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(743,'remove','2016-10-22 10:50:14','50','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(744,'remove','2016-10-22 10:50:14','51','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(745,'remove','2016-10-22 10:50:14','17','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(746,'remove','2016-10-22 10:50:15','18','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(747,'remove','2016-10-22 10:50:15','52','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(748,'remove','2016-10-22 10:50:15','53','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(749,'remove','2016-10-22 10:50:15','54','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(750,'remove','2016-10-22 10:50:15','18','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(751,'remove','2016-10-22 10:50:15','19','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(752,'remove','2016-10-22 10:50:15','55','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(753,'remove','2016-10-22 10:50:15','56','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(754,'remove','2016-10-22 10:50:15','57','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(755,'remove','2016-10-22 10:50:15','19','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(756,'remove','2016-10-22 10:50:15','20','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(757,'remove','2016-10-22 10:50:15','58','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(758,'remove','2016-10-22 10:50:15','59','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(759,'remove','2016-10-22 10:50:15','60','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(760,'remove','2016-10-22 10:50:15','20','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(761,'remove','2016-10-22 10:50:15','21','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(762,'remove','2016-10-22 10:50:15','61','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(763,'remove','2016-10-22 10:50:15','62','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(764,'remove','2016-10-22 10:50:15','63','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(765,'remove','2016-10-22 10:50:15','21','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(766,'remove','2016-10-22 10:50:15','22','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(767,'remove','2016-10-22 10:50:15','64','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(768,'remove','2016-10-22 10:50:15','65','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(769,'remove','2016-10-22 10:50:15','66','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(770,'remove','2016-10-22 10:50:15','22','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(771,'remove','2016-10-22 10:50:15','23','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(772,'remove','2016-10-22 10:50:15','67','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(773,'remove','2016-10-22 10:50:15','68','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(774,'remove','2016-10-22 10:50:15','69','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(775,'remove','2016-10-22 10:50:15','23','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(776,'remove','2016-10-22 10:50:15','24','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(777,'remove','2016-10-22 10:50:15','70','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(778,'remove','2016-10-22 10:50:15','71','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(779,'remove','2016-10-22 10:50:15','72','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(780,'remove','2016-10-22 10:50:15','24','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(781,'remove','2016-10-22 10:50:15','25','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(782,'remove','2016-10-22 10:50:15','73','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(783,'remove','2016-10-22 10:50:15','74','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(784,'remove','2016-10-22 10:50:15','75','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(785,'remove','2016-10-22 10:50:15','25','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(786,'remove','2016-10-22 10:50:15','26','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(787,'remove','2016-10-22 10:50:15','76','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(788,'remove','2016-10-22 10:50:15','77','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(789,'remove','2016-10-22 10:50:15','78','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(790,'remove','2016-10-22 10:50:15','26','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(791,'remove','2016-10-22 10:50:15','27','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(792,'remove','2016-10-22 10:50:15','79','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(793,'remove','2016-10-22 10:50:15','80','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(794,'remove','2016-10-22 10:50:15','81','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(795,'remove','2016-10-22 10:50:15','27','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(796,'remove','2016-10-22 10:50:15','28','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(797,'remove','2016-10-22 10:50:15','82','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(798,'remove','2016-10-22 10:50:15','83','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(799,'remove','2016-10-22 10:50:15','84','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(800,'remove','2016-10-22 10:50:15','28','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(801,'remove','2016-10-22 10:50:15','29','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(802,'remove','2016-10-22 10:50:15','85','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(803,'remove','2016-10-22 10:50:15','86','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(804,'remove','2016-10-22 10:50:15','87','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(805,'remove','2016-10-22 10:50:15','29','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(806,'remove','2016-10-22 10:50:15','30','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(807,'remove','2016-10-22 10:50:15','88','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(808,'remove','2016-10-22 10:50:15','89','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(809,'remove','2016-10-22 10:50:15','90','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(810,'remove','2016-10-22 10:50:15','30','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(811,'remove','2016-10-22 10:50:15','31','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(812,'remove','2016-10-22 10:50:15','91','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(813,'remove','2016-10-22 10:50:15','31','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(814,'remove','2016-10-22 10:50:16','32','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(815,'remove','2016-10-22 10:50:16','92','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(816,'remove','2016-10-22 10:50:16','32','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(817,'remove','2016-10-22 10:50:16','33','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(818,'remove','2016-10-22 10:50:16','93','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(819,'remove','2016-10-22 10:50:16','33','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(820,'remove','2016-10-22 10:50:16','34','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(821,'remove','2016-10-22 10:50:16','94','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(822,'remove','2016-10-22 10:50:16','34','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(823,'remove','2016-10-22 10:50:16','35','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(824,'remove','2016-10-22 10:50:16','95','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(825,'remove','2016-10-22 10:50:16','35','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(826,'remove','2016-10-22 10:50:16','36','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(827,'remove','2016-10-22 10:50:16','96','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(828,'remove','2016-10-22 10:50:16','36','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(829,'remove','2016-10-22 10:50:16','37','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(830,'remove','2016-10-22 10:50:16','97','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(831,'remove','2016-10-22 10:50:16','37','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(832,'remove','2016-10-22 10:50:16','38','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(833,'remove','2016-10-22 10:50:16','98','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(834,'remove','2016-10-22 10:50:16','38','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(835,'remove','2016-10-22 10:50:16','39','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(836,'remove','2016-10-22 10:50:16','99','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(837,'remove','2016-10-22 10:50:16','39','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(838,'remove','2016-10-22 10:50:16','40','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(839,'remove','2016-10-22 10:50:16','100','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(840,'remove','2016-10-22 10:50:16','40','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(841,'remove','2016-10-22 10:50:16','41','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(842,'remove','2016-10-22 10:50:16','101','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(843,'remove','2016-10-22 10:50:16','41','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(844,'remove','2016-10-22 10:50:16','42','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(845,'remove','2016-10-22 10:50:16','102','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(846,'remove','2016-10-22 10:50:16','42','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(847,'remove','2016-10-22 10:50:16','43','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(848,'remove','2016-10-22 10:50:16','103','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(849,'remove','2016-10-22 10:50:16','43','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(850,'remove','2016-10-22 10:50:16','44','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(851,'remove','2016-10-22 10:50:16','104','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(852,'remove','2016-10-22 10:50:16','44','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(853,'remove','2016-10-22 10:50:16','45','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(854,'remove','2016-10-22 10:50:16','105','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(855,'remove','2016-10-22 10:50:16','45','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(856,'remove','2016-10-22 10:50:17','46','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(857,'remove','2016-10-22 10:50:17','106','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(858,'remove','2016-10-22 10:50:17','107','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(859,'remove','2016-10-22 10:50:17','108','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(860,'remove','2016-10-22 10:50:17','109','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(861,'remove','2016-10-22 10:50:17','110','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(862,'remove','2016-10-22 10:50:17','111','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(863,'remove','2016-10-22 10:50:17','112','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(864,'remove','2016-10-22 10:50:17','113','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(865,'remove','2016-10-22 10:50:17','114','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(866,'remove','2016-10-22 10:50:17','115','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(867,'remove','2016-10-22 10:50:17','116','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(868,'remove','2016-10-22 10:50:17','117','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(869,'remove','2016-10-22 10:50:17','118','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(870,'remove','2016-10-22 10:50:17','119','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(871,'remove','2016-10-22 10:50:17','120','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(872,'remove','2016-10-22 10:50:17','46','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(873,'remove','2016-10-22 10:50:17','47','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(874,'remove','2016-10-22 10:50:17','121','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(875,'remove','2016-10-22 10:50:17','122','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(876,'remove','2016-10-22 10:50:17','123','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(877,'remove','2016-10-22 10:50:17','124','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(878,'remove','2016-10-22 10:50:17','125','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(879,'remove','2016-10-22 10:50:17','126','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(880,'remove','2016-10-22 10:50:17','127','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(881,'remove','2016-10-22 10:50:17','128','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(882,'remove','2016-10-22 10:50:17','129','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(883,'remove','2016-10-22 10:50:17','130','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(884,'remove','2016-10-22 10:50:17','131','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(885,'remove','2016-10-22 10:50:17','132','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(886,'remove','2016-10-22 10:50:17','133','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(887,'remove','2016-10-22 10:50:17','134','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(888,'remove','2016-10-22 10:50:17','135','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(889,'remove','2016-10-22 10:50:17','47','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(890,'remove','2016-10-22 10:50:17','48','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(891,'remove','2016-10-22 10:50:17','136','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(892,'remove','2016-10-22 10:50:17','137','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(893,'remove','2016-10-22 10:50:17','138','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(894,'remove','2016-10-22 10:50:17','139','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(895,'remove','2016-10-22 10:50:17','140','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(896,'remove','2016-10-22 10:50:17','141','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(897,'remove','2016-10-22 10:50:17','142','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(898,'remove','2016-10-22 10:50:17','143','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(899,'remove','2016-10-22 10:50:17','144','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(900,'remove','2016-10-22 10:50:17','145','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(901,'remove','2016-10-22 10:50:17','146','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(902,'remove','2016-10-22 10:50:17','147','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(903,'remove','2016-10-22 10:50:17','148','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(904,'remove','2016-10-22 10:50:17','149','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(905,'remove','2016-10-22 10:50:17','150','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(906,'remove','2016-10-22 10:50:17','48','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(907,'remove','2016-10-22 10:50:17','49','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(908,'remove','2016-10-22 10:50:17','151','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(909,'remove','2016-10-22 10:50:17','152','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(910,'remove','2016-10-22 10:50:17','153','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(911,'remove','2016-10-22 10:50:17','154','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(912,'remove','2016-10-22 10:50:17','155','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(913,'remove','2016-10-22 10:50:17','156','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(914,'remove','2016-10-22 10:50:17','157','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(915,'remove','2016-10-22 10:50:17','158','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(916,'remove','2016-10-22 10:50:17','159','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(917,'remove','2016-10-22 10:50:17','160','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(918,'remove','2016-10-22 10:50:17','161','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(919,'remove','2016-10-22 10:50:17','162','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(920,'remove','2016-10-22 10:50:17','163','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(921,'remove','2016-10-22 10:50:17','164','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(922,'remove','2016-10-22 10:50:17','165','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(923,'remove','2016-10-22 10:50:17','49','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(924,'remove','2016-10-22 10:50:17','50','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(925,'remove','2016-10-22 10:50:17','166','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(926,'remove','2016-10-22 10:50:17','167','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(927,'remove','2016-10-22 10:50:17','168','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(928,'remove','2016-10-22 10:50:17','169','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(929,'remove','2016-10-22 10:50:17','170','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(930,'remove','2016-10-22 10:50:17','171','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(931,'remove','2016-10-22 10:50:17','172','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(932,'remove','2016-10-22 10:50:17','173','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(933,'remove','2016-10-22 10:50:17','174','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(934,'remove','2016-10-22 10:50:17','175','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(935,'remove','2016-10-22 10:50:17','176','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(936,'remove','2016-10-22 10:50:17','177','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(937,'remove','2016-10-22 10:50:17','178','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(938,'remove','2016-10-22 10:50:17','179','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(939,'remove','2016-10-22 10:50:17','180','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(940,'remove','2016-10-22 10:50:17','50','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(941,'remove','2016-10-22 10:50:17','51','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(942,'remove','2016-10-22 10:50:17','181','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(943,'remove','2016-10-22 10:50:17','182','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(944,'remove','2016-10-22 10:50:17','183','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(945,'remove','2016-10-22 10:50:17','184','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(946,'remove','2016-10-22 10:50:17','185','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(947,'remove','2016-10-22 10:50:17','186','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(948,'remove','2016-10-22 10:50:17','187','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(949,'remove','2016-10-22 10:50:17','188','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(950,'remove','2016-10-22 10:50:17','189','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(951,'remove','2016-10-22 10:50:17','190','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(952,'remove','2016-10-22 10:50:17','191','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(953,'remove','2016-10-22 10:50:17','192','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(954,'remove','2016-10-22 10:50:17','193','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(955,'remove','2016-10-22 10:50:17','194','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(956,'remove','2016-10-22 10:50:17','195','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(957,'remove','2016-10-22 10:50:17','51','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(958,'remove','2016-10-22 10:50:17','52','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(959,'remove','2016-10-22 10:50:17','196','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(960,'remove','2016-10-22 10:50:17','197','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(961,'remove','2016-10-22 10:50:17','198','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(962,'remove','2016-10-22 10:50:17','199','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(963,'remove','2016-10-22 10:50:17','200','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(964,'remove','2016-10-22 10:50:17','201','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(965,'remove','2016-10-22 10:50:17','202','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(966,'remove','2016-10-22 10:50:17','203','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(967,'remove','2016-10-22 10:50:17','204','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(968,'remove','2016-10-22 10:50:17','205','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(969,'remove','2016-10-22 10:50:17','206','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(970,'remove','2016-10-22 10:50:17','207','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(971,'remove','2016-10-22 10:50:17','208','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(972,'remove','2016-10-22 10:50:17','209','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(973,'remove','2016-10-22 10:50:17','210','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(974,'remove','2016-10-22 10:50:17','52','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(975,'remove','2016-10-22 10:50:17','53','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(976,'remove','2016-10-22 10:50:17','211','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(977,'remove','2016-10-22 10:50:17','212','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(978,'remove','2016-10-22 10:50:17','213','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(979,'remove','2016-10-22 10:50:17','214','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(980,'remove','2016-10-22 10:50:17','215','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(981,'remove','2016-10-22 10:50:17','216','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(982,'remove','2016-10-22 10:50:17','217','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(983,'remove','2016-10-22 10:50:17','218','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(984,'remove','2016-10-22 10:50:17','219','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(985,'remove','2016-10-22 10:50:17','220','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(986,'remove','2016-10-22 10:50:17','221','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(987,'remove','2016-10-22 10:50:17','222','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(988,'remove','2016-10-22 10:50:17','223','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(989,'remove','2016-10-22 10:50:17','224','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(990,'remove','2016-10-22 10:50:17','225','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(991,'remove','2016-10-22 10:50:17','53','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(992,'remove','2016-10-22 10:50:17','54','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(993,'remove','2016-10-22 10:50:17','226','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(994,'remove','2016-10-22 10:50:17','227','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(995,'remove','2016-10-22 10:50:17','228','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(996,'remove','2016-10-22 10:50:17','229','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(997,'remove','2016-10-22 10:50:17','230','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(998,'remove','2016-10-22 10:50:17','231','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(999,'remove','2016-10-22 10:50:17','232','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1000,'remove','2016-10-22 10:50:17','233','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1001,'remove','2016-10-22 10:50:17','234','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1002,'remove','2016-10-22 10:50:17','235','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1003,'remove','2016-10-22 10:50:17','236','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1004,'remove','2016-10-22 10:50:17','237','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1005,'remove','2016-10-22 10:50:17','238','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1006,'remove','2016-10-22 10:50:17','239','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1007,'remove','2016-10-22 10:50:17','240','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1008,'remove','2016-10-22 10:50:17','54','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1009,'remove','2016-10-22 10:50:17','55','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1010,'remove','2016-10-22 10:50:17','241','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1011,'remove','2016-10-22 10:50:17','242','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1012,'remove','2016-10-22 10:50:17','243','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1013,'remove','2016-10-22 10:50:17','244','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1014,'remove','2016-10-22 10:50:17','245','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1015,'remove','2016-10-22 10:50:17','246','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1016,'remove','2016-10-22 10:50:17','247','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1017,'remove','2016-10-22 10:50:17','248','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1018,'remove','2016-10-22 10:50:17','249','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1019,'remove','2016-10-22 10:50:17','250','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1020,'remove','2016-10-22 10:50:17','251','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1021,'remove','2016-10-22 10:50:17','252','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1022,'remove','2016-10-22 10:50:17','253','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1023,'remove','2016-10-22 10:50:17','254','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1024,'remove','2016-10-22 10:50:17','255','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1025,'remove','2016-10-22 10:50:17','55','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1026,'remove','2016-10-22 10:50:18','56','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1027,'remove','2016-10-22 10:50:18','256','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1028,'remove','2016-10-22 10:50:18','257','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1029,'remove','2016-10-22 10:50:18','258','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1030,'remove','2016-10-22 10:50:18','259','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1031,'remove','2016-10-22 10:50:18','260','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1032,'remove','2016-10-22 10:50:18','261','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1033,'remove','2016-10-22 10:50:18','262','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1034,'remove','2016-10-22 10:50:18','263','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1035,'remove','2016-10-22 10:50:18','264','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1036,'remove','2016-10-22 10:50:18','265','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1037,'remove','2016-10-22 10:50:18','266','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1038,'remove','2016-10-22 10:50:18','267','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1039,'remove','2016-10-22 10:50:18','268','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1040,'remove','2016-10-22 10:50:18','269','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1041,'remove','2016-10-22 10:50:18','270','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1042,'remove','2016-10-22 10:50:18','56','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1043,'remove','2016-10-22 10:50:18','57','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1044,'remove','2016-10-22 10:50:18','271','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1045,'remove','2016-10-22 10:50:18','272','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1046,'remove','2016-10-22 10:50:18','273','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1047,'remove','2016-10-22 10:50:18','274','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1048,'remove','2016-10-22 10:50:18','275','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1049,'remove','2016-10-22 10:50:18','276','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1050,'remove','2016-10-22 10:50:18','277','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1051,'remove','2016-10-22 10:50:18','278','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1052,'remove','2016-10-22 10:50:18','279','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1053,'remove','2016-10-22 10:50:18','280','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1054,'remove','2016-10-22 10:50:18','281','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1055,'remove','2016-10-22 10:50:18','282','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1056,'remove','2016-10-22 10:50:18','283','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1057,'remove','2016-10-22 10:50:18','284','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1058,'remove','2016-10-22 10:50:18','285','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1059,'remove','2016-10-22 10:50:18','57','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1060,'remove','2016-10-22 10:50:18','58','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1061,'remove','2016-10-22 10:50:18','286','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1062,'remove','2016-10-22 10:50:18','287','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1063,'remove','2016-10-22 10:50:18','288','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1064,'remove','2016-10-22 10:50:18','289','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1065,'remove','2016-10-22 10:50:18','290','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1066,'remove','2016-10-22 10:50:18','291','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1067,'remove','2016-10-22 10:50:18','292','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1068,'remove','2016-10-22 10:50:18','293','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1069,'remove','2016-10-22 10:50:18','294','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1070,'remove','2016-10-22 10:50:18','295','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1071,'remove','2016-10-22 10:50:18','296','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1072,'remove','2016-10-22 10:50:18','297','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1073,'remove','2016-10-22 10:50:18','298','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1074,'remove','2016-10-22 10:50:18','299','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1075,'remove','2016-10-22 10:50:18','300','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1076,'remove','2016-10-22 10:50:18','58','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1077,'remove','2016-10-22 10:50:18','59','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1078,'remove','2016-10-22 10:50:18','301','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1079,'remove','2016-10-22 10:50:18','302','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1080,'remove','2016-10-22 10:50:18','303','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1081,'remove','2016-10-22 10:50:18','304','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1082,'remove','2016-10-22 10:50:18','305','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1083,'remove','2016-10-22 10:50:18','306','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1084,'remove','2016-10-22 10:50:18','307','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1085,'remove','2016-10-22 10:50:18','308','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1086,'remove','2016-10-22 10:50:18','309','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1087,'remove','2016-10-22 10:50:18','310','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1088,'remove','2016-10-22 10:50:18','311','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1089,'remove','2016-10-22 10:50:18','312','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1090,'remove','2016-10-22 10:50:18','313','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1091,'remove','2016-10-22 10:50:18','314','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1092,'remove','2016-10-22 10:50:18','315','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1093,'remove','2016-10-22 10:50:18','59','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1094,'remove','2016-10-22 10:50:18','60','Sylius\\Component\\Core\\Model\\ProductTranslation',2,'N;',NULL),(1095,'remove','2016-10-22 10:50:18','316','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1096,'remove','2016-10-22 10:50:18','317','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1097,'remove','2016-10-22 10:50:18','318','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1098,'remove','2016-10-22 10:50:18','319','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1099,'remove','2016-10-22 10:50:18','320','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1100,'remove','2016-10-22 10:50:18','321','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1101,'remove','2016-10-22 10:50:18','322','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1102,'remove','2016-10-22 10:50:18','323','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1103,'remove','2016-10-22 10:50:18','324','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1104,'remove','2016-10-22 10:50:18','325','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1105,'remove','2016-10-22 10:50:18','326','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1106,'remove','2016-10-22 10:50:18','327','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1107,'remove','2016-10-22 10:50:18','328','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1108,'remove','2016-10-22 10:50:18','329','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1109,'remove','2016-10-22 10:50:18','330','Sylius\\Component\\Core\\Model\\ProductVariant',2,'N;',NULL),(1110,'remove','2016-10-22 10:50:18','60','Sylius\\Component\\Core\\Model\\Product',2,'N;',NULL),(1183,'remove','2016-10-24 18:49:23','1','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1184,'remove','2016-10-24 18:49:23','1','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1185,'remove','2016-10-24 18:49:23','1','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1186,'remove','2016-10-24 18:49:25','2','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1187,'remove','2016-10-24 18:49:25','2','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1188,'remove','2016-10-24 18:49:25','2','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1189,'remove','2016-10-24 18:49:26','3','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1190,'remove','2016-10-24 18:49:26','3','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1191,'remove','2016-10-24 18:49:26','3','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1192,'remove','2016-10-24 18:49:27','4','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1193,'remove','2016-10-24 18:49:27','4','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1194,'remove','2016-10-24 18:49:27','4','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1195,'remove','2016-10-24 18:49:27','5','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1196,'remove','2016-10-24 18:49:27','5','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1197,'remove','2016-10-24 18:49:27','5','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1198,'remove','2016-10-24 18:49:28','6','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1199,'remove','2016-10-24 18:49:28','6','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1200,'remove','2016-10-24 18:49:28','6','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1201,'remove','2016-10-24 18:49:28','7','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1202,'remove','2016-10-24 18:49:28','7','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1203,'remove','2016-10-24 18:49:28','7','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1204,'remove','2016-10-24 18:49:28','8','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1205,'remove','2016-10-24 18:49:28','8','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1206,'remove','2016-10-24 18:49:28','8','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1207,'remove','2016-10-24 18:49:28','9','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1208,'remove','2016-10-24 18:49:28','9','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1209,'remove','2016-10-24 18:49:28','9','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1210,'remove','2016-10-24 18:49:29','10','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1211,'remove','2016-10-24 18:49:29','10','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1212,'remove','2016-10-24 18:49:29','10','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1213,'remove','2016-10-24 18:49:29','11','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1214,'remove','2016-10-24 18:49:29','11','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1215,'remove','2016-10-24 18:49:29','11','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1216,'remove','2016-10-24 18:49:29','12','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1217,'remove','2016-10-24 18:49:29','12','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1218,'remove','2016-10-24 18:49:29','12','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1219,'remove','2016-10-24 18:49:29','13','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1220,'remove','2016-10-24 18:49:29','13','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1221,'remove','2016-10-24 18:49:29','13','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1222,'remove','2016-10-24 18:49:29','14','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1223,'remove','2016-10-24 18:49:29','14','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1224,'remove','2016-10-24 18:49:29','14','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1225,'remove','2016-10-24 18:49:29','15','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1226,'remove','2016-10-24 18:49:29','15','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1227,'remove','2016-10-24 18:49:29','15','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1228,'remove','2016-10-24 18:49:29','16','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1229,'remove','2016-10-24 18:49:29','16','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1230,'remove','2016-10-24 18:49:29','16','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1231,'remove','2016-10-24 18:49:29','17','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1232,'remove','2016-10-24 18:49:29','17','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1233,'remove','2016-10-24 18:49:29','17','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1234,'remove','2016-10-24 18:49:29','18','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1235,'remove','2016-10-24 18:49:29','18','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1236,'remove','2016-10-24 18:49:29','18','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1237,'remove','2016-10-24 18:49:30','19','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1238,'remove','2016-10-24 18:49:30','19','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1239,'remove','2016-10-24 18:49:30','19','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1240,'remove','2016-10-24 18:49:30','20','Sylius\\Component\\Core\\Model\\Address',2,'N;',NULL),(1241,'remove','2016-10-24 18:49:30','20','Sylius\\Component\\Core\\Model\\Payment',2,'N;',NULL),(1242,'remove','2016-10-24 18:49:30','20','Sylius\\Component\\Core\\Model\\Order',2,'N;',NULL),(1243,'create','2016-10-24 18:49:37','79','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:36.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1244,'create','2016-10-24 18:49:37','79','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:40:\"SET DE CUBIERTOS DE SERVICIO GINGKO NATU\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1245,'create','2016-10-24 18:49:37','331','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:9500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1246,'create','2016-10-24 18:49:37','80','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1247,'create','2016-10-24 18:49:37','80','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:30:\"BOWL SERVICIO CONCHA OVAL 18CM\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1248,'create','2016-10-24 18:49:37','332','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1249,'create','2016-10-24 18:49:37','81','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1250,'create','2016-10-24 18:49:37','81','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:40:\"SET DE CUBIERTOS DE SERVICIO DE HUESO NE\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1251,'create','2016-10-24 18:49:37','333','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:8500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1252,'create','2016-10-24 18:49:37','82','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1253,'create','2016-10-24 18:49:37','82','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:34:\"SERVILLETERO DE MARIPOSA DIF COLOR\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1254,'create','2016-10-24 18:49:37','334','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:18000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1255,'create','2016-10-24 18:49:39','83','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:37.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1256,'create','2016-10-24 18:49:39','83','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:30:\"MESA JARDIN LAZY SUSAN REDONDA\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1257,'create','2016-10-24 18:49:39','335','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:1299000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1258,'create','2016-10-24 18:49:39','84','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1259,'create','2016-10-24 18:49:39','84','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:38:\"DESC SCANNER SCANNER G3110 ACCE DIAPOS\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1260,'create','2016-10-24 18:49:39','336','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:113900;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1261,'create','2016-10-24 18:49:39','85','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1262,'create','2016-10-24 18:49:39','85','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:5:\"BANCO\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1263,'create','2016-10-24 18:49:39','337','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:29500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1264,'create','2016-10-24 18:49:39','86','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1265,'create','2016-10-24 18:49:39','86','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:37:\"TEATRO EN CASA MINICOMPONENTE SAMSUNG\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1266,'create','2016-10-24 18:49:39','338','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:97900;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1267,'create','2016-10-24 18:49:39','87','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1268,'create','2016-10-24 18:49:39','87','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:5:\"PLUMA\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1269,'create','2016-10-24 18:49:39','339','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:11500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1270,'create','2016-10-24 18:49:39','88','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1271,'create','2016-10-24 18:49:39','88','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:5:\"PLUMA\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1272,'create','2016-10-24 18:49:39','340','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:14500;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1273,'create','2016-10-24 18:49:39','89','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1274,'create','2016-10-24 18:49:39','89','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"LIBRETA\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1275,'create','2016-10-24 18:49:39','341','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:22800;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1276,'create','2016-10-24 18:49:39','90','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1277,'create','2016-10-24 18:49:39','90','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"CARPETA\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1278,'create','2016-10-24 18:49:39','342','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:23800;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1279,'create','2016-10-24 18:49:39','91','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1280,'create','2016-10-24 18:49:39','91','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:7:\"ESTUCHE\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1281,'create','2016-10-24 18:49:39','343','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:28800;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1282,'create','2016-10-24 18:49:40','92','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:39.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1283,'create','2016-10-24 18:49:40','92','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:33:\"GAR EXT 90000-99999 COMPUTO 1 ANO\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1284,'create','2016-10-24 18:49:40','344','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:461400;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1285,'create','2016-10-24 18:49:40','93','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1286,'create','2016-10-24 18:49:40','93','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:37:\"GAR EXT 50000-59999 VIDEOJUEGOS 1 ANO\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1287,'create','2016-10-24 18:49:40','345','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:207000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1288,'create','2016-10-24 18:49:40','94','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1289,'create','2016-10-24 18:49:40','94','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:37:\"GAR EXT 70000-79999 VIDEOJUEGOS 1 ANO\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1290,'create','2016-10-24 18:49:40','346','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:300200;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1291,'create','2016-10-24 18:49:40','95','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1292,'create','2016-10-24 18:49:40','95','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:32:\"GAR EXT 90000-99999 SONIDO 1 ANO\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1293,'create','2016-10-24 18:49:40','347','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:497000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL),(1294,'create','2016-10-24 18:49:40','96','Sylius\\Component\\Core\\Model\\Product',1,'a:3:{s:11:\"availableOn\";O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2016-10-24 18:49:40.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:13:\"Europe/Madrid\";}s:14:\"availableUntil\";N;s:16:\"shippingCategory\";N;}',NULL),(1295,'create','2016-10-24 18:49:40','96','Sylius\\Component\\Core\\Model\\ProductTranslation',1,'a:5:{s:4:\"name\";s:38:\"GAR EXT 80000-89999 VIDEOJUEGOS 2 ANOS\";s:11:\"description\";N;s:12:\"metaKeywords\";N;s:15:\"metaDescription\";N;s:16:\"shortDescription\";N;}',NULL),(1296,'create','2016-10-24 18:49:40','348','Sylius\\Component\\Core\\Model\\ProductVariant',1,'a:8:{s:5:\"price\";i:497000;s:13:\"originalPrice\";N;s:17:\"pricingCalculator\";s:8:\"standard\";s:20:\"pricingConfiguration\";a:0:{}s:5:\"width\";N;s:6:\"height\";N;s:5:\"depth\";N;s:6:\"weight\";N;}',NULL);
/*!40000 ALTER TABLE `ext_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_binarydata`
--

DROP TABLE IF EXISTS `phpcr_binarydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_binarydata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idx` int(11) NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_binarydata`
--

LOCK TABLES `phpcr_binarydata` WRITE;
/*!40000 ALTER TABLE `phpcr_binarydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_binarydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_internal_index_types`
--

DROP TABLE IF EXISTS `phpcr_internal_index_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`type`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_internal_index_types`
--

LOCK TABLES `phpcr_internal_index_types` WRITE;
/*!40000 ALTER TABLE `phpcr_internal_index_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_internal_index_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_namespaces`
--

DROP TABLE IF EXISTS `phpcr_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_namespaces`
--

LOCK TABLES `phpcr_namespaces` WRITE;
/*!40000 ALTER TABLE `phpcr_namespaces` DISABLE KEYS */;
INSERT INTO `phpcr_namespaces` VALUES ('phpcr','http://www.doctrine-project.org/projects/phpcr_odm'),('phpcr_locale','http://www.doctrine-project.org/projects/phpcr_odm/phpcr_locale');
/*!40000 ALTER TABLE `phpcr_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes`
--

DROP TABLE IF EXISTS `phpcr_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workspace_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `props` longtext COLLATE utf8_unicode_ci NOT NULL,
  `numerical_props` longtext COLLATE utf8_unicode_ci,
  `depth` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  KEY `IDX_A4624AD73D8E604F` (`parent`),
  KEY `IDX_A4624AD78CDE5729` (`type`),
  KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes`
--

LOCK TABLES `phpcr_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_nodes` VALUES (1,'/','','','','default','b023bfc7-38d7-4689-98b5-a883df3e67d5','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,0,NULL),(2,'/cms','/','cms','','default','fd316d36-7e49-4701-aeac-26ddd5389f39','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,1,1),(3,'/cms/pages','/cms','pages','','default','4709c807-ef81-4895-bbb1-4e0e4b341111','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,1),(4,'/cms/routes','/cms','routes','','default','6d796dc6-7647-403b-826b-3b7cca167995','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,2),(5,'/cms/menu','/cms','menu','','default','a28d0f78-5b08-4189-a61c-0ed6e5b52b70','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,3);
/*!40000 ALTER TABLE `phpcr_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_references`
--

DROP TABLE IF EXISTS `phpcr_nodes_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_references` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F3BF7E1158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_references`
--

LOCK TABLES `phpcr_nodes_references` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_weakreferences`
--

DROP TABLE IF EXISTS `phpcr_nodes_weakreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int(11) NOT NULL,
  `source_property_name` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F0E4F6FA158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_weakreferences`
--

LOCK TABLES `phpcr_nodes_weakreferences` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_childs`
--

DROP TABLE IF EXISTS `phpcr_type_childs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_childs` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `primary_types` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_childs`
--

LOCK TABLES `phpcr_type_childs` WRITE;
/*!40000 ALTER TABLE `phpcr_type_childs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_type_childs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_nodes`
--

DROP TABLE IF EXISTS `phpcr_type_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supertypes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_nodes`
--

LOCK TABLES `phpcr_type_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_type_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_type_nodes` VALUES (1,'phpcr:managed','nt:base',0,1,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_props`
--

DROP TABLE IF EXISTS `phpcr_type_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_type_props` (
  `node_type_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int(11) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int(11) NOT NULL,
  `query_operators` int(11) NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_props`
--

LOCK TABLES `phpcr_type_props` WRITE;
/*!40000 ALTER TABLE `phpcr_type_props` DISABLE KEYS */;
INSERT INTO `phpcr_type_props` VALUES (1,'phpcr:class',0,0,0,1,0,1,1,1,0,NULL),(1,'phpcr:classparents',0,0,0,1,1,1,1,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_workspaces`
--

DROP TABLE IF EXISTS `phpcr_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpcr_workspaces` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_workspaces`
--

LOCK TABLES `phpcr_workspaces` WRITE;
/*!40000 ALTER TABLE `phpcr_workspaces` DISABLE KEYS */;
INSERT INTO `phpcr_workspaces` VALUES ('default');
/*!40000 ALTER TABLE `phpcr_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (1,'sylius','sylius',1,'82ksdwfqbxs8cwscogswo8cs88ss4sc','DhqX1tEv2/l+ErLw8CK7vTxwhGupqUAEppCbjl78NHbN02XXhGNG8gORJkyMa85cLg3MyWbz77IJGQtvdFWISg==','2016-10-24 19:20:00',NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:31:\"ROLE_FULL_ADMINISTRATION_ACCESS\";}','sylius@example.com','sylius@example.com','2016-10-22 10:48:33','2016-10-24 19:20:00','John','Doe','en_US'),(2,'api','api',1,'c9e1iexekxkwk0g4occw84sc8cocw8w','FMQ5AgJa7RafHyr3+57yr7inpuCjrU/NgXZwvoS6s+gsF8FMSgqUCoX1ZphsMwTct0FQEPykiRkcO1fj9KHjvw==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','api@example.com','api@example.com','2016-10-22 10:48:33','2016-10-22 10:48:33','Luke','Brushwood','en_US'),(3,NULL,NULL,1,'i65ujxb5hi8kkscwsogwws4ok40g0gw','WTmpvS1mfGXDWMqXV1AI19SnBkVC8SzmFKT4LdA8sgFP5mxN1bQ9gJ7NNS07lRUuPnLgz6u534wXal0ANpGgyg==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','carlos.revillo@the-cocktail.com','carlos.revillo@the-cocktail.com','2016-10-22 10:48:43','2016-10-22 10:49:07',NULL,NULL,'en_US');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_access_token`
--

DROP TABLE IF EXISTS `sylius_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7D83AA7F5F37A13B` (`token`),
  KEY `IDX_7D83AA7F19EB6921` (`client_id`),
  KEY `IDX_7D83AA7FA76ED395` (`user_id`),
  CONSTRAINT `FK_7D83AA7F19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_7D83AA7FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_access_token`
--

LOCK TABLES `sylius_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_access_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C84041795F37A13B` (`token`),
  KEY `IDX_C840417919EB6921` (`client_id`),
  KEY `IDX_C8404179A76ED395` (`user_id`),
  CONSTRAINT `FK_C840417919EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_C8404179A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_auth_code`
--

LOCK TABLES `sylius_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_client`
--

DROP TABLE IF EXISTS `sylius_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_client`
--

LOCK TABLES `sylius_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_api_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_445785255F37A13B` (`token`),
  KEY `IDX_4457852519EB6921` (`client_id`),
  KEY `IDX_44578525A76ED395` (`user_id`),
  CONSTRAINT `FK_4457852519EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_api_client` (`id`),
  CONSTRAINT `FK_44578525A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_api_refresh_token`
--

LOCK TABLES `sylius_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_association_type`
--

DROP TABLE IF EXISTS `sylius_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6237029277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_association_type`
--

LOCK TABLES `sylius_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_association_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `default_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119EECD792C0` (`default_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EECD792C0` FOREIGN KEY (`default_currency_id`) REFERENCES `sylius_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (2,2,2,NULL,'MX_Web_Store','MX Web Store',NULL,NULL,1,NULL,'2016-10-24 18:49:32','2016-10-24 18:49:32',NULL,'order_items_based');
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_payment_methods`
--

DROP TABLE IF EXISTS `sylius_channel_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_payment_methods` (
  `channel_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`payment_method_id`),
  KEY `IDX_B0C0002B72F5A1AA` (`channel_id`),
  KEY `IDX_B0C0002B5AA1164F` (`payment_method_id`),
  CONSTRAINT `FK_B0C0002B5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B0C0002B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_payment_methods`
--

LOCK TABLES `sylius_channel_payment_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_shipping_methods`
--

DROP TABLE IF EXISTS `sylius_channel_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_shipping_methods` (
  `channel_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`shipping_method_id`),
  KEY `IDX_6858B18E72F5A1AA` (`channel_id`),
  KEY `IDX_6858B18E5F7D6850` (`shipping_method_id`),
  CONSTRAINT `FK_6858B18E5F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6858B18E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_shipping_methods`
--

LOCK TABLES `sylius_channel_shipping_methods` WRITE;
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_channel_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (2,'MX',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_credit_card`
--

DROP TABLE IF EXISTS `sylius_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_credit_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardholder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `security_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_month` int(11) DEFAULT NULL,
  `expiry_year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_credit_card`
--

LOCK TABLES `sylius_credit_card` WRITE;
/*!40000 ALTER TABLE `sylius_credit_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (2,'MXN',1.00000,1,'2016-10-24 18:49:31','2016-10-24 18:49:31');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E679D0C0E4` (`billing_address_id`),
  UNIQUE KEY `UNIQ_7E82D5E64D4CFF2B` (`shipping_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E64D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E679D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (1,NULL,NULL,NULL,'shop@example.com','shop@example.com','John','Doe',NULL,'u','2016-10-22 10:48:32','2016-10-22 10:48:33',NULL,0),(2,NULL,NULL,NULL,'qgraham@hotmail.com','qgraham@hotmail.com','Gussie','Windler',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(3,NULL,NULL,NULL,'towne.tomasa@yahoo.com','towne.tomasa@yahoo.com','Marilie','Haag',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(4,NULL,NULL,NULL,'norberto.schamberger@bednar.com','norberto.schamberger@bednar.com','Pietro','Stark',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(5,NULL,NULL,NULL,'gtremblay@rath.com','gtremblay@rath.com','Gay','McKenzie',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(6,NULL,NULL,NULL,'abigail.hyatt@considine.com','abigail.hyatt@considine.com','Emmanuelle','Spinka',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(7,NULL,NULL,NULL,'hahn.orpha@ward.net','hahn.orpha@ward.net','Leatha','Terry',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(8,NULL,NULL,NULL,'litzy.wilkinson@gmail.com','litzy.wilkinson@gmail.com','Myrl','Reynolds',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(9,NULL,NULL,NULL,'oswald.nienow@torphy.com','oswald.nienow@torphy.com','Israel','Larkin',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(10,NULL,NULL,NULL,'aiden34@hotmail.com','aiden34@hotmail.com','Loyce','Kreiger',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(11,NULL,NULL,NULL,'henriette.muller@hotmail.com','henriette.muller@hotmail.com','Nora','Vandervort',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(12,NULL,NULL,NULL,'dcronin@larkin.com','dcronin@larkin.com','Stephania','Walker',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(13,NULL,NULL,NULL,'mgulgowski@hand.com','mgulgowski@hand.com','Maryse','Goldner',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(14,NULL,NULL,NULL,'violette.waelchi@osinski.net','violette.waelchi@osinski.net','Bettie','Jones',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(15,NULL,NULL,NULL,'wbashirian@yahoo.com','wbashirian@yahoo.com','Cecil','Cartwright',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(16,NULL,NULL,NULL,'keely.mckenzie@yahoo.com','keely.mckenzie@yahoo.com','Dustin','Bernier',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(17,NULL,NULL,NULL,'pwisoky@hotmail.com','pwisoky@hotmail.com','Keven','Herzog',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(18,NULL,NULL,NULL,'daija.kuhlman@mcdermott.com','daija.kuhlman@mcdermott.com','Rigoberto','Considine',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(19,NULL,NULL,NULL,'terry.austin@yahoo.com','terry.austin@yahoo.com','Abelardo','Bartell',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(20,NULL,NULL,NULL,'fisher.estell@gmail.com','fisher.estell@gmail.com','Darlene','Emard',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0),(21,NULL,NULL,NULL,'doyle.preston@ziemann.net','doyle.preston@ziemann.net','Gilbert','Rutherford',NULL,'u','2016-10-22 10:48:33','2016-10-22 10:48:33',NULL,0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_email`
--

DROP TABLE IF EXISTS `sylius_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_732D4E1577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_email`
--

LOCK TABLES `sylius_email` WRITE;
/*!40000 ALTER TABLE `sylius_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (2,'es_MX',1,'2016-10-24 18:49:32','2016-10-24 18:49:32');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_migrations`
--

DROP TABLE IF EXISTS `sylius_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_migrations`
--

LOCK TABLES `sylius_migrations` WRITE;
/*!40000 ALTER TABLE `sylius_migrations` DISABLE KEYS */;
INSERT INTO `sylius_migrations` VALUES ('20160519144519'),('20160923122244'),('20160923143439'),('20160928172422'),('20161004075118'),('20161004095903'),('20161005154813'),('20161011115808'),('20161011120156'),('20161014093253'),('20161014190908'),('20161018142441'),('20161020105833'),('20161021100356'),('20161022104004');
/*!40000 ALTER TABLE `sylius_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` decimal(10,5) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (1,20);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD47048FD0F` (`credit_card_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD47048FD0F` FOREIGN KEY (`credit_card_id`) REFERENCES `sylius_credit_card` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (1,'Cash_on_delivery','offline',NULL,1,'2016-10-22 10:48:32','2016-10-22 10:48:32'),(2,'Bank_transfer','offline',NULL,1,'2016-10-22 10:48:32','2016-10-22 10:48:32');
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (1,1,'Cash on delivery','Esse iure odit quibusdam odit alias enim sapiente.',NULL,'en_US'),(2,2,'Bank transfer','Impedit quis non consectetur ea fuga facilis.',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_category_id` int(11) DEFAULT NULL,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `available_on` datetime DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B749E2D1A41` (`shipping_category_id`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  CONSTRAINT `FK_677B9B749E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (79,NULL,NULL,'16864263','2016-10-24 18:49:36',NULL,'2016-10-24 18:49:36','2016-10-24 18:49:37',1,'choice',0),(80,NULL,NULL,'16864267','2016-10-24 18:49:37',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37',1,'choice',0),(81,NULL,NULL,'16864269','2016-10-24 18:49:37',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37',1,'choice',0),(82,NULL,NULL,'16864272','2016-10-24 18:49:37',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37',1,'choice',0),(83,NULL,NULL,'16864480','2016-10-24 18:49:37',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:39',1,'choice',0),(84,NULL,NULL,'16866642','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(85,NULL,NULL,'16869359','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(86,NULL,NULL,'16873671','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(87,NULL,NULL,'16874331','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(88,NULL,NULL,'16874339','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(89,NULL,NULL,'16874348','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(90,NULL,NULL,'16874355','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(91,NULL,NULL,'16874366','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39',1,'choice',0),(92,NULL,NULL,'16891012','2016-10-24 18:49:39',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:40',1,'choice',0),(93,NULL,NULL,'16891025','2016-10-24 18:49:40',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40',1,'choice',0),(94,NULL,NULL,'16891029','2016-10-24 18:49:40',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40',1,'choice',0),(95,NULL,NULL,'16891036','2016-10-24 18:49:40',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40',1,'choice',0),(96,NULL,NULL,'16891041','2016-10-24 18:49:40',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40',1,'choice',0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `association_type_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (23,'delivery_period_when_stock','textarea','text','a:0:{}','2016-10-24 18:49:19','2016-10-24 18:49:19'),(24,'delivery_period_when_no_stock','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(25,'exclusive','checkbox','boolean','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(26,'new','checkbox','boolean','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(27,'extended warranty','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(28,'technical_specifications','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(29,'zip_disponibility','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(30,'associated_services','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(31,'can_be_seen_at','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(32,'materials','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(33,'dimensions','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(34,'packaging_and_delivery','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20'),(35,'care_and_maintenance','textarea','text','a:0:{}','2016-10-24 18:49:20','2016-10-24 18:49:20');
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (23,23,'Plazo entrega si SÍ stock','en_US'),(24,24,'Plazo entrega si No stock','en_US'),(25,25,'Exclusivo','en_US'),(26,26,'Novedad','en_US'),(27,27,'Garantía extendida','en_US'),(28,28,'Especificaciones Técnicas','en_US'),(29,29,'Disponibilidad por código postal','en_US'),(30,30,'Servicios Asociados','en_US'),(31,31,'Puedes verlo en...','en_US'),(32,32,'Materiales','en_US'),(33,33,'Dimensiones','en_US'),(34,34,'Embalaje y entrega','en_US'),(35,35,'Cuidado y mantenimiento','en_US');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_image_code_idx` (`owner_id`,`code`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
INSERT INTO `sylius_product_option` VALUES (7,'colour','2016-10-24 18:49:21','2016-10-24 18:49:21'),(8,'size','2016-10-24 18:49:21','2016-10-24 18:49:21');
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_translation` VALUES (7,7,'Color','en_US'),(8,8,'Tamaño','en_US');
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (79,117),(80,117),(81,117),(82,117),(83,118),(84,119),(85,120),(86,121),(87,122),(88,122),(89,122),(90,122),(91,122),(92,123),(93,123),(94,123),(95,123),(96,123);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A908989D9B62` (`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (79,79,'SET DE CUBIERTOS DE SERVICIO GINGKO NATU','set-de-cubiertos-de-servicio-gingko-natu',NULL,NULL,NULL,NULL,'es_MX'),(80,80,'BOWL SERVICIO CONCHA OVAL 18CM','bowl-servicio-concha-oval-18cm',NULL,NULL,NULL,NULL,'es_MX'),(81,81,'SET DE CUBIERTOS DE SERVICIO DE HUESO NE','set-de-cubiertos-de-servicio-de-hueso-ne',NULL,NULL,NULL,NULL,'es_MX'),(82,82,'SERVILLETERO DE MARIPOSA DIF COLOR','servilletero-de-mariposa-dif-color',NULL,NULL,NULL,NULL,'es_MX'),(83,83,'MESA JARDIN LAZY SUSAN REDONDA','mesa-jardin-lazy-susan-redonda',NULL,NULL,NULL,NULL,'es_MX'),(84,84,'DESC SCANNER SCANNER G3110 ACCE DIAPOS','desc-scanner-scanner-g3110-acce-diapos',NULL,NULL,NULL,NULL,'es_MX'),(85,85,'BANCO','banco',NULL,NULL,NULL,NULL,'es_MX'),(86,86,'TEATRO EN CASA MINICOMPONENTE SAMSUNG','teatro-en-casa-minicomponente-samsung',NULL,NULL,NULL,NULL,'es_MX'),(87,87,'PLUMA','pluma',NULL,NULL,NULL,NULL,'es_MX'),(88,88,'PLUMA','pluma-1',NULL,NULL,NULL,NULL,'es_MX'),(89,89,'LIBRETA','libreta',NULL,NULL,NULL,NULL,'es_MX'),(90,90,'CARPETA','carpeta',NULL,NULL,NULL,NULL,'es_MX'),(91,91,'ESTUCHE','estuche',NULL,NULL,NULL,NULL,'es_MX'),(92,92,'GAR EXT 90000-99999 COMPUTO 1 ANO','gar-ext-90000-99999-computo-1-ano',NULL,NULL,NULL,NULL,'es_MX'),(93,93,'GAR EXT 50000-59999 VIDEOJUEGOS 1 ANO','gar-ext-50000-59999-videojuegos-1-ano',NULL,NULL,NULL,NULL,'es_MX'),(94,94,'GAR EXT 70000-79999 VIDEOJUEGOS 1 ANO','gar-ext-70000-79999-videojuegos-1-ano',NULL,NULL,NULL,NULL,'es_MX'),(95,95,'GAR EXT 90000-99999 SONIDO 1 ANO','gar-ext-90000-99999-sonido-1-ano',NULL,NULL,NULL,NULL,'es_MX'),(96,96,'GAR EXT 80000-89999 VIDEOJUEGOS 2 ANOS','gar-ext-80000-89999-videojuegos-2-anos',NULL,NULL,NULL,NULL,'es_MX');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `pricing_calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pricing_configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (331,79,NULL,'16864263',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37','2016-10-24 18:49:37',NULL,0,0,0,9500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(332,80,NULL,'16864267',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37','2016-10-24 18:49:37',NULL,0,0,0,500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(333,81,NULL,'16864269',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37','2016-10-24 18:49:37',NULL,0,0,0,8500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(334,82,NULL,'16864272',NULL,'2016-10-24 18:49:37','2016-10-24 18:49:37','2016-10-24 18:49:37',NULL,0,0,0,18000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(335,83,NULL,'16864480',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,1299000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(336,84,NULL,'16866642',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,113900,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(337,85,NULL,'16869359',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,29500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(338,86,NULL,'16873671',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,97900,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(339,87,NULL,'16874331',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,11500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(340,88,NULL,'16874339',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,14500,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(341,89,NULL,'16874348',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,22800,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(342,90,NULL,'16874355',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,23800,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(343,91,NULL,'16874366',NULL,'2016-10-24 18:49:39','2016-10-24 18:49:39','2016-10-24 18:49:39',NULL,0,0,0,28800,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(344,92,NULL,'16891012',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40','2016-10-24 18:49:40',NULL,0,0,0,461400,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(345,93,NULL,'16891025',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40','2016-10-24 18:49:40',NULL,0,0,0,207000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(346,94,NULL,'16891029',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40','2016-10-24 18:49:40',NULL,0,0,0,300200,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(347,95,NULL,'16891036',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40','2016-10-24 18:49:40',NULL,0,0,0,497000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL),(348,96,NULL,'16891041',NULL,'2016-10-24 18:49:40','2016-10-24 18:49:40','2016-10-24 18:49:40',NULL,0,0,0,497000,NULL,'standard','a:0:{}',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (1,1,'shop@example.com','shop@example.com',1,'n2a8kteijpcw040o0o0gwkoswkk4cog','bTtAKA1y/quUbWXo/RiLR14Pmkvyvlnzl7RplzZeCLfRC/G9wftlKkvXCgm+rIITsJmJ7tIftH1gc0NzluFNOQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:32','2016-10-22 10:48:32'),(2,2,'qgraham@hotmail.com','qgraham@hotmail.com',1,'in9aw8fl0m8k4cck0ks4ws004gsckgk','g+x6iegEQ3ZCHZ81k1i3yWvk/fDF/bWrEfNT0vAefheD3+s/Hv6AiZV7pFDAxlhb3sIHt3RCgQyjMHxZTMmcDQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(3,3,'towne.tomasa@yahoo.com','towne.tomasa@yahoo.com',1,'hd4bpxp87moko40oco4kcc8s8gg848g','M4EZB5omtjL8+HpQeQz1p7WwjaCZpHRNxBvkUk5Ycq7IuoOXKGnqKlZQAkj384cl1ndL3sGOQX5aXEU9KNq4XQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(4,4,'norberto.schamberger@bednar.com','norberto.schamberger@bednar.com',1,'qdcvavgf4sg0gskgck80occg04g4ogs','MXYKPXXr16d70glPSkfYVqsjjQhDYp+y0d1yCTrwrVmyz6W5k3C2vZB+b3exoOiidxGplcACs6uBLEKnNzvqFA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(5,5,'gtremblay@rath.com','gtremblay@rath.com',1,'euh5rtqg5f4sssskosg40o8wow4gc80','6unEyEvZl01ZhXdJ4dRSlxgddnnZ5T69U3OrB41+nuyvKiSvXJ8hM0Zfbqa/3B3RAGue+hAngnkEXmMu4O5xPA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(6,6,'abigail.hyatt@considine.com','abigail.hyatt@considine.com',1,'5zojygj745oosoo84gw8g44804wwsws','loo44mkoGMFjnstrP5WFetv1db0UtfB6FCPULplSoZ5uRhWGK+xHRfTXGbMrxsBcd5j0Ls3PJVE7t9hU6AnsPw==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(7,7,'hahn.orpha@ward.net','hahn.orpha@ward.net',1,'tu4u1xo19zkcww0wo4cg4so4kockwok','C5vb3H/9mvfMJ7IyQr9nKfhFf748sBdjU9zfH+rZHd/DhzSk51grToXoUmC7q0RygUqNEOHPIz2n+LXdroH8VA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(8,8,'litzy.wilkinson@gmail.com','litzy.wilkinson@gmail.com',1,'e8ycvvr5vk000c4wo8kssg4k80k8kcg','D01GL2x8FtU5JG+vogSXKef/0VI6lI8/PbBuBqmgpfKn4RZBM1P7UDAwSphnRwfZbxtM2cpE5lc8STSqW2pBbg==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(9,9,'oswald.nienow@torphy.com','oswald.nienow@torphy.com',1,'2wifoej9ibs4ks0gwo404scgwwkkgc0','ZaQtwZHxNQ4lqBvwZF+5a1dRda1T/Fy6gNNXhs08uCP5PO2oldn0qf58NahJjR/nLTbmheZVtVs0WO7FvxGTTw==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(10,10,'aiden34@hotmail.com','aiden34@hotmail.com',1,'ln4r8eenjpc0c0gwkgg480w8c0wo4sc','yTEtJowq7odI+aCm2+toP/erkhyZ6CRmAAazD1NLwnKP5flRgYmfdGjFvHgDP2Vye/KstJN1VBbI3FsfdUm9yQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(11,11,'henriette.muller@hotmail.com','henriette.muller@hotmail.com',1,'moa5hj2uoyoks8wwwoskwg880ws4wsw','qLcIOHPnKTAf4O1g1UPDhKAuXvORtMsDKF5nzH7UuE4bfokY/SGbEP/cl0vLDT1U1lQ54Dm8YqUrDRAuvZVJeg==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(12,12,'dcronin@larkin.com','dcronin@larkin.com',1,'7vteov2h5u040kkw4k0k404ggs840oc','k9HMv0CZzzjXjqntAR/Z/mTKc1uj1AXxCvuzSYCN0dYutaGku3CDQGkCkmDQVqbxlaCFINpyxhnjPhPkrRu3lw==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(13,13,'mgulgowski@hand.com','mgulgowski@hand.com',1,'swrbyt55jqs848oko0s0so04ow08coo','qitBRv4pxcVXlIqz3hLuZPlTfOwdDms2pq3HrKO6pz3xOcjU9qNAyKVqgnG4jjHj6ufFtp18RGvmEkAjjjWnkA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(14,14,'violette.waelchi@osinski.net','violette.waelchi@osinski.net',1,'91o0tumr54gskwo44c4k8gcwk8gk004','QjJyyoJWLTV6zzab8T3NxMPmrll9n/JUUiEoX6IykrVikx+ghttsz1rxBjEhadOPtUbT1dS5EFlt2Xdz8nI4dQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(15,15,'wbashirian@yahoo.com','wbashirian@yahoo.com',1,'hv9tgdtx83cwg4kgckgco088ksogo8k','6EqRliup4n6z2PsXNjIoc1PRG3hBMwvVg2qRVmmigFIfgTxgnrvwRcrb70EDrWpX3jzcxQynGPsK90cKZAWm5w==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(16,16,'keely.mckenzie@yahoo.com','keely.mckenzie@yahoo.com',0,'h5gqtpmjybcwkk0gswsssosc048wow8','hM+qcfKdg9nIEL9eoAhAqtSWY8LY12ojV2iQse/SvC8XmNuF1PpqbKddhkW7thl/ext/psTQXwhH/L/jm3uNow==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(17,17,'pwisoky@hotmail.com','pwisoky@hotmail.com',1,'1cl0xm17xlk0c888c0k408c08osgcgo','3rXQsAHEebnGcrzMrJeAUtFmdzQTkHIzoWchvG/SwSDNWDKYHCwB3LCtfZN7ZJmGhUDs6s+mns2X3yqbftSZnA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(18,18,'daija.kuhlman@mcdermott.com','daija.kuhlman@mcdermott.com',1,'q00tsfe8is08w8c088sc8ck4wkow44w','qtenEqPZuzBZpjuOMs7aVnjh2MB9hENNL10nFMHmyqqAf8/IVSDwcmGMBpUzL6eEyuI7M0h38hoaLh3rTH+Qcg==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(19,19,'terry.austin@yahoo.com','terry.austin@yahoo.com',0,'pgbh5cr1vcgswo8ckswk808gk8wk08s','Ff3rwFIHiujdVGgUjD+5oCpaZqRgfB6FpBrcmznJU+CbqCfiXBUMJVqshDEx4DrO83Q+9Qi5JPgegM2H3CL9DQ==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(20,20,'fisher.estell@gmail.com','fisher.estell@gmail.com',1,'avefzdxunu8so44sk84w0040soo0g4g','Br4pK2/bzCkqhVLoHLRdR/LeysMTJOk8rwyfZhw8UW9jGqi2DnKOxXHjcG6+eZtz5VZh8OwJitGiz88kfB1f1w==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33'),(21,21,'doyle.preston@ziemann.net','doyle.preston@ziemann.net',1,'hfnqr1jo3uo04w8s4oooo0o0cwswko8','Awht7UKYvj4f4EcKGAZcNAQxpXT5gw3+b7mxbu7Ek1+l9341cJXRHWEU5i+Hn9NJNkbmbBtbBunM3ZVNr8+QNA==',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2016-10-22 10:48:33','2016-10-22 10:48:33');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` VALUES (1,'Clothing','Clothing','Reprehenderit rerum consequatur dolore numquam commodi. Ducimus eligendi rem illum qui officia voluptas voluptatum. Natus voluptates fugiat architecto cupiditate sequi alias animi. Qui nostrum perferendis quis cupiditate placeat dolorem id.','2016-10-22 10:48:33','2016-10-22 10:48:33'),(2,'Books','Books','Ad excepturi inventore architecto est unde ut. Sed optio et natus maiores error a nisi est. Voluptas et numquam ex similique iusto excepturi voluptas.','2016-10-22 10:48:33','2016-10-22 10:48:33'),(3,'Other','Other','Labore velit quisquam possimus molestiae qui ea fuga. Molestias aperiam ut non. Ipsa corporis dolores ipsum.','2016-10-22 10:48:33','2016-10-22 10:48:33');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (1,1,NULL,'category',1,14,0),(2,1,1,'mugs',2,3,1),(3,1,1,'stickers',4,5,1),(4,1,1,'books',6,7,1),(5,1,1,'t_shirts',8,13,1),(6,1,5,'mens_t_shirts',9,10,2),(7,1,5,'womens_t_shirts',11,12,2),(8,8,NULL,'categoria',1,200,0),(9,8,8,'muebles',2,47,1),(10,8,9,'sillas-sillones',3,14,2),(11,8,10,'bancos',4,5,3),(12,8,10,'sofas',6,7,3),(13,8,10,'sillones',8,9,3),(14,8,10,'taburetes',10,11,3),(15,8,10,'sillas',12,13,3),(16,8,9,'mesas-escritorios',15,26,2),(17,8,16,'escritorios',16,17,3),(18,8,16,'mesas-cafe',18,19,3),(19,8,16,'mesas-comedor',20,21,3),(20,8,16,'mesita-noche',22,23,3),(21,8,16,'mesa-sala',24,25,3),(22,8,9,'almacenaje-exhibicion',27,42,2),(23,8,22,'armarios',28,29,3),(24,8,22,'estanterias',30,31,3),(25,8,22,'percheros',32,33,3),(26,8,22,'vitrinas-aparadores',34,35,3),(27,8,22,'alacenas',36,37,3),(28,8,22,'cavas',38,39,3),(29,8,22,'bares',40,41,3),(30,8,9,'exterior',43,44,2),(31,8,9,'entretenimiento',45,46,2),(32,8,8,'iluminacion',48,59,1),(33,8,32,'lamparas-mesa',49,50,2),(34,8,32,'lamparas-piso',51,52,2),(35,8,32,'lamparas-techo',53,54,2),(36,8,32,'apliques-pared',55,56,2),(37,8,32,'luces-exterior',57,58,2),(38,8,8,'cocina',60,77,1),(39,8,38,'sartenes',61,62,2),(40,8,38,'bateria-cocina',63,64,2),(41,8,38,'ollas-expres',65,66,2),(42,8,38,'planchas-cocina',67,68,2),(43,8,38,'cocina-vapor',69,70,2),(44,8,38,'cocina-horno',71,72,2),(45,8,38,'moldes-microondas',73,74,2),(46,8,38,'cuchillos',75,76,2),(47,8,8,'linea-blanca',78,97,1),(48,8,47,'estufas',79,80,2),(49,8,47,'vitroceramica',81,82,2),(50,8,47,'hornos',83,84,2),(51,8,47,'microondas',85,86,2),(52,8,47,'refrigeradores',87,88,2),(53,8,47,'lavavajillas',89,90,2),(54,8,47,'parillas-campanas',91,92,2),(55,8,47,'lavadora',93,94,2),(56,8,47,'secadora',95,96,2),(57,8,8,'vajilla-cristaleria',98,99,1),(58,8,8,'spa-bano',100,111,1),(59,8,58,'banos',101,102,2),(60,8,58,'toallas',103,104,2),(61,8,58,'batas-albornoces',105,106,2),(62,8,58,'cuidado-personal',107,108,2),(63,8,58,'aromaterapia',109,110,2),(64,8,8,'tecnologia',112,129,1),(65,8,64,'equipos-sonido',113,114,2),(66,8,64,'reproductores-video',115,116,2),(67,8,64,'televisores',117,118,2),(68,8,64,'computadoras',119,120,2),(69,8,64,'tablets',121,122,2),(70,8,64,'camaras',123,124,2),(71,8,64,'fitness',125,126,2),(72,8,64,'accesorios-tecnologia',127,128,2),(73,8,8,'decoracion',130,165,1),(74,8,73,'textil',131,140,2),(75,8,74,'tapetes',132,133,3),(76,8,74,'alfombras',134,135,3),(77,8,74,'manteleria',136,137,3),(78,8,74,'cortinas',138,139,3),(79,8,73,'arte',141,148,2),(80,8,79,'pinturas',142,143,3),(81,8,79,'fotografia',144,145,3),(82,8,79,'dibujos',146,147,3),(83,8,73,'espejos',149,154,2),(84,8,83,'espejos-pared',150,151,3),(85,8,83,'espejos-suelo',152,153,3),(86,8,73,'cojines-decorativos',155,156,2),(87,8,73,'flores-floreros',157,158,2),(88,8,73,'velas-ambientadores',159,160,2),(89,8,73,'antiguedades',161,162,2),(90,8,73,'varios-decoracion',163,164,2),(91,8,8,'organizacion-limpieza',166,179,1),(92,8,91,'closet',167,168,2),(93,8,91,'cajas-cestos',169,170,2),(94,8,91,'botes-basura',171,172,2),(95,8,91,'planchas',173,174,2),(96,8,91,'aspiradores',175,176,2),(97,8,91,'varios-organizacion',177,178,2),(98,8,8,'libros',180,181,1),(99,8,8,'camas',182,189,1),(100,8,99,'ropa-cama',183,184,2),(101,8,99,'colchones',185,186,2),(102,8,99,'accesorios-camas',187,188,2),(103,8,8,'superficies',190,199,1),(104,8,103,'suelo',191,192,2),(105,8,103,'muros',193,194,2),(106,8,103,'ventanas',195,196,2),(107,8,103,'resto-superficies',197,198,2),(108,108,NULL,'espacio',1,14,0),(109,108,108,'espacio-bano',2,3,1),(110,108,108,'espacio-cocina',4,5,1),(111,108,108,'espacio-recamara',6,7,1),(112,108,108,'espacio-comedor',8,9,1),(113,108,108,'espacio-patio-terrazas',10,11,1),(114,108,108,'espacio-oficina-casa',12,13,1),(115,115,NULL,'marca',1,18,0),(116,115,115,'marca-atlantis',2,3,1),(117,115,115,'craft_home',4,5,1),(118,115,115,'butzke',6,7,1),(119,115,115,'h_p',8,9,1),(120,115,115,'lief_living',10,11,1),(121,115,115,'samsung',12,13,1),(122,115,115,'esprit',14,15,1),(123,115,115,'garantias',16,17,1);
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxon_image_code_idx` (`owner_id`,`code`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permalink_uidx` (`locale`,`permalink`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (1,1,'Category','category','category','Voluptatem consectetur nobis consequatur officiis. Harum quam quis qui. Laboriosam quia explicabo accusamus doloremque aut est non.','en_US'),(2,2,'Mugs','mugs','category/mugs','Voluptas quis atque dolore accusamus atque deleniti doloremque. Velit sint est eius est debitis consequatur. Non et totam dolorum dignissimos odit aperiam quae magnam.','en_US'),(3,3,'Stickers','stickers','category/stickers','Modi aut rerum quaerat voluptatem magni. Impedit ea a libero voluptatum labore ut sit nisi. Et alias officiis odit sed. Distinctio commodi nostrum aut.','en_US'),(4,4,'Books','books','category/books','Fuga corporis sit adipisci et. Est sit natus esse minus nihil qui. Ut ex occaecati corrupti officiis. Eius dolorem molestias aut dignissimos fuga modi neque.','en_US'),(5,5,'T-Shirts','t-shirts','category/t-shirts','Ullam nostrum omnis ipsa tempora exercitationem distinctio neque. Ea voluptas reprehenderit dignissimos autem. Eos quo dolor tempora quia.','en_US'),(6,6,'Men','men','category/t-shirts/men','Vel quo laborum numquam omnis commodi repudiandae et. Qui assumenda cum et quo quas. Quia totam corrupti itaque assumenda. Id voluptatem ut ut sit dolor in.','en_US'),(7,7,'Women','women','category/t-shirts/women','Voluptatibus corporis maxime est fugit et. Repudiandae et quam et veritatis ex illo magni. Facere corporis omnis laboriosam pariatur.','en_US'),(8,8,'Categoría','categoria','categoria',NULL,'en_US'),(9,8,'Categoría','categoria','categoria',NULL,'es_MX'),(10,9,'Muebles','muebles','categoria/muebles',NULL,'en_US'),(11,9,'Muebles','muebles','categoria/muebles',NULL,'es_MX'),(12,10,'Sillas y sillones','sillas-y-sillones','categoria/muebles/sillas-y-sillones',NULL,'en_US'),(13,10,'Sillas y sillones','sillas-y-sillones','categoria/muebles/sillas-y-sillones',NULL,'es_MX'),(14,11,'Bancos','bancos','categoria/muebles/sillas-y-sillones/bancos',NULL,'en_US'),(15,11,'Bancos','bancos','categoria/muebles/sillas-y-sillones/bancos',NULL,'es_MX'),(16,12,'Sofas','sofas','categoria/muebles/sillas-y-sillones/sofas',NULL,'en_US'),(17,12,'Sofas','sofas','categoria/muebles/sillas-y-sillones/sofas',NULL,'es_MX'),(18,13,'Sillones','sillones','categoria/muebles/sillas-y-sillones/sillones',NULL,'en_US'),(19,13,'Sillones','sillones','categoria/muebles/sillas-y-sillones/sillones',NULL,'es_MX'),(20,14,'Taburetes','taburetes','categoria/muebles/sillas-y-sillones/taburetes',NULL,'en_US'),(21,14,'Taburetes','taburetes','categoria/muebles/sillas-y-sillones/taburetes',NULL,'es_MX'),(22,15,'Sillas','sillas','categoria/muebles/sillas-y-sillones/sillas',NULL,'en_US'),(23,15,'Sillas','sillas','categoria/muebles/sillas-y-sillones/sillas',NULL,'es_MX'),(24,16,'Mesas y escritorios','mesas-y-escritorios','categoria/muebles/mesas-y-escritorios',NULL,'en_US'),(25,16,'Mesas y escritorios','mesas-y-escritorios','categoria/muebles/mesas-y-escritorios',NULL,'es_MX'),(26,17,'Escritorios','escritorios','categoria/muebles/mesas-y-escritorios/escritorios',NULL,'en_US'),(27,17,'Escritorios','escritorios','categoria/muebles/mesas-y-escritorios/escritorios',NULL,'es_MX'),(28,18,'Mesas de café','mesas-de-cafe','categoria/muebles/mesas-y-escritorios/mesas-de-cafe',NULL,'en_US'),(29,18,'Mesas de café','mesas-de-cafe','categoria/muebles/mesas-y-escritorios/mesas-de-cafe',NULL,'es_MX'),(30,19,'Mesas de comedor','mesas-de-comedor','categoria/muebles/mesas-y-escritorios/mesas-de-comedor',NULL,'en_US'),(31,19,'Mesas de comedor','mesas-de-comedor','categoria/muebles/mesas-y-escritorios/mesas-de-comedor',NULL,'es_MX'),(32,20,'Mesitas de noche','mesitas-de-noche','categoria/muebles/mesas-y-escritorios/mesitas-de-noche',NULL,'en_US'),(33,20,'Mesitas de noche','mesitas-de-noche','categoria/muebles/mesas-y-escritorios/mesitas-de-noche',NULL,'es_MX'),(34,21,'Mesa de sala','mesa-de-sala','categoria/muebles/mesas-y-escritorios/mesa-de-sala',NULL,'en_US'),(35,21,'Mesa de sala','mesa-de-sala','categoria/muebles/mesas-y-escritorios/mesa-de-sala',NULL,'es_MX'),(36,22,'Almacenaje y exhibición','almacenaje-y-exhibicion','categoria/muebles/almacenaje-y-exhibicion',NULL,'en_US'),(37,22,'Almacenaje y exhibición','almacenaje-y-exhibicion','categoria/muebles/almacenaje-y-exhibicion',NULL,'es_MX'),(38,23,'Armarios','armarios','categoria/muebles/almacenaje-y-exhibicion/armarios',NULL,'en_US'),(39,23,'Armarios','armarios','categoria/muebles/almacenaje-y-exhibicion/armarios',NULL,'es_MX'),(40,24,'Estanterías','estanterias','categoria/muebles/almacenaje-y-exhibicion/estanterias',NULL,'en_US'),(41,24,'Estanterías','estanterias','categoria/muebles/almacenaje-y-exhibicion/estanterias',NULL,'es_MX'),(42,25,'Percheros','percheros','categoria/muebles/almacenaje-y-exhibicion/percheros',NULL,'en_US'),(43,25,'Percheros','percheros','categoria/muebles/almacenaje-y-exhibicion/percheros',NULL,'es_MX'),(44,26,'Vitrinas y aparadores','vitrinas-y-aparadores','categoria/muebles/almacenaje-y-exhibicion/vitrinas-y-aparadores',NULL,'en_US'),(45,26,'Vitrinas y aparadores','vitrinas-y-aparadores','categoria/muebles/almacenaje-y-exhibicion/vitrinas-y-aparadores',NULL,'es_MX'),(46,27,'Alacenas','alacenas','categoria/muebles/almacenaje-y-exhibicion/alacenas',NULL,'en_US'),(47,27,'Alacenas','alacenas','categoria/muebles/almacenaje-y-exhibicion/alacenas',NULL,'es_MX'),(48,28,'Cavas','cavas','categoria/muebles/almacenaje-y-exhibicion/cavas',NULL,'en_US'),(49,28,'Cavas','cavas','categoria/muebles/almacenaje-y-exhibicion/cavas',NULL,'es_MX'),(50,29,'Bares','bares','categoria/muebles/almacenaje-y-exhibicion/bares',NULL,'en_US'),(51,29,'Bares','bares','categoria/muebles/almacenaje-y-exhibicion/bares',NULL,'es_MX'),(52,30,'Exterior','exterior','categoria/muebles/exterior',NULL,'en_US'),(53,30,'Exterior','exterior','categoria/muebles/exterior',NULL,'es_MX'),(54,31,'Entretenimiento','entretenimiento','categoria/muebles/entretenimiento',NULL,'en_US'),(55,31,'Entretenimiento','entretenimiento','categoria/muebles/entretenimiento',NULL,'es_MX'),(56,32,'Iluminación','iluminacion','categoria/iluminacion',NULL,'en_US'),(57,32,'Iluminación','iluminacion','categoria/iluminacion',NULL,'es_MX'),(58,33,'Lámparas de mesa','lamparas-de-mesa','categoria/iluminacion/lamparas-de-mesa',NULL,'en_US'),(59,33,'Lámparas de mesa','lamparas-de-mesa','categoria/iluminacion/lamparas-de-mesa',NULL,'es_MX'),(60,34,'Lámparas de piso','lamparas-de-piso','categoria/iluminacion/lamparas-de-piso',NULL,'en_US'),(61,34,'Lámparas de piso','lamparas-de-piso','categoria/iluminacion/lamparas-de-piso',NULL,'es_MX'),(62,35,'Lámparas de techo','lamparas-de-techo','categoria/iluminacion/lamparas-de-techo',NULL,'en_US'),(63,35,'Lámparas de techo','lamparas-de-techo','categoria/iluminacion/lamparas-de-techo',NULL,'es_MX'),(64,36,'Apliques de pared','apliques-de-pared','categoria/iluminacion/apliques-de-pared',NULL,'en_US'),(65,36,'Apliques de pared','apliques-de-pared','categoria/iluminacion/apliques-de-pared',NULL,'es_MX'),(66,37,'Luces de exterior','luces-de-exterior','categoria/iluminacion/luces-de-exterior',NULL,'en_US'),(67,37,'Luces de exterior','luces-de-exterior','categoria/iluminacion/luces-de-exterior',NULL,'es_MX'),(68,38,'Cocina','cocina','categoria/cocina',NULL,'en_US'),(69,38,'Cocina','cocina','categoria/cocina',NULL,'es_MX'),(70,39,'Sartenes','sartenes','categoria/cocina/sartenes',NULL,'en_US'),(71,39,'Sartenes','sartenes','categoria/cocina/sartenes',NULL,'es_MX'),(72,40,'Batería de cocina','bateria-de-cocina','categoria/cocina/bateria-de-cocina',NULL,'en_US'),(73,40,'Batería de cocina','bateria-de-cocina','categoria/cocina/bateria-de-cocina',NULL,'es_MX'),(74,41,'Ollas express','ollas-express','categoria/cocina/ollas-express',NULL,'en_US'),(75,41,'Ollas express','ollas-express','categoria/cocina/ollas-express',NULL,'es_MX'),(76,42,'Planchas de cocina','planchas-de-cocina','categoria/cocina/planchas-de-cocina',NULL,'en_US'),(77,42,'Planchas de cocina','planchas-de-cocina','categoria/cocina/planchas-de-cocina',NULL,'es_MX'),(78,43,'Cocina al vapor','cocina-al-vapor','categoria/cocina/cocina-al-vapor',NULL,'en_US'),(79,43,'Cocina al vapor','cocina-al-vapor','categoria/cocina/cocina-al-vapor',NULL,'es_MX'),(80,44,'Cocina al horno','cocina-al-horno','categoria/cocina/cocina-al-horno',NULL,'en_US'),(81,44,'Cocina al horno','cocina-al-horno','categoria/cocina/cocina-al-horno',NULL,'es_MX'),(82,45,'Moldes para microondas','moldes-para-microondas','categoria/cocina/moldes-para-microondas',NULL,'en_US'),(83,45,'Moldes para microondas','moldes-para-microondas','categoria/cocina/moldes-para-microondas',NULL,'es_MX'),(84,46,'Cuchillos','cuchillos','categoria/cocina/cuchillos',NULL,'en_US'),(85,46,'Cuchillos','cuchillos','categoria/cocina/cuchillos',NULL,'es_MX'),(86,47,'Línea blanca','linea-blanca','categoria/linea-blanca',NULL,'en_US'),(87,47,'Línea blanca','linea-blanca','categoria/linea-blanca',NULL,'es_MX'),(88,48,'Estufas','estufas','categoria/linea-blanca/estufas',NULL,'en_US'),(89,48,'Estufas','estufas','categoria/linea-blanca/estufas',NULL,'es_MX'),(90,49,'Vitrocerámica','vitroceramica','categoria/linea-blanca/vitroceramica',NULL,'en_US'),(91,49,'Vitrocerámica','vitroceramica','categoria/linea-blanca/vitroceramica',NULL,'es_MX'),(92,50,'Hornos','hornos','categoria/linea-blanca/hornos',NULL,'en_US'),(93,50,'Hornos','hornos','categoria/linea-blanca/hornos',NULL,'es_MX'),(94,51,'Microondas','microondas','categoria/linea-blanca/microondas',NULL,'en_US'),(95,51,'Microondas','microondas','categoria/linea-blanca/microondas',NULL,'es_MX'),(96,52,'Refrigeradores','refrigeradores','categoria/linea-blanca/refrigeradores',NULL,'en_US'),(97,52,'Refrigeradores','refrigeradores','categoria/linea-blanca/refrigeradores',NULL,'es_MX'),(98,53,'Lavavajillas','lavavajillas','categoria/linea-blanca/lavavajillas',NULL,'en_US'),(99,53,'Lavavajillas','lavavajillas','categoria/linea-blanca/lavavajillas',NULL,'es_MX'),(100,54,'Parrillas y campanas','parrillas-y-campanas','categoria/linea-blanca/parrillas-y-campanas',NULL,'en_US'),(101,54,'Parrillas y campanas','parrillas-y-campanas','categoria/linea-blanca/parrillas-y-campanas',NULL,'es_MX'),(102,55,'Lavadora','lavadora','categoria/linea-blanca/lavadora',NULL,'en_US'),(103,55,'Lavadora','lavadora','categoria/linea-blanca/lavadora',NULL,'es_MX'),(104,56,'Secadora','secadora','categoria/linea-blanca/secadora',NULL,'en_US'),(105,56,'Secadora','secadora','categoria/linea-blanca/secadora',NULL,'es_MX'),(106,57,'Vajilla y cristalería','vajilla-y-cristaleria','categoria/vajilla-y-cristaleria',NULL,'en_US'),(107,57,'Vajilla y cristalería','vajilla-y-cristaleria','categoria/vajilla-y-cristaleria',NULL,'es_MX'),(108,58,'Spa y baño','spa-y-bano','categoria/spa-y-bano',NULL,'en_US'),(109,58,'Spa y baño','spa-y-bano','categoria/spa-y-bano',NULL,'es_MX'),(110,59,'Baños','banos','categoria/spa-y-bano/banos',NULL,'en_US'),(111,59,'Baños','banos','categoria/spa-y-bano/banos',NULL,'es_MX'),(112,60,'Toallas','toallas','categoria/spa-y-bano/toallas',NULL,'en_US'),(113,60,'Toallas','toallas','categoria/spa-y-bano/toallas',NULL,'es_MX'),(114,61,'Batas y albornoces','batas-y-albornoces','categoria/spa-y-bano/batas-y-albornoces',NULL,'en_US'),(115,61,'Batas y albornoces','batas-y-albornoces','categoria/spa-y-bano/batas-y-albornoces',NULL,'es_MX'),(116,62,'Cuidado personal','cuidado-personal','categoria/spa-y-bano/cuidado-personal',NULL,'en_US'),(117,62,'Cuidado personal','cuidado-personal','categoria/spa-y-bano/cuidado-personal',NULL,'es_MX'),(118,63,'Aromaterapia','aromaterapia','categoria/spa-y-bano/aromaterapia',NULL,'en_US'),(119,63,'Aromaterapia','aromaterapia','categoria/spa-y-bano/aromaterapia',NULL,'es_MX'),(120,64,'Tecnología','tecnologia','categoria/tecnologia',NULL,'en_US'),(121,64,'Tecnología','tecnologia','categoria/tecnologia',NULL,'es_MX'),(122,65,'Equipos de sonido','equipos-de-sonido','categoria/tecnologia/equipos-de-sonido',NULL,'en_US'),(123,65,'Equipos de sonido','equipos-de-sonido','categoria/tecnologia/equipos-de-sonido',NULL,'es_MX'),(124,66,'Reproductores de video','reproductores-de-video','categoria/tecnologia/reproductores-de-video',NULL,'en_US'),(125,66,'Reproductores de video','reproductores-de-video','categoria/tecnologia/reproductores-de-video',NULL,'es_MX'),(126,67,'Televisores','televisores','categoria/tecnologia/televisores',NULL,'en_US'),(127,67,'Televisores','televisores','categoria/tecnologia/televisores',NULL,'es_MX'),(128,68,'Computadoras','computadoras','categoria/tecnologia/computadoras',NULL,'en_US'),(129,68,'Computadoras','computadoras','categoria/tecnologia/computadoras',NULL,'es_MX'),(130,69,'Tablets','tablets','categoria/tecnologia/tablets',NULL,'en_US'),(131,69,'Tablets','tablets','categoria/tecnologia/tablets',NULL,'es_MX'),(132,70,'Cámaras','camaras','categoria/tecnologia/camaras',NULL,'en_US'),(133,70,'Cámaras','camaras','categoria/tecnologia/camaras',NULL,'es_MX'),(134,71,'Fitness','fitness','categoria/tecnologia/fitness',NULL,'en_US'),(135,71,'Fitness','fitness','categoria/tecnologia/fitness',NULL,'es_MX'),(136,72,'Accesorios','accesorios','categoria/tecnologia/accesorios',NULL,'en_US'),(137,72,'Accesorios','accesorios','categoria/tecnologia/accesorios',NULL,'es_MX'),(138,73,'Decoración','decoracion','categoria/decoracion',NULL,'en_US'),(139,73,'Decoración','decoracion','categoria/decoracion',NULL,'es_MX'),(140,74,'Textil','textil','categoria/decoracion/textil',NULL,'en_US'),(141,74,'Textil','textil','categoria/decoracion/textil',NULL,'es_MX'),(142,75,'Tapetes','tapetes','categoria/decoracion/textil/tapetes',NULL,'en_US'),(143,75,'Tapetes','tapetes','categoria/decoracion/textil/tapetes',NULL,'es_MX'),(144,76,'Alfombras','alfombras','categoria/decoracion/textil/alfombras',NULL,'en_US'),(145,76,'Alfombras','alfombras','categoria/decoracion/textil/alfombras',NULL,'es_MX'),(146,77,'Mantelería','manteleria','categoria/decoracion/textil/manteleria',NULL,'en_US'),(147,77,'Mantelería','manteleria','categoria/decoracion/textil/manteleria',NULL,'es_MX'),(148,78,'Cortinas','cortinas','categoria/decoracion/textil/cortinas',NULL,'en_US'),(149,78,'Cortinas','cortinas','categoria/decoracion/textil/cortinas',NULL,'es_MX'),(150,79,'Arte','arte','categoria/decoracion/arte',NULL,'en_US'),(151,79,'Arte','arte','categoria/decoracion/arte',NULL,'es_MX'),(152,80,'Pinturas','pinturas','categoria/decoracion/arte/pinturas',NULL,'en_US'),(153,80,'Pinturas','pinturas','categoria/decoracion/arte/pinturas',NULL,'es_MX'),(154,81,'Fotografía','fotografia','categoria/decoracion/arte/fotografia',NULL,'en_US'),(155,81,'Fotografía','fotografia','categoria/decoracion/arte/fotografia',NULL,'es_MX'),(156,82,'Dibujos','dibujos','categoria/decoracion/arte/dibujos',NULL,'en_US'),(157,82,'Dibujos','dibujos','categoria/decoracion/arte/dibujos',NULL,'es_MX'),(158,83,'Espejos','espejos','categoria/decoracion/espejos',NULL,'en_US'),(159,83,'Espejos','espejos','categoria/decoracion/espejos',NULL,'es_MX'),(160,84,'Espejos de pared','espejos-de-pared','categoria/decoracion/espejos/espejos-de-pared',NULL,'en_US'),(161,84,'Espejos de pared','espejos-de-pared','categoria/decoracion/espejos/espejos-de-pared',NULL,'es_MX'),(162,85,'Espejos de suelo','espejos-de-suelo','categoria/decoracion/espejos/espejos-de-suelo',NULL,'en_US'),(163,85,'Espejos de suelo','espejos-de-suelo','categoria/decoracion/espejos/espejos-de-suelo',NULL,'es_MX'),(164,86,'Cojines decorativos','cojines-decorativos','categoria/decoracion/cojines-decorativos',NULL,'en_US'),(165,86,'Cojines decorativos','cojines-decorativos','categoria/decoracion/cojines-decorativos',NULL,'es_MX'),(166,87,'Flores y floreros','flores-y-floreros','categoria/decoracion/flores-y-floreros',NULL,'en_US'),(167,87,'Flores y floreros','flores-y-floreros','categoria/decoracion/flores-y-floreros',NULL,'es_MX'),(168,88,'Velas y ambientadores','velas-y-ambientadores','categoria/decoracion/velas-y-ambientadores',NULL,'en_US'),(169,88,'Velas y ambientadores','velas-y-ambientadores','categoria/decoracion/velas-y-ambientadores',NULL,'es_MX'),(170,89,'Antigüedades','antiguedades','categoria/decoracion/antiguedades',NULL,'en_US'),(171,89,'Antigüedades','antiguedades','categoria/decoracion/antiguedades',NULL,'es_MX'),(172,90,'Varios','varios','categoria/decoracion/varios',NULL,'en_US'),(173,90,'Varios','varios','categoria/decoracion/varios',NULL,'es_MX'),(174,91,'Organización y limpieza','organizacion-y-limpieza','categoria/organizacion-y-limpieza',NULL,'en_US'),(175,91,'Organización y limpieza','organizacion-y-limpieza','categoria/organizacion-y-limpieza',NULL,'es_MX'),(176,92,'Closet','closet','categoria/organizacion-y-limpieza/closet',NULL,'en_US'),(177,92,'Closet','closet','categoria/organizacion-y-limpieza/closet',NULL,'es_MX'),(178,93,'Cajas y cestos','cajas-y-cestos','categoria/organizacion-y-limpieza/cajas-y-cestos',NULL,'en_US'),(179,93,'Cajas y cestos','cajas-y-cestos','categoria/organizacion-y-limpieza/cajas-y-cestos',NULL,'es_MX'),(180,94,'Botes de basura','botes-de-basura','categoria/organizacion-y-limpieza/botes-de-basura',NULL,'en_US'),(181,94,'Botes de basura','botes-de-basura','categoria/organizacion-y-limpieza/botes-de-basura',NULL,'es_MX'),(182,95,'Planchas','planchas','categoria/organizacion-y-limpieza/planchas',NULL,'en_US'),(183,95,'Planchas','planchas','categoria/organizacion-y-limpieza/planchas',NULL,'es_MX'),(184,96,'Aspiradores','aspiradores','categoria/organizacion-y-limpieza/aspiradores',NULL,'en_US'),(185,96,'Aspiradores','aspiradores','categoria/organizacion-y-limpieza/aspiradores',NULL,'es_MX'),(186,97,'Varios','varios','categoria/organizacion-y-limpieza/varios',NULL,'en_US'),(187,97,'Varios','varios','categoria/organizacion-y-limpieza/varios',NULL,'es_MX'),(188,98,'Libros','libros','categoria/libros',NULL,'en_US'),(189,98,'Libros','libros','categoria/libros',NULL,'es_MX'),(190,99,'Camas','camas','categoria/camas',NULL,'en_US'),(191,99,'Camas','camas','categoria/camas',NULL,'es_MX'),(192,100,'Ropa de cama','ropa-de-cama','categoria/camas/ropa-de-cama',NULL,'en_US'),(193,100,'Ropa de cama','ropa-de-cama','categoria/camas/ropa-de-cama',NULL,'es_MX'),(194,101,'Colchones','colchones','categoria/camas/colchones',NULL,'en_US'),(195,101,'Colchones','colchones','categoria/camas/colchones',NULL,'es_MX'),(196,102,'Accesorios','accesorios','categoria/camas/accesorios',NULL,'en_US'),(197,102,'Accesorios','accesorios','categoria/camas/accesorios',NULL,'es_MX'),(198,103,'Superficies','superficies','categoria/superficies',NULL,'en_US'),(199,103,'Superficies','superficies','categoria/superficies',NULL,'es_MX'),(200,104,'Suelo','suelo','categoria/superficies/suelo',NULL,'en_US'),(201,104,'Suelo','suelo','categoria/superficies/suelo',NULL,'es_MX'),(202,105,'Muros','muros','categoria/superficies/muros',NULL,'en_US'),(203,105,'Muros','muros','categoria/superficies/muros',NULL,'es_MX'),(204,106,'Ventanas','ventanas','categoria/superficies/ventanas',NULL,'en_US'),(205,106,'Ventanas','ventanas','categoria/superficies/ventanas',NULL,'es_MX'),(206,107,'Resto de superficies','resto-de-superficies','categoria/superficies/resto-de-superficies',NULL,'en_US'),(207,107,'Resto de superficies','resto-de-superficies','categoria/superficies/resto-de-superficies',NULL,'es_MX'),(208,108,'Espacio','espacio','espacio',NULL,'en_US'),(209,108,'Espacio','espacio','espacio',NULL,'es_MX'),(210,109,'Baño','bano','espacio/bano',NULL,'en_US'),(211,109,'Baño','bano','espacio/bano',NULL,'es_MX'),(212,110,'Cocina','cocina','espacio/cocina',NULL,'en_US'),(213,110,'Cocina','cocina','espacio/cocina',NULL,'es_MX'),(214,111,'Recámara','recamara','espacio/recamara',NULL,'en_US'),(215,111,'Recámara','recamara','espacio/recamara',NULL,'es_MX'),(216,112,'Comedor','comedor','espacio/comedor',NULL,'en_US'),(217,112,'Comedor','comedor','espacio/comedor',NULL,'es_MX'),(218,113,'Patio y terrazas','patio-y-terrazas','espacio/patio-y-terrazas',NULL,'en_US'),(219,113,'Patio y terrazas','patio-y-terrazas','espacio/patio-y-terrazas',NULL,'es_MX'),(220,114,'Oficina en casa','oficina-en-casa','espacio/oficina-en-casa',NULL,'en_US'),(221,114,'Oficina en casa','oficina-en-casa','espacio/oficina-en-casa',NULL,'es_MX'),(222,115,'Marca','marca','marca',NULL,'en_US'),(223,115,'Marca','marca','marca',NULL,'es_MX'),(224,116,'Atlantis','atlantis','marca/atlantis',NULL,'en_US'),(225,116,'Atlantis','atlantis','marca/atlantis',NULL,'es_MX'),(226,117,'CRAFT HOME','craft-home','marca/craft-home',NULL,'en_US'),(227,117,'CRAFT HOME','craft-home','marca/craft-home',NULL,'es_MX'),(228,118,'BUTZKE','butzke','marca/butzke',NULL,'en_US'),(229,118,'BUTZKE','butzke','marca/butzke',NULL,'es_MX'),(230,119,'H P','h-p','marca/h-p',NULL,'en_US'),(231,119,'H P','h-p','marca/h-p',NULL,'es_MX'),(232,120,'LIEF LIVING','lief-living','marca/lief-living',NULL,'en_US'),(233,120,'LIEF LIVING','lief-living','marca/lief-living',NULL,'es_MX'),(234,121,'SAMSUNG','samsung','marca/samsung',NULL,'en_US'),(235,121,'SAMSUNG','samsung','marca/samsung',NULL,'es_MX'),(236,122,'ESPRIT','esprit','marca/esprit',NULL,'en_US'),(237,122,'ESPRIT','esprit','marca/esprit',NULL,'es_MX'),(238,123,'GARANTIAS','garantias','marca/garantias',NULL,'en_US'),(239,123,'GARANTIAS','garantias','marca/garantias',NULL,'es_MX');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (2,'MX','Mexico','country',NULL);
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (2,2,'MX');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-05 17:08:09
