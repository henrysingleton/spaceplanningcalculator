
-- *** STRUCTURE: `sym_authors` ***
DROP TABLE IF EXISTS `sym_authors`;
CREATE TABLE `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '0000-00-00 00:00:00',
  `user_type` enum('author','manager','developer') COLLATE utf8_unicode_ci DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_authors` ***
INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES (1, 'redman', 'PBKDF2v1|10000|12632452b8aaebc3a799|1yQWrmUaFcAWuk4KYaLLjngwZrb+WVWLlWZgbTaTbTskYFK/tsVmUQ==', 'James', 'Redman', 'jamesr@limelightdigital.com', '2013-10-24 10:50:39', 'developer', 'yes', '/blueprints/sections/', 'no', NULL);
INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES (2, 'henry', 'PBKDF2v1|10000|47bc298294d96f19da2e|O3yhl5oanDXV6DQlusMr3kHBTz/yDpWRhLSXSJ2dIiFhIAtmulleFQ==', 'Henry', 'Singleton', 'henry@limelightdigital.com', '2014-03-06 17:36:38', 'developer', 'no', '/blueprints/sections/', 'no', NULL);
INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES (3, 'ali', 'PBKDF2v1|10000|0c9ab6ce09f2780e1ae8|fuQkfPJMQ1YeoX6MsEsAuvE9jDsICzhIiziJF+vKtqkcBkWSGXpkZg==', 'Alexandra', 'Sexton', 'alexandra@limelightdigital.com', '2013-08-13 16:21:43', 'developer', 'no', '/blueprints/sections/', 'no', NULL);
INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES (4, 'dan', 'PBKDF2v1|10000|9201a2c898ee92959f3f|Xlp/qnbzW1mQzaehSOHNI9jN0cSSOl/rOdYuqm0zv8xL+lmDhelDiA==', 'Dan', 'Henderson', 'dan@limelightdigital.com', NULL, 'developer', 'no', '/blueprints/sections/', 'no', NULL);

-- *** STRUCTURE: `sym_forgotpass` ***
DROP TABLE IF EXISTS `sym_forgotpass`;
CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_forgotpass` ***

-- *** STRUCTURE: `sym_sessions` ***
DROP TABLE IF EXISTS `sym_sessions`;
CREATE TABLE `sym_sessions` (
  `session` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
