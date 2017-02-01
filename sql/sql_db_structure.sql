
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2017 at 02:25 AM
-- Server version: 10.0.28-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u938051509_mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo_inputs`
--

CREATE TABLE IF NOT EXISTS `demo_inputs` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `select_input` int(2) NOT NULL,
  `text` varchar(128) NOT NULL,
  `text_ext` varchar(256) NOT NULL,
  `select_checkbox` int(1) NOT NULL,
  `user_select` int(8) NOT NULL,
  `date` date NOT NULL,
  `ac_select_from_table` int(8) NOT NULL,
  `checkbox` int(1) NOT NULL,
  `html` text NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `ip` varbinary(16) NOT NULL,
  `link` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `text_noedit` varchar(256) NOT NULL,
  `unix_time` int(128) NOT NULL,
  `textarea` varchar(1024) NOT NULL,
  `serialize_arr` varchar(1024) NOT NULL,
  `parent_select_custom` int(8) NOT NULL,
  `select_from_table` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_customs`
--

CREATE TABLE IF NOT EXISTS `inside_access_customs` (
  `access_customs_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_customs_custom_id` int(8) NOT NULL,
  `access_customs_group_id` int(8) NOT NULL,
  `access_customs_view` int(1) NOT NULL,
  `access_customs_edit` int(1) NOT NULL,
  PRIMARY KEY (`access_customs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_rows`
--

CREATE TABLE IF NOT EXISTS `inside_access_rows` (
  `access_rows_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_rows_table` varchar(32) NOT NULL,
  `access_rows_row_id` int(8) NOT NULL,
  `access_rows_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_rows_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_system_zones`
--

CREATE TABLE IF NOT EXISTS `inside_access_system_zones` (
  `access_system_zones_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_system_zones_zone_id` int(8) NOT NULL,
  `access_system_zones_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_system_zones_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=350 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_tables`
--

CREATE TABLE IF NOT EXISTS `inside_access_tables` (
  `access_tables_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_tables_table_id` int(8) NOT NULL,
  `access_tables_group_id` int(8) NOT NULL,
  `access_tables_view` int(1) NOT NULL,
  `access_tables_edit` int(1) NOT NULL,
  PRIMARY KEY (`access_tables_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=404 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_tabs`
--

CREATE TABLE IF NOT EXISTS `inside_access_tabs` (
  `access_tabs_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_tabs_tab_id` int(8) NOT NULL,
  `access_tabs_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_tabs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_access_top_menu`
--

CREATE TABLE IF NOT EXISTS `inside_access_top_menu` (
  `access_top_menu_id` int(8) NOT NULL AUTO_INCREMENT,
  `access_top_menu_block_id` int(8) NOT NULL,
  `access_top_menu_group_id` int(8) NOT NULL,
  PRIMARY KEY (`access_top_menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1930 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_customs`
--

CREATE TABLE IF NOT EXISTS `inside_customs` (
  `customs_id` int(8) NOT NULL AUTO_INCREMENT,
  `customs_name` varchar(32) NOT NULL,
  `customs_description` varchar(256) NOT NULL,
  PRIMARY KEY (`customs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_log`
--

CREATE TABLE IF NOT EXISTS `inside_log` (
  `log_id` int(16) NOT NULL AUTO_INCREMENT,
  `log_datetime` int(32) NOT NULL,
  `log_sql` varchar(2048) NOT NULL,
  `log_table` varchar(64) NOT NULL,
  `log_user_id` int(16) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6171 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_row_chat`
--

CREATE TABLE IF NOT EXISTS `inside_row_chat` (
  `row_chat_id` int(8) NOT NULL AUTO_INCREMENT,
  `row_chat_table` varchar(32) NOT NULL,
  `row_chat_row_id` int(8) NOT NULL,
  `row_chat_user_id` int(8) NOT NULL,
  `row_chat_user_name` varchar(32) NOT NULL,
  `row_chat_content` varchar(2048) NOT NULL,
  `row_chat_datetime` datetime NOT NULL,
  `row_chat_invisible` int(1) NOT NULL,
  PRIMARY KEY (`row_chat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_system_zones`
--

CREATE TABLE IF NOT EXISTS `inside_system_zones` (
  `system_zones_id` int(8) NOT NULL AUTO_INCREMENT,
  `system_zones_name` varchar(32) NOT NULL,
  `system_zones_description` varchar(256) NOT NULL,
  PRIMARY KEY (`system_zones_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_tables`
--

CREATE TABLE IF NOT EXISTS `inside_tables` (
  `tables_id` int(8) NOT NULL AUTO_INCREMENT,
  `tables_name` varchar(32) NOT NULL,
  `tables_description` varchar(256) NOT NULL,
  PRIMARY KEY (`tables_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_tabs`
--

CREATE TABLE IF NOT EXISTS `inside_tabs` (
  `tabs_id` int(8) NOT NULL AUTO_INCREMENT,
  `tabs_table` varchar(32) NOT NULL,
  `tabs_sysname` varchar(32) NOT NULL,
  `tabs_name` varchar(32) NOT NULL,
  `tabs_description` varchar(256) NOT NULL,
  `tabs_priority` int(2) NOT NULL,
  PRIMARY KEY (`tabs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_tasks`
--

CREATE TABLE IF NOT EXISTS `inside_tasks` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `pdg_color` varchar(32) NOT NULL,
  `fio` varchar(128) NOT NULL,
  `tel` varchar(128) NOT NULL,
  `datetime` datetime NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  `hot` int(1) NOT NULL,
  `email` varchar(128) NOT NULL,
  `orgs` varchar(2048) NOT NULL,
  `people` varchar(2048) NOT NULL,
  `content` varchar(4096) NOT NULL,
  `chat` text NOT NULL,
  `user_id` int(7) NOT NULL,
  `performer` int(7) NOT NULL,
  `status` int(2) NOT NULL,
  `priority` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `income` int(8) NOT NULL,
  `dotime` int(8) NOT NULL,
  `creator` int(10) NOT NULL,
  `create_time` datetime NOT NULL,
  `updator` int(10) NOT NULL,
  `update_time` datetime NOT NULL,
  `user_read` varchar(1024) NOT NULL,
  `user_write` varchar(1024) NOT NULL,
  `parent_id` int(8) NOT NULL,
  `haschild` int(1) NOT NULL,
  `file1` varchar(256) NOT NULL,
  `file2` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `inside_top_menu`
--

CREATE TABLE IF NOT EXISTS `inside_top_menu` (
  `top_menu_id` int(8) NOT NULL AUTO_INCREMENT,
  `top_menu_parent_id` int(8) NOT NULL,
  `top_menu_haschild` int(1) NOT NULL,
  `top_menu_name` varchar(64) NOT NULL,
  `top_menu_url` varchar(128) NOT NULL,
  `top_menu_invisible` int(1) NOT NULL COMMENT '=1 invisible',
  `top_menu_priority` int(3) NOT NULL,
  `top_menu_width` int(8) NOT NULL,
  `top_menu_widthchild` int(8) NOT NULL,
  PRIMARY KEY (`top_menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_banners`
--

CREATE TABLE IF NOT EXISTS `it_banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_link` varchar(128) NOT NULL,
  `banners_img` varchar(256) NOT NULL,
  `banners_text` varchar(512) NOT NULL,
  `banners_invisible` int(1) NOT NULL,
  `banners_type` int(2) NOT NULL,
  `banners_priority` int(2) NOT NULL,
  `banners_name` varchar(128) NOT NULL,
  PRIMARY KEY (`banners_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_brands`
--

CREATE TABLE IF NOT EXISTS `it_brands` (
  `brands_id` int(8) NOT NULL AUTO_INCREMENT,
  `brands_priority` int(4) NOT NULL,
  `brands_invisible` int(1) NOT NULL,
  `brands_name` varchar(255) NOT NULL,
  `brands_img` varchar(256) NOT NULL,
  PRIMARY KEY (`brands_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_buy_block`
--

CREATE TABLE IF NOT EXISTS `it_buy_block` (
  `buy_block_id` int(8) NOT NULL AUTO_INCREMENT,
  `buy_block_name` varchar(512) NOT NULL,
  `buy_block_button_text` varchar(128) NOT NULL,
  `buy_block_html` varchar(2048) NOT NULL,
  `buy_block_video` varchar(512) NOT NULL,
  `buy_block_img` varchar(256) NOT NULL,
  `buy_block_priority` int(3) NOT NULL,
  `buy_block_invisible` int(1) NOT NULL,
  PRIMARY KEY (`buy_block_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_categories`
--

CREATE TABLE IF NOT EXISTS `it_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(128) NOT NULL,
  `categories_alias` varchar(128) NOT NULL,
  `categories_img` varchar(256) NOT NULL,
  `categories_small_img` varchar(256) NOT NULL,
  `categories_desc` varchar(2048) NOT NULL,
  `categories_html` text,
  `categories_landing` int(1) NOT NULL,
  `categories_invisible` int(1) NOT NULL,
  `categories_priority` int(2) NOT NULL,
  `categories_seo_title` varchar(512) NOT NULL,
  `categories_seo_description` varchar(512) NOT NULL,
  `categories_seo_keywords` varchar(512) NOT NULL,
  `categories_pid` int(8) NOT NULL,
  `categories_haschild` int(1) NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_comments`
--

CREATE TABLE IF NOT EXISTS `it_comments` (
  `comments_id` int(8) NOT NULL AUTO_INCREMENT,
  `comments_fio` varchar(128) NOT NULL,
  `comments_email` varchar(64) NOT NULL,
  `comments_link` varchar(512) NOT NULL,
  `comments_user_id` int(8) NOT NULL,
  `comments_text` varchar(2048) NOT NULL,
  `comments_date` date NOT NULL,
  `comments_time` varchar(256) NOT NULL,
  `comments_datetime` int(16) NOT NULL,
  `comments_source` varchar(64) NOT NULL,
  `comments_source_id` int(8) NOT NULL,
  `comments_invisible` int(1) NOT NULL,
  `comments_parent_id` int(8) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_contacts`
--

CREATE TABLE IF NOT EXISTS `it_contacts` (
  `contacts_id` int(8) NOT NULL AUTO_INCREMENT,
  `contacts_name` varchar(64) NOT NULL,
  `contacts_last_name` varchar(64) NOT NULL,
  `contacts_email` varchar(64) NOT NULL,
  `contacts_company` varchar(64) NOT NULL,
  `contacts_phone` varchar(64) NOT NULL,
  `contacts_adv_info` varchar(2048) NOT NULL,
  `contacts_img` varchar(128) NOT NULL,
  `contacts_address` varchar(1024) NOT NULL,
  `contacts_city` varchar(64) NOT NULL,
  `contacts_country` varchar(64) NOT NULL,
  `contacts_vk` varchar(64) NOT NULL,
  `contacts_fb` varchar(64) NOT NULL,
  `contacts_li` varchar(64) NOT NULL,
  `contacts_skype` varchar(64) NOT NULL,
  `contacts_type` int(2) NOT NULL,
  PRIMARY KEY (`contacts_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_content`
--

CREATE TABLE IF NOT EXISTS `it_content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_alias` varchar(255) DEFAULT NULL COMMENT 'URL alias',
  `content_priority` int(11) DEFAULT NULL COMMENT 'Sorting rank',
  `content_invisible` int(1) NOT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  `content_user_id` int(8) NOT NULL,
  `content_create_date` date NOT NULL,
  `content_type` int(11) DEFAULT NULL COMMENT 'Content type from $config[''page_cats'']',
  `content_order` int(1) NOT NULL,
  `content_price` int(8) NOT NULL,
  `content_time` int(8) NOT NULL,
  `content_lang` varchar(4) DEFAULT NULL COMMENT 'Content language',
  `content_desc` text COMMENT 'Short description',
  `content_html` text COMMENT 'HTML data',
  `content_img` varchar(45) DEFAULT NULL COMMENT 'Image filename',
  `content_seo_title` varchar(255) NOT NULL COMMENT '1',
  `content_seo_description` varchar(255) NOT NULL COMMENT '1',
  `content_seo_keywords` varchar(255) NOT NULL COMMENT '1',
  PRIMARY KEY (`content_id`),
  KEY `fk_nravo_page_nravo_pcat` (`content_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_content_options`
--

CREATE TABLE IF NOT EXISTS `it_content_options` (
  `options_id` int(8) NOT NULL AUTO_INCREMENT,
  `options_name` varchar(128) NOT NULL,
  `options_html` varchar(1024) NOT NULL,
  `options_priority` int(3) NOT NULL,
  `options_invisible` int(1) NOT NULL,
  PRIMARY KEY (`options_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_images`
--

CREATE TABLE IF NOT EXISTS `it_images` (
  `images_id` int(8) NOT NULL AUTO_INCREMENT,
  `images_name` varchar(256) NOT NULL,
  `images_desc` varchar(1024) NOT NULL,
  `images_img` varchar(256) NOT NULL,
  `images_mini_img` varchar(256) NOT NULL,
  `images_priority` int(3) NOT NULL,
  `images_invisible` int(1) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_info_block`
--

CREATE TABLE IF NOT EXISTS `it_info_block` (
  `info_block_id` int(8) NOT NULL AUTO_INCREMENT,
  `info_block_name` varchar(64) NOT NULL,
  `info_block_html` varchar(512) NOT NULL,
  `info_block_link` varchar(256) NOT NULL,
  `info_block_img` varchar(256) NOT NULL,
  `info_block_priority` int(3) NOT NULL,
  `info_block_invisible` int(1) NOT NULL,
  PRIMARY KEY (`info_block_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_links`
--

CREATE TABLE IF NOT EXISTS `it_links` (
  `links_id` int(8) NOT NULL AUTO_INCREMENT,
  `links_name` varchar(256) NOT NULL,
  `links_url` varchar(1024) NOT NULL,
  `links_desc` varchar(1024) NOT NULL,
  `links_priority` int(3) NOT NULL,
  `links_invisible` int(1) NOT NULL,
  PRIMARY KEY (`links_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_menu`
--

CREATE TABLE IF NOT EXISTS `it_menu` (
  `menu_id` int(8) NOT NULL AUTO_INCREMENT,
  `menu_pid` int(8) NOT NULL,
  `menu_haschild` int(1) NOT NULL,
  `menu_name` varchar(256) NOT NULL,
  `menu_url` varchar(256) NOT NULL,
  `menu_invisible` int(1) NOT NULL,
  `menu_priority` int(3) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_orders`
--

CREATE TABLE IF NOT EXISTS `it_orders` (
  `orders_id` int(8) NOT NULL AUTO_INCREMENT,
  `orders_name` varchar(64) NOT NULL,
  `orders_email` varchar(32) NOT NULL,
  `orders_user_id` int(8) NOT NULL,
  `orders_cname` varchar(128) NOT NULL,
  `orders_phone` varchar(64) NOT NULL,
  `orders_advanced_info` varchar(2048) NOT NULL,
  `orders_info` varchar(2048) NOT NULL,
  `orders_full_address` varchar(256) NOT NULL,
  `orders_lat` varchar(16) NOT NULL,
  `orders_lng` varchar(16) NOT NULL,
  `orders_street` varchar(64) NOT NULL,
  `orders_number` varchar(32) NOT NULL,
  `orders_city` varchar(64) NOT NULL,
  `orders_district` varchar(64) NOT NULL,
  `orders_country` varchar(64) NOT NULL,
  `orders_datetime` int(32) NOT NULL,
  `orders_status` int(2) NOT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_orgs`
--

CREATE TABLE IF NOT EXISTS `it_orgs` (
  `orgs_id` int(8) NOT NULL AUTO_INCREMENT,
  `orgs_name` varchar(256) NOT NULL,
  `orgs_site` varchar(256) NOT NULL,
  `orgs_address` varchar(256) NOT NULL,
  `orgs_city` varchar(256) NOT NULL,
  `orgs_country` varchar(256) NOT NULL,
  `orgs_type` int(2) NOT NULL,
  `orgs_info` text NOT NULL,
  `orgs_img` varchar(256) NOT NULL,
  PRIMARY KEY (`orgs_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_buy_block_content`
--

CREATE TABLE IF NOT EXISTS `it_rel_buy_block_content` (
  `buy_block_id` int(8) NOT NULL,
  `content_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_contacts_orgs`
--

CREATE TABLE IF NOT EXISTS `it_rel_contacts_orgs` (
  `contacts_orgs_id` int(8) NOT NULL AUTO_INCREMENT,
  `contacts_id` int(8) NOT NULL,
  `orgs_id` int(8) NOT NULL,
  PRIMARY KEY (`contacts_orgs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_categories`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_categories` (
  `content_id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_options_ext`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_options_ext` (
  `content_id` int(16) NOT NULL,
  `options_id` int(16) NOT NULL,
  `content_options_price` int(8) NOT NULL,
  `content_options_time` int(8) NOT NULL,
  `content_options_info` varchar(1024) NOT NULL,
  `content_options_priority` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_similar`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_similar` (
  `content_id` int(8) NOT NULL,
  `content_similar_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_content_tags`
--

CREATE TABLE IF NOT EXISTS `it_rel_content_tags` (
  `content_id` int(8) NOT NULL,
  `tags_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_images_content`
--

CREATE TABLE IF NOT EXISTS `it_rel_images_content` (
  `images_id` int(8) NOT NULL,
  `content_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_info_block_content`
--

CREATE TABLE IF NOT EXISTS `it_rel_info_block_content` (
  `info_block_id` int(8) NOT NULL,
  `content_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_rel_links_content`
--

CREATE TABLE IF NOT EXISTS `it_rel_links_content` (
  `links_id` int(8) NOT NULL,
  `content_id` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `it_requests`
--

CREATE TABLE IF NOT EXISTS `it_requests` (
  `requests_id` int(8) NOT NULL AUTO_INCREMENT,
  `requests_user_name` varchar(64) NOT NULL,
  `requests_user_email` varchar(64) NOT NULL,
  `requests_user_id` int(8) NOT NULL,
  `requests_user_city` varchar(64) NOT NULL,
  `requests_user_phone` varchar(32) NOT NULL,
  `requests_user_site` varchar(64) NOT NULL,
  `requests_datetime` int(32) NOT NULL,
  `requests_message` varchar(2048) NOT NULL,
  `requests_invisible` int(1) NOT NULL,
  `requests_priority` int(3) NOT NULL,
  `requests_type` int(2) NOT NULL,
  `requests_result` int(2) NOT NULL,
  `requests_url` varchar(512) NOT NULL,
  PRIMARY KEY (`requests_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_seo_blocks`
--

CREATE TABLE IF NOT EXISTS `it_seo_blocks` (
  `seo_blocks_id` int(8) NOT NULL AUTO_INCREMENT,
  `seo_blocks_name` varchar(256) NOT NULL,
  `seo_blocks_url` varchar(256) NOT NULL,
  `seo_blocks_html` varchar(2048) NOT NULL,
  `seo_blocks_invisible` int(1) NOT NULL,
  PRIMARY KEY (`seo_blocks_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_tags`
--

CREATE TABLE IF NOT EXISTS `it_tags` (
  `tags_id` int(8) NOT NULL AUTO_INCREMENT,
  `tags_pid` int(8) NOT NULL,
  `tags_haschild` int(1) NOT NULL,
  `tags_invisible` int(1) NOT NULL,
  `tags_name` varchar(64) NOT NULL,
  `tags_desc` varchar(2048) NOT NULL,
  `tags_html` text NOT NULL,
  `tags_landing` int(1) NOT NULL,
  `tags_create_time` datetime NOT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_tasks`
--

CREATE TABLE IF NOT EXISTS `it_tasks` (
  `tasks_id` int(8) NOT NULL AUTO_INCREMENT,
  `tasks_status` int(2) NOT NULL,
  `tasks_user_id` int(8) NOT NULL,
  `tasks_name` varchar(256) NOT NULL,
  `tasks_costs` varchar(64) NOT NULL,
  `tasks_startime` varchar(64) NOT NULL,
  `tasks_finishtime` varchar(64) NOT NULL,
  `tasks_time` varchar(64) NOT NULL,
  `tasks_info` text NOT NULL,
  PRIMARY KEY (`tasks_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `it_tree_plans`
--

CREATE TABLE IF NOT EXISTS `it_tree_plans` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `pdg_color` varchar(32) NOT NULL,
  `content` varchar(4096) NOT NULL,
  `user_id` int(7) NOT NULL,
  `priority` int(4) NOT NULL,
  `price` int(8) NOT NULL,
  `profit` int(8) NOT NULL,
  `worktime` int(8) NOT NULL,
  `parent_id` int(8) NOT NULL,
  `haschild` int(1) NOT NULL,
  `file1` varchar(256) NOT NULL,
  `file2` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `adv_info` varchar(1024) NOT NULL,
  `img` varchar(256) NOT NULL,
  `full_address` varchar(512) NOT NULL,
  `street` varchar(512) NOT NULL,
  `h_number` varchar(32) NOT NULL,
  `city` varchar(256) NOT NULL,
  `district` varchar(64) NOT NULL,
  `country` varchar(128) NOT NULL,
  `country_code` varchar(8) NOT NULL,
  `admin_area` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
