-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-10-16 00:56:08','2022-10-16 00:56:08','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://wp-devs.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://wp-devs.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','WP Devs','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','luiz@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','d/m/Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:47:\"show-current-template/show-current-template.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','wp-devs','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','wp-devs','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','America/Sao_Paulo','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','10','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','40','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1681433767','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:24:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:289:\"<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wp-devs.local/wp-content/uploads/2022/10/pexels-picjumbocom-196644.png\" alt=\"\" class=\"wp-image-44\"/><figcaption>Caderno</figcaption></figure>\n<!-- /wp:image -->\";}i:8;a:1:{s:7:\"content\";s:71:\"<!-- wp:heading {\"level\":4} -->\n<h4>Service 1</h4>\n<!-- /wp:heading -->\";}i:9;a:1:{s:7:\"content\";s:108:\"<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\";}i:10;a:1:{s:7:\"content\";s:257:\"<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wp-devs.local/wp-content/uploads/2022/10/pexels-picjumbocom-196644.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->\";}i:11;a:1:{s:7:\"content\";s:253:\"<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-270348.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->\";}i:12;a:1:{s:7:\"content\";s:71:\"<!-- wp:heading {\"level\":4} -->\n<h4>Service 2</h4>\n<!-- /wp:heading -->\";}i:13;a:1:{s:7:\"content\";s:108:\"<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\";}i:14;a:1:{s:7:\"content\";s:253:\"<!-- wp:image {\"id\":45,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-267350.png\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->\";}i:15;a:1:{s:7:\"content\";s:71:\"<!-- wp:heading {\"level\":4} -->\n<h4>Service 3</h4>\n<!-- /wp:heading -->\";}i:16;a:1:{s:7:\"content\";s:108:\"<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\";}i:17;a:1:{s:7:\"content\";s:253:\"<!-- wp:image {\"id\":46,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-270348.png\" alt=\"\" class=\"wp-image-46\"/></figure>\n<!-- /wp:image -->\";}i:18;a:1:{s:7:\"content\";s:70:\"<!-- wp:heading {\"level\":4} -->\n<h4>Arquivos</h4>\n<!-- /wp:heading -->\";}i:19;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}i:20;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}i:21;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}i:22;a:1:{s:7:\"content\";s:71:\"<!-- wp:heading {\"level\":4} -->\n<h4>Conteúdo</h4>\n<!-- /wp:heading -->\";}i:23;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}i:24;a:1:{s:7:\"content\";s:21:\"<!-- wp:archives /-->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:8:\"block-11\";i:1;s:7:\"block-2\";i:2;s:7:\"block-3\";i:3;s:7:\"block-4\";i:4;s:7:\"block-5\";i:5;s:7:\"block-6\";i:6;s:7:\"block-7\";}s:12:\"sidebar-blog\";a:7:{i:0;s:8:\"block-18\";i:1;s:8:\"block-19\";i:2;s:8:\"block-20\";i:3;s:8:\"block-21\";i:4;s:8:\"block-22\";i:5;s:8:\"block-23\";i:6;s:8:\"block-24\";}s:10:\"services-1\";a:3:{i:0;s:8:\"block-10\";i:1;s:7:\"block-8\";i:2;s:7:\"block-9\";}s:10:\"services-2\";a:3:{i:0;s:8:\"block-17\";i:1;s:8:\"block-12\";i:2;s:8:\"block-13\";}s:10:\"services-3\";a:3:{i:0;s:8:\"block-14\";i:1;s:8:\"block-15\";i:2;s:8:\"block-16\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:8:{i:1666058169;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1666097769;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666097786;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1666140969;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666140986;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666140988;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1666572969;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','>pnp|29qfq2L|<z6vnxG2c*zf.vO4vg1[V`9P<AqUx84>]sI`!mFT[3U[e-9-{A6','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','(.zF|R[Tv1;e4#n}D_(_vL}>HOBO3!OPiTeUBN`tR.[<+P!1,Cu%rR}PqFb]t1_h','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1665884148;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}','yes');
INSERT INTO `wp_options` VALUES (134,'auth_key','RRN+ZA3.SR`9:Xw=4DK5mKL`Y<I?22s@T]HOX z>65^LcBM!T|#r{fTf``OZ9H40','no');
INSERT INTO `wp_options` VALUES (135,'auth_salt','mm8~!en*NS?SW?#+UBfkU?pl.TaJ/uw(%:fH-<bbu>7M?i[Zzh*dus`uafQOS<QM','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_key','4b|h}&R$$#.~H$bYg0Pr-.^X6#[ixEJhH;Dre;pFp17#Y2SWuX7oN*DMpBaWfAw.','no');
INSERT INTO `wp_options` VALUES (137,'logged_in_salt','CvCAApz2&,gji)9mW]ET4K_/&yf:EuvG1Xz&eleR[~LdQK ZOYHv._8[#@*w21(O','no');
INSERT INTO `wp_options` VALUES (139,'_site_transient_timeout_browser_29cdefb5148033205740d5eb20c4f349','1666486587','no');
INSERT INTO `wp_options` VALUES (140,'_site_transient_browser_29cdefb5148033205740d5eb20c4f349','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"106.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (141,'_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68','1666486588','no');
INSERT INTO `wp_options` VALUES (142,'_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (159,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (162,'WPLANG','pt_BR','yes');
INSERT INTO `wp_options` VALUES (163,'new_admin_email','luiz@gmail.com','yes');
INSERT INTO `wp_options` VALUES (168,'current_theme','WD Devs','yes');
INSERT INTO `wp_options` VALUES (169,'theme_mods_wp-devs','a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:17:\"wp_devs_main_menu\";i:3;s:19:\"wp_devs_footer_menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:21:\"random-uploaded-image\";s:11:\"custom_logo\";i:42;}','yes');
INSERT INTO `wp_options` VALUES (170,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (181,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:2:{i:0;i:3;i:1;i:4;}}','yes');
INSERT INTO `wp_options` VALUES (184,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (185,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (202,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (209,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (210,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (224,'site_logo','42','yes');
INSERT INTO `wp_options` VALUES (245,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (246,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.0.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.3-partial-2.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.3\";s:7:\"version\";s:5:\"6.0.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"6.0.2\";}}s:12:\"last_checked\";i:1666057981;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (247,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666057983;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}s:7:\"checked\";a:1:{s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.6\";}}','no');
INSERT INTO `wp_options` VALUES (248,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1666057983;s:7:\"checked\";a:5:{s:13:\"twentysixteen\";s:3:\"2.7\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";s:7:\"wp-devs\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.7.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (249,'dismissed_update_core','a:1:{s:11:\"6.0.2|pt_BR\";b:1;}','no');
INSERT INTO `wp_options` VALUES (263,'_site_transient_timeout_theme_roots','1666059782','no');
INSERT INTO `wp_options` VALUES (264,'_site_transient_theme_roots','a:5:{s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:7:\"wp-devs\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1665886776:1');
INSERT INTO `wp_postmeta` VALUES (4,8,'_edit_lock','1665928102:1');
INSERT INTO `wp_postmeta` VALUES (5,10,'_edit_lock','1665886801:1');
INSERT INTO `wp_postmeta` VALUES (6,12,'_edit_lock','1665928185:1');
INSERT INTO `wp_postmeta` VALUES (10,15,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (11,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (12,15,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (13,15,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (14,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (15,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (16,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (17,15,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (19,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (20,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (21,16,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (22,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (23,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (24,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (25,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (26,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (28,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (29,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,17,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (31,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (32,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,18,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (40,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (46,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,19,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (49,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,20,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (58,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (64,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,21,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (67,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,22,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (76,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (82,23,'_edit_lock','1665934328:1');
INSERT INTO `wp_postmeta` VALUES (85,25,'_edit_lock','1665934312:1');
INSERT INTO `wp_postmeta` VALUES (88,27,'_edit_lock','1665955978:1');
INSERT INTO `wp_postmeta` VALUES (91,8,'_wp_page_template','general-template.php');
INSERT INTO `wp_postmeta` VALUES (92,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (93,12,'_wp_page_template','general-template.php');
INSERT INTO `wp_postmeta` VALUES (94,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (95,1,'_wp_trash_meta_time','1665928404');
INSERT INTO `wp_postmeta` VALUES (96,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (97,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (100,32,'_wp_attached_file','2022/10/pexels-felix-mittermeier-957024.png');
INSERT INTO `wp_postmeta` VALUES (101,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:226;s:4:\"file\";s:43:\"2022/10/pexels-felix-mittermeier-957024.png\";s:8:\"filesize\";i:1334890;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"pexels-felix-mittermeier-957024-300x35.png\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32518;}s:5:\"large\";a:5:{s:4:\"file\";s:44:\"pexels-felix-mittermeier-957024-1024x121.png\";s:5:\"width\";i:1024;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:360709;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:43:\"pexels-felix-mittermeier-957024-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64442;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"pexels-felix-mittermeier-957024-768x90.png\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:206111;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:44:\"pexels-felix-mittermeier-957024-1536x181.png\";s:5:\"width\";i:1536;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:770438;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (102,33,'_wp_attached_file','2022/10/pexels-markus-spiske-2004161.png');
INSERT INTO `wp_postmeta` VALUES (103,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:40:\"2022/10/pexels-markus-spiske-2004161.png\";s:8:\"filesize\";i:994135;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"pexels-markus-spiske-2004161-300x35.png\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23187;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"pexels-markus-spiske-2004161-1024x120.png\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:191172;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"pexels-markus-spiske-2004161-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33777;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"pexels-markus-spiske-2004161-768x90.png\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:116139;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"pexels-markus-spiske-2004161-1536x180.png\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:398297;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (104,34,'_wp_attached_file','2022/10/pexels-mike-sember-6043246.png');
INSERT INTO `wp_postmeta` VALUES (105,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1921;s:6:\"height\";i:225;s:4:\"file\";s:38:\"2022/10/pexels-mike-sember-6043246.png\";s:8:\"filesize\";i:1140080;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"pexels-mike-sember-6043246-300x35.png\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22301;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"pexels-mike-sember-6043246-1024x120.png\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:235415;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"pexels-mike-sember-6043246-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46749;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:37:\"pexels-mike-sember-6043246-768x90.png\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:135644;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:39:\"pexels-mike-sember-6043246-1536x180.png\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:508544;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (106,35,'_wp_attached_file','2022/10/pexels-steve-johnson-2014744.png');
INSERT INTO `wp_postmeta` VALUES (107,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:40:\"2022/10/pexels-steve-johnson-2014744.png\";s:8:\"filesize\";i:1372516;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"pexels-steve-johnson-2014744-300x35.png\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28874;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"pexels-steve-johnson-2014744-1024x120.png\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:306505;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"pexels-steve-johnson-2014744-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54703;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:39:\"pexels-steve-johnson-2014744-768x90.png\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:178579;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"pexels-steve-johnson-2014744-1536x180.png\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:644795;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (108,35,'_wp_attachment_custom_header_last_used_wp-devs','1665931355');
INSERT INTO `wp_postmeta` VALUES (109,35,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (110,33,'_wp_attachment_custom_header_last_used_wp-devs','1665931377');
INSERT INTO `wp_postmeta` VALUES (111,33,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (112,32,'_wp_attachment_custom_header_last_used_wp-devs','1665931381');
INSERT INTO `wp_postmeta` VALUES (113,32,'_wp_attachment_is_custom_header','wp-devs');
INSERT INTO `wp_postmeta` VALUES (114,36,'_edit_lock','1665934159:1');
INSERT INTO `wp_postmeta` VALUES (115,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (116,36,'_wp_trash_meta_time','1665934164');
INSERT INTO `wp_postmeta` VALUES (117,37,'_wp_attached_file','2022/10/pexels-lukas-574073-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (118,37,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1695;s:4:\"file\";s:39:\"2022/10/pexels-lukas-574073-scaled.jpeg\";s:8:\"filesize\";i:411492;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"pexels-lukas-574073-300x199.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12372;}s:5:\"large\";a:5:{s:4:\"file\";s:33:\"pexels-lukas-574073-1024x678.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92508;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"pexels-lukas-574073-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5889;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"pexels-lukas-574073-768x509.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57915;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:34:\"pexels-lukas-574073-1536x1017.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1017;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:178236;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:34:\"pexels-lukas-574073-2048x1356.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1356;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:285892;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:24:\"pexels-lukas-574073.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (119,38,'_wp_attached_file','2022/10/pexels-picjumbocom-196644-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (120,38,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:45:\"2022/10/pexels-picjumbocom-196644-scaled.jpeg\";s:8:\"filesize\";i:389001;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"pexels-picjumbocom-196644-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12926;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"pexels-picjumbocom-196644-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78403;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"pexels-picjumbocom-196644-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6354;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"pexels-picjumbocom-196644-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50873;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:40:\"pexels-picjumbocom-196644-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:147633;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:40:\"pexels-picjumbocom-196644-2048x1366.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:248666;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:30:\"pexels-picjumbocom-196644.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (121,39,'_wp_attached_file','2022/10/pexels-pixabay-38544-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (122,39,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1700;s:4:\"file\";s:40:\"2022/10/pexels-pixabay-38544-scaled.jpeg\";s:8:\"filesize\";i:359543;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-38544-300x199.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12093;}s:5:\"large\";a:5:{s:4:\"file\";s:34:\"pexels-pixabay-38544-1024x680.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84964;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-38544-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6439;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-38544-768x510.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53713;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:35:\"pexels-pixabay-38544-1536x1020.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:161770;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:35:\"pexels-pixabay-38544-2048x1360.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1360;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:252490;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:25:\"pexels-pixabay-38544.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (125,27,'_thumbnail_id','37');
INSERT INTO `wp_postmeta` VALUES (128,25,'_thumbnail_id','39');
INSERT INTO `wp_postmeta` VALUES (131,23,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (132,40,'_wp_attached_file','2022/10/logo.png');
INSERT INTO `wp_postmeta` VALUES (133,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:97;s:6:\"height\";i:35;s:4:\"file\";s:16:\"2022/10/logo.png\";s:8:\"filesize\";i:2117;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (134,41,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (135,41,'_wp_trash_meta_time','1665935233');
INSERT INTO `wp_postmeta` VALUES (136,42,'_wp_attached_file','2022/10/cropped-logo.png');
INSERT INTO `wp_postmeta` VALUES (137,42,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (138,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:97;s:6:\"height\";i:35;s:4:\"file\";s:24:\"2022/10/cropped-logo.png\";s:8:\"filesize\";i:1759;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (139,43,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (140,43,'_wp_trash_meta_time','1665935310');
INSERT INTO `wp_postmeta` VALUES (141,44,'_wp_attached_file','2022/10/pexels-picjumbocom-196644.png');
INSERT INTO `wp_postmeta` VALUES (142,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:37:\"2022/10/pexels-picjumbocom-196644.png\";s:8:\"filesize\";i:200368;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:37:\"pexels-picjumbocom-196644-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127739;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:37:\"pexels-picjumbocom-196644-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37890;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (143,45,'_wp_attached_file','2022/10/pexels-pixabay-267350.png');
INSERT INTO `wp_postmeta` VALUES (144,45,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:33:\"2022/10/pexels-pixabay-267350.png\";s:8:\"filesize\";i:238443;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-267350-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:148849;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-267350-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44558;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (145,46,'_wp_attached_file','2022/10/pexels-pixabay-270348.png');
INSERT INTO `wp_postmeta` VALUES (146,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:33:\"2022/10/pexels-pixabay-270348.png\";s:8:\"filesize\";i:173024;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-270348-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114709;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"pexels-pixabay-270348-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32463;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-10-16 00:56:08','2022-10-16 00:56:08','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2022-10-16 10:53:24','2022-10-16 13:53:24','',0,'http://wp-devs.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-10-16 00:56:08','2022-10-16 00:56:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-devs.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','draft','closed','open','','sample-page','','','2022-10-16 10:55:11','2022-10-16 13:55:11','',0,'http://wp-devs.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-10-16 00:56:08','2022-10-16 00:56:08','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wp-devs.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2022-10-16 00:56:08','2022-10-16 00:56:08','',0,'http://wp-devs.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2022-10-16 00:56:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2022-10-16 00:56:28','0000-00-00 00:00:00','',0,'http://wp-devs.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-10-15 23:21:57','2022-10-16 02:21:57','<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->','Home','','publish','closed','closed','','home','','','2022-10-15 23:21:57','2022-10-16 02:21:57','',0,'http://wp-devs.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-10-15 23:21:42','2022-10-16 02:21:42','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-wp-devs','','','2022-10-15 23:21:42','2022-10-16 02:21:42','',0,'http://wp-devs.local/wp-global-styles-wp-devs/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-10-15 23:21:57','2022-10-16 02:21:57','<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','5-revision-v1','','','2022-10-15 23:21:57','2022-10-16 02:21:57','',5,'http://wp-devs.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-10-15 23:22:14','2022-10-16 02:22:14','<!-- wp:paragraph -->\n<p>About page</p>\n<!-- /wp:paragraph -->','About','','publish','closed','closed','','about','','','2022-10-16 10:48:29','2022-10-16 13:48:29','',0,'http://wp-devs.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-10-15 23:22:14','2022-10-16 02:22:14','<!-- wp:paragraph -->\n<p>About page</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','8-revision-v1','','','2022-10-15 23:22:14','2022-10-16 02:22:14','',8,'http://wp-devs.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-10-15 23:22:25','2022-10-16 02:22:25','<!-- wp:paragraph -->\n<p>Blog page</p>\n<!-- /wp:paragraph -->','Blog','','publish','closed','closed','','blog','','','2022-10-15 23:22:25','2022-10-16 02:22:25','',0,'http://wp-devs.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-10-15 23:22:25','2022-10-16 02:22:25','<!-- wp:paragraph -->\n<p>Blog page</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','10-revision-v1','','','2022-10-15 23:22:25','2022-10-16 02:22:25','',10,'http://wp-devs.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-10-15 23:22:37','2022-10-16 02:22:37','<!-- wp:paragraph -->\n<p>Contact page</p>\n<!-- /wp:paragraph -->','Contact','','publish','closed','closed','','contact','','','2022-10-16 10:49:45','2022-10-16 13:49:45','',0,'http://wp-devs.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-10-15 23:22:37','2022-10-16 02:22:37','<!-- wp:paragraph -->\n<p>Contact page</p>\n<!-- /wp:paragraph -->','Contact','','inherit','closed','closed','','12-revision-v1','','','2022-10-15 23:22:37','2022-10-16 02:22:37','',12,'http://wp-devs.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-10-15 23:22:45','2022-10-16 02:22:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-devs.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-10-15 23:22:45','2022-10-16 02:22:45','',2,'http://wp-devs.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-10-15 23:26:28','2022-10-16 02:26:28',' ','','','publish','closed','closed','','15','','','2022-10-15 23:26:28','2022-10-16 02:26:28','',0,'http://wp-devs.local/?p=15',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-10-15 23:26:28','2022-10-16 02:26:28',' ','','','publish','closed','closed','','16','','','2022-10-15 23:26:28','2022-10-16 02:26:28','',0,'http://wp-devs.local/?p=16',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-10-15 23:26:28','2022-10-16 02:26:28',' ','','','publish','closed','closed','','17','','','2022-10-15 23:26:28','2022-10-16 02:26:28','',0,'http://wp-devs.local/?p=17',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-10-15 23:26:28','2022-10-16 02:26:28',' ','','','publish','closed','closed','','18','','','2022-10-15 23:26:28','2022-10-16 02:26:28','',0,'http://wp-devs.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-10-15 23:27:15','2022-10-16 02:27:15',' ','','','publish','closed','closed','','19','','','2022-10-15 23:27:15','2022-10-16 02:27:15','',0,'http://wp-devs.local/?p=19',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-10-15 23:27:15','2022-10-16 02:27:15',' ','','','publish','closed','closed','','20','','','2022-10-15 23:27:15','2022-10-16 02:27:15','',0,'http://wp-devs.local/?p=20',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-10-15 23:27:15','2022-10-16 02:27:15',' ','','','publish','closed','closed','','21','','','2022-10-15 23:27:15','2022-10-16 02:27:15','',0,'http://wp-devs.local/?p=21',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-10-15 23:27:15','2022-10-16 02:27:15',' ','','','publish','closed','closed','','22','','','2022-10-15 23:27:15','2022-10-16 02:27:15','',0,'http://wp-devs.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-10-15 23:50:52','2022-10-16 02:50:52','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Web Design','','publish','open','open','','web-design','','','2022-10-16 12:34:28','2022-10-16 15:34:28','',0,'http://wp-devs.local/?p=23',0,'post','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-10-15 23:50:52','2022-10-16 02:50:52','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Web Design','','inherit','closed','closed','','23-revision-v1','','','2022-10-15 23:50:52','2022-10-16 02:50:52','',23,'http://wp-devs.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-10-15 23:51:27','2022-10-16 02:51:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Social Media','','publish','open','open','','social-media','','','2022-10-16 12:34:15','2022-10-16 15:34:15','',0,'http://wp-devs.local/?p=25',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-10-15 23:51:27','2022-10-16 02:51:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Social Media','','inherit','closed','closed','','25-revision-v1','','','2022-10-15 23:51:27','2022-10-16 02:51:27','',25,'http://wp-devs.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-10-15 23:52:11','2022-10-16 02:52:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Web Development','','publish','open','open','','web-development','','','2022-10-16 12:33:57','2022-10-16 15:33:57','',0,'http://wp-devs.local/?p=27',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-10-15 23:52:11','2022-10-16 02:52:11','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin sem id erat mollis, a feugiat mauris condimentum. Nam ante metus, facilisis a arcu ullamcorper, pharetra efficitur tortor. Sed id dui a dui luctus gravida ac in erat. Vivamus finibus iaculis turpis sed molestie. Cras malesuada et odio eget pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus cursus dui, ut volutpat lacus ullamcorper vel. Etiam pulvinar nibh sit amet tortor sollicitudin, quis tempor orci pretium. Vivamus leo lorem, interdum at urna eget, convallis imperdiet libero. Mauris luctus eros et risus tempor interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In a nisl eros. Aliquam nec metus ac purus convallis dignissim quis eu purus. Curabitur diam magna, congue a eros quis, ornare rhoncus nisl. Morbi nunc ligula, pulvinar non pulvinar ac, placerat sit amet est. Maecenas tempor scelerisque dui, eu vehicula mauris. Vestibulum porttitor accumsan ex non molestie. Nam in magna eu odio maximus feugiat in a diam.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras nec tincidunt est. Sed at condimentum diam. Aenean finibus, arcu id egestas sollicitudin, libero magna feugiat est, quis sollicitudin ligula lorem eu nisi. Morbi dictum enim iaculis, feugiat orci sed, convallis nisi. Fusce luctus in justo non scelerisque. Proin pulvinar et justo sed aliquam. Proin hendrerit sapien massa, vel blandit urna fringilla quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed eleifend purus mauris, id condimentum nunc pellentesque nec. Mauris vestibulum nisi augue, eu ornare lectus cursus ac. Quisque sed orci quis libero rutrum tincidunt quis ac lorem. Phasellus porttitor odio sed justo lobortis, ut egestas felis placerat. Quisque suscipit eleifend purus. Vivamus suscipit, nisi ut fermentum dapibus, orci lacus finibus eros, sit amet luctus tortor erat ac augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non sapien rhoncus, vulputate enim id, consectetur ante. Donec euismod, urna in rutrum molestie, sapien nisl rhoncus enim, sed ullamcorper felis sapien quis metus. Phasellus arcu quam, pulvinar ac risus ac, convallis fermentum turpis. Nullam tincidunt, dui a scelerisque pellentesque, tellus nisl elementum ex, id ultrices dui odio non diam. Integer molestie erat in lorem convallis eleifend faucibus sit amet ex. Quisque quis tristique nibh. Donec et mollis arcu. Sed ut mollis dolor, at volutpat sapien. Phasellus venenatis metus sed magna vehicula interdum. Sed pulvinar purus et massa placerat maximus. Suspendisse in tempus lectus. Ut ut ipsum nisi. Duis pharetra risus bibendum enim facilisis, vel euismod nibh accumsan. Nam facilisis neque sapien, ac rutrum orci tempus at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis vel ipsum cursus, tincidunt nulla ut, tristique arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi sodales eu ipsum id aliquet. Donec ut ipsum tellus. Nunc dictum finibus pellentesque. Nam in urna ut libero tincidunt venenatis. Suspendisse aliquam rhoncus est sed scelerisque. Vivamus finibus vehicula porttitor. Donec pellentesque velit eu neque iaculis, eu rhoncus orci suscipit.</p>\n<!-- /wp:paragraph -->','Web Development','','inherit','closed','closed','','27-revision-v1','','','2022-10-15 23:52:11','2022-10-16 02:52:11','',27,'http://wp-devs.local/?p=28',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-10-16 10:48:22','2022-10-16 13:48:22','<!-- wp:paragraph -->\n<p>About page</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','8-autosave-v1','','','2022-10-16 10:48:22','2022-10-16 13:48:22','',8,'http://wp-devs.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-10-16 10:53:24','2022-10-16 13:53:24','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2022-10-16 10:53:24','2022-10-16 13:53:24','',1,'http://wp-devs.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-10-16 11:42:21','2022-10-16 14:42:21','','pexels-felix-mittermeier-957024','','inherit','open','closed','','pexels-felix-mittermeier-957024','','','2022-10-16 11:42:21','2022-10-16 14:42:21','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-felix-mittermeier-957024.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-10-16 11:42:22','2022-10-16 14:42:22','','pexels-markus-spiske-2004161','','inherit','open','closed','','pexels-markus-spiske-2004161','','','2022-10-16 11:42:22','2022-10-16 14:42:22','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-markus-spiske-2004161.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-10-16 11:42:22','2022-10-16 14:42:22','','pexels-mike-sember-6043246','','inherit','open','closed','','pexels-mike-sember-6043246','','','2022-10-16 11:42:22','2022-10-16 14:42:22','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-mike-sember-6043246.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-10-16 11:42:23','2022-10-16 14:42:23','','pexels-steve-johnson-2014744','','inherit','open','closed','','pexels-steve-johnson-2014744','','','2022-10-16 11:42:23','2022-10-16 14:42:23','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-steve-johnson-2014744.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-10-16 12:29:24','2022-10-16 15:29:24','{\n    \"wp-devs::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-16 14:43:35\"\n    },\n    \"wp-devs::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-16 14:43:35\"\n    }\n}','','','trash','closed','closed','','e7ebe5e3-d16d-4272-866f-99d08e85a164','','','2022-10-16 12:29:24','2022-10-16 15:29:24','',0,'http://wp-devs.local/?p=36',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-10-16 12:33:34','2022-10-16 15:33:34','','pexels-lukas-574073','','inherit','open','closed','','pexels-lukas-574073','','','2022-10-16 12:33:34','2022-10-16 15:33:34','',27,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-lukas-574073.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-10-16 12:33:38','2022-10-16 15:33:38','','pexels-picjumbocom-196644','','inherit','open','closed','','pexels-picjumbocom-196644','','','2022-10-16 12:33:38','2022-10-16 15:33:38','',27,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-picjumbocom-196644.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-10-16 12:33:41','2022-10-16 15:33:41','','pexels-pixabay-38544','','inherit','open','closed','','pexels-pixabay-38544','','','2022-10-16 12:33:41','2022-10-16 15:33:41','',27,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-38544.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-10-16 12:43:19','2022-10-16 15:43:19','WP Devs','WP Devs','WP Devs','inherit','open','closed','','logo','','','2022-10-16 12:43:44','2022-10-16 15:43:44','',0,'http://wp-devs.local/wp-content/uploads/2022/10/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-10-16 12:47:13','2022-10-16 15:47:13','{\n    \"site_icon\": {\n        \"value\": 40,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-16 15:47:13\"\n    }\n}','','','trash','closed','closed','','622f72ba-5032-4901-b68c-fd25f443b806','','','2022-10-16 12:47:13','2022-10-16 15:47:13','',0,'http://wp-devs.local/622f72ba-5032-4901-b68c-fd25f443b806/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-10-16 12:48:27','2022-10-16 15:48:27','WP Devs','WP Devs','WP Devs','inherit','open','closed','','wp-devs','','','2022-10-16 12:48:27','2022-10-16 15:48:27','',0,'http://wp-devs.local/wp-content/uploads/2022/10/cropped-logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-10-16 12:48:30','2022-10-16 15:48:30','{\n    \"wp-devs::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-16 15:48:30\"\n    }\n}','','','trash','closed','closed','','9f7a6926-6156-4005-88c1-85d88a12037d','','','2022-10-16 12:48:30','2022-10-16 15:48:30','',0,'http://wp-devs.local/9f7a6926-6156-4005-88c1-85d88a12037d/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-10-16 14:21:24','2022-10-16 17:21:24','','','','inherit','open','closed','','pexels-picjumbocom-196644-2','','','2022-10-16 14:25:53','2022-10-16 17:25:53','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-picjumbocom-196644.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-10-16 14:21:25','2022-10-16 17:21:25','','','','inherit','open','closed','','pexels-pixabay-267350','','','2022-10-16 14:27:32','2022-10-16 17:27:32','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-267350.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-10-16 14:21:25','2022-10-16 17:21:25','','','','inherit','open','closed','','pexels-pixabay-270348','','','2022-10-16 14:27:21','2022-10-16 17:27:21','',0,'http://wp-devs.local/wp-content/uploads/2022/10/pexels-pixabay-270348.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,3,0);
INSERT INTO `wp_term_relationships` VALUES (16,3,0);
INSERT INTO `wp_term_relationships` VALUES (17,3,0);
INSERT INTO `wp_term_relationships` VALUES (18,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,4,0);
INSERT INTO `wp_term_relationships` VALUES (20,4,0);
INSERT INTO `wp_term_relationships` VALUES (21,4,0);
INSERT INTO `wp_term_relationships` VALUES (22,4,0);
INSERT INTO `wp_term_relationships` VALUES (23,6,0);
INSERT INTO `wp_term_relationships` VALUES (23,8,0);
INSERT INTO `wp_term_relationships` VALUES (23,9,0);
INSERT INTO `wp_term_relationships` VALUES (25,6,0);
INSERT INTO `wp_term_relationships` VALUES (25,10,0);
INSERT INTO `wp_term_relationships` VALUES (25,11,0);
INSERT INTO `wp_term_relationships` VALUES (27,7,0);
INSERT INTO `wp_term_relationships` VALUES (27,12,0);
INSERT INTO `wp_term_relationships` VALUES (27,13,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'wp-devs','wp-devs',0);
INSERT INTO `wp_terms` VALUES (3,'Main menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Footer menu','footer-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Web Design','web-design',0);
INSERT INTO `wp_terms` VALUES (6,'Social Media','social-media',0);
INSERT INTO `wp_terms` VALUES (7,'Web Development','web-development',0);
INSERT INTO `wp_terms` VALUES (8,'adobe','adobe',0);
INSERT INTO `wp_terms` VALUES (9,'photoshop','photoshop',0);
INSERT INTO `wp_terms` VALUES (10,'facebook','facebook',0);
INSERT INTO `wp_terms` VALUES (11,'twitte','twitte',0);
INSERT INTO `wp_terms` VALUES (12,'algorithm','algorithm',0);
INSERT INTO `wp_terms` VALUES (13,'php','php',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"18a241a584426c2190c4ab576beba11bb209a442d182a9d0391202182851ee5b\";a:4:{s:10:\"expiration\";i:1666054586;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1665881786;}s:64:\"e4978c27f960be342f75442e28a68e7beeeecc297a8b212d4c2c8f8a51d7df0a\";a:4:{s:10:\"expiration\";i:1666100438;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1665927638;}s:64:\"08b8810e1086e7af17842c95531ef42011221939dd3c08392f3ac0709c05917b\";a:4:{s:10:\"expiration\";i:1666127933;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1665955133;}s:64:\"8f01314457ddb203ffb2bc80029304479a4c2d3ee89d1d18901bc74b76f97f7d\";a:4:{s:10:\"expiration\";i:1666208685;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\";s:5:\"login\";i:1666035885;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1665934307');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Admin','$P$Bz/LUGd3A./y4mDmM3tvZuFy7LRmjU/','admin','luiz@gmail.com','http://wp-devs.local','2022-10-16 00:56:08','',0,'Admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17 22:53:19
