
-- *** STRUCTURE: `sym_cache` ***
DROP TABLE IF EXISTS `sym_cache`;
CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `sym_cachelite_references` ***
DROP TABLE IF EXISTS `sym_cachelite_references`;
CREATE TABLE `sym_cachelite_references` (
  `page` varchar(255) NOT NULL DEFAULT '',
  `sections` varchar(255) DEFAULT NULL,
  `entries` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_cachelite_references` ***

-- *** STRUCTURE: `sym_entries` ***
DROP TABLE IF EXISTS `sym_entries`;
CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `modification_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=710 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries` ***
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (597, 64, 1, '2013-09-23 10:41:27', '2013-09-23 00:41:27', '2014-03-21 11:36:05', '2014-03-21 00:36:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (614, 75, 2, '2013-11-25 15:04:54', '2013-11-25 04:04:54', '2014-03-14 12:40:03', '2014-03-14 01:40:03');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (615, 75, 2, '2013-11-25 15:05:22', '2013-11-25 04:05:22', '2014-03-14 12:40:37', '2014-03-14 01:40:37');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (616, 75, 2, '2013-11-25 15:05:33', '2013-11-25 04:05:33', '2014-03-14 12:41:21', '2014-03-14 01:41:21');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (617, 75, 2, '2013-11-25 15:06:07', '2013-11-25 04:06:07', '2014-03-14 12:41:21', '2014-03-14 01:41:21');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (618, 75, 2, '2013-11-25 15:06:14', '2013-11-25 04:06:14', '2014-03-14 12:41:21', '2014-03-14 01:41:21');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (619, 75, 2, '2013-11-25 15:06:21', '2013-11-25 04:06:21', '2014-03-14 12:41:24', '2014-03-14 01:41:24');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (620, 75, 2, '2013-11-25 15:06:28', '2013-11-25 04:06:28', '2014-03-14 12:41:29', '2014-03-14 01:41:29');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (621, 75, 2, '2013-11-25 15:06:34', '2013-11-25 04:06:34', '2014-03-14 12:41:34', '2014-03-14 01:41:34');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (622, 75, 2, '2013-11-25 15:06:39', '2013-11-25 04:06:39', '2014-03-14 12:41:40', '2014-03-14 01:41:40');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (623, 75, 2, '2013-11-25 15:06:46', '2013-11-25 04:06:46', '2014-03-14 12:41:47', '2014-03-14 01:41:47');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (624, 75, 2, '2013-11-25 15:06:52', '2013-11-25 04:06:52', '2014-03-14 12:41:54', '2014-03-14 01:41:54');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (625, 75, 2, '2013-11-25 15:06:58', '2013-11-25 04:06:58', '2014-03-14 12:41:59', '2014-03-14 01:41:59');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (626, 66, 2, '2013-11-25 15:08:08', '2013-11-25 04:08:08', '2014-03-11 09:11:06', '2014-03-10 22:11:06');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (627, 76, 2, '2013-11-25 15:12:03', '2013-11-25 04:12:03', '2013-11-25 15:12:03', '2013-11-25 04:12:03');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (628, 76, 2, '2013-11-25 15:12:25', '2013-11-25 04:12:25', '2013-11-25 15:12:25', '2013-11-25 04:12:25');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (629, 76, 2, '2013-11-25 15:13:21', '2013-11-25 04:13:21', '2013-11-25 15:13:21', '2013-11-25 04:13:21');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (630, 76, 2, '2013-11-25 15:13:46', '2013-11-25 04:13:46', '2013-11-25 15:13:46', '2013-11-25 04:13:46');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (631, 66, 2, '2013-11-25 15:24:12', '2013-11-25 04:24:12', '2014-03-11 11:07:05', '2014-03-11 00:07:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (632, 66, 2, '2013-11-25 15:27:53', '2013-11-25 04:27:53', '2013-11-25 15:27:53', '2013-11-25 04:27:53');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (633, 66, 2, '2013-11-25 15:37:44', '2013-11-25 04:37:44', '2014-03-08 08:57:10', '2014-03-07 21:57:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (634, 79, 2, '2013-11-27 17:54:26', '2013-11-27 06:54:26', '2013-11-27 17:54:26', '2013-11-27 06:54:26');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (635, 79, 2, '2013-11-27 17:54:32', '2013-11-27 06:54:32', '2013-11-27 17:54:32', '2013-11-27 06:54:32');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (636, 79, 2, '2013-11-27 17:54:39', '2013-11-27 06:54:39', '2013-11-27 17:54:39', '2013-11-27 06:54:39');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (637, 79, 2, '2013-11-27 17:54:44', '2013-11-27 06:54:44', '2013-11-27 17:54:44', '2013-11-27 06:54:44');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (638, 80, 2, '2013-11-27 17:56:32', '2013-11-27 06:56:32', '2013-11-27 17:56:32', '2013-11-27 06:56:32');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (639, 80, 2, '2013-11-27 17:56:49', '2013-11-27 06:56:49', '2013-11-27 17:56:49', '2013-11-27 06:56:49');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (640, 80, 2, '2013-11-27 17:57:05', '2013-11-27 06:57:05', '2013-11-27 17:57:05', '2013-11-27 06:57:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (641, 80, 2, '2013-11-27 17:57:20', '2013-11-27 06:57:20', '2013-11-27 17:57:20', '2013-11-27 06:57:20');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (642, 80, 2, '2013-11-27 17:57:42', '2013-11-27 06:57:42', '2013-11-27 17:57:42', '2013-11-27 06:57:42');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (643, 80, 2, '2013-11-27 17:57:53', '2013-11-27 06:57:53', '2013-11-27 17:57:53', '2013-11-27 06:57:53');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (644, 80, 2, '2013-11-27 17:58:03', '2013-11-27 06:58:03', '2013-11-27 17:58:03', '2013-11-27 06:58:03');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (645, 80, 2, '2013-11-27 17:58:14', '2013-11-27 06:58:14', '2013-11-27 17:58:43', '2013-11-27 06:58:43');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (646, 80, 2, '2013-11-27 17:58:34', '2013-11-27 06:58:34', '2013-11-27 17:58:34', '2013-11-27 06:58:34');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (647, 80, 2, '2013-11-27 17:59:23', '2013-11-27 06:59:23', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (648, 80, 2, '2013-11-27 17:59:42', '2013-11-27 06:59:42', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (649, 80, 2, '2013-11-27 17:59:52', '2013-11-27 06:59:52', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (650, 80, 2, '2013-11-27 18:00:01', '2013-11-27 07:00:01', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (651, 80, 2, '2013-11-27 18:00:11', '2013-11-27 07:00:11', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (652, 80, 2, '2013-11-27 18:00:21', '2013-11-27 07:00:21', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (653, 80, 2, '2013-11-27 18:00:30', '2013-11-27 07:00:30', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (654, 80, 2, '2013-11-27 18:00:38', '2013-11-27 07:00:38', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (655, 80, 2, '2013-11-27 18:00:46', '2013-11-27 07:00:46', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (656, 80, 2, '2013-11-27 18:00:54', '2013-11-27 07:00:54', '2013-11-27 18:01:05', '2013-11-27 07:01:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (657, 80, 2, '2013-11-27 18:01:23', '2013-11-27 07:01:23', '2013-11-27 18:02:10', '2013-11-27 07:02:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (658, 80, 2, '2013-11-27 18:01:28', '2013-11-27 07:01:28', '2013-11-27 18:02:10', '2013-11-27 07:02:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (659, 80, 2, '2013-11-27 18:01:34', '2013-11-27 07:01:34', '2013-11-27 18:02:10', '2013-11-27 07:02:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (660, 80, 2, '2013-11-27 18:01:41', '2013-11-27 07:01:41', '2013-11-27 18:02:10', '2013-11-27 07:02:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (661, 80, 2, '2013-11-27 18:01:48', '2013-11-27 07:01:48', '2013-11-27 18:02:10', '2013-11-27 07:02:10');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (662, 80, 2, '2013-11-27 18:01:55', '2013-11-27 07:01:55', '2013-11-27 18:02:01', '2013-11-27 07:02:01');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (663, 80, 2, '2013-11-27 18:02:24', '2013-11-27 07:02:24', '2013-11-27 18:03:53', '2013-11-27 07:03:53');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (664, 80, 2, '2013-11-27 18:02:30', '2013-11-27 07:02:30', '2013-11-27 18:03:53', '2013-11-27 07:03:53');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (665, 80, 2, '2013-11-27 18:02:45', '2013-11-27 07:02:45', '2013-11-27 18:02:45', '2013-11-27 07:02:45');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (666, 80, 2, '2013-11-27 18:02:56', '2013-11-27 07:02:56', '2013-11-27 18:02:56', '2013-11-27 07:02:56');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (667, 80, 2, '2013-11-27 18:03:12', '2013-11-27 07:03:12', '2013-11-27 18:03:12', '2013-11-27 07:03:12');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (668, 80, 2, '2013-11-27 18:03:21', '2013-11-27 07:03:21', '2013-11-27 18:03:21', '2013-11-27 07:03:21');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (669, 80, 2, '2013-11-27 18:03:31', '2013-11-27 07:03:31', '2013-11-27 18:03:31', '2013-11-27 07:03:31');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (670, 80, 2, '2013-11-27 18:03:40', '2013-11-27 07:03:40', '2013-11-27 18:03:40', '2013-11-27 07:03:40');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (671, 78, 1, '2014-01-02 14:04:27', '2014-01-02 03:04:27', '2014-01-02 14:04:27', '2014-01-02 03:04:27');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (672, 78, 1, '2014-01-02 14:05:16', '2014-01-02 03:05:16', '2014-01-02 14:05:16', '2014-01-02 03:05:16');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (709, 77, 1, '2014-03-24 15:40:24', '2014-03-24 04:40:24', '2014-03-24 15:40:24', '2014-03-24 04:40:24');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (708, 77, 1, '2014-03-24 15:37:24', '2014-03-24 04:37:24', '2014-03-24 15:37:24', '2014-03-24 04:37:24');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (707, 77, 1, '2014-03-24 15:34:29', '2014-03-24 04:34:29', '2014-03-24 15:34:29', '2014-03-24 04:34:29');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (706, 77, 1, '2014-03-24 15:34:20', '2014-03-24 04:34:20', '2014-03-24 15:34:20', '2014-03-24 04:34:20');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (705, 77, 1, '2014-03-24 15:33:28', '2014-03-24 04:33:28', '2014-03-24 15:33:28', '2014-03-24 04:33:28');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (704, 77, 1, '2014-03-24 15:30:59', '2014-03-24 04:30:59', '2014-03-24 15:30:59', '2014-03-24 04:30:59');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (703, 77, 1, '2014-03-24 15:27:01', '2014-03-24 04:27:01', '2014-03-24 15:27:01', '2014-03-24 04:27:01');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (702, 77, 1, '2014-03-24 15:26:37', '2014-03-24 04:26:37', '2014-03-24 15:26:37', '2014-03-24 04:26:37');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (693, 81, 2, '2014-03-21 10:58:44', '2014-03-20 23:58:44', '2014-03-21 11:27:16', '2014-03-21 00:27:16');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (701, 81, 5, '2014-03-24 15:25:58', '2014-03-24 04:25:58', '2014-03-24 15:46:53', '2014-03-24 04:46:53');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (700, 81, 5, '2014-03-24 15:25:12', '2014-03-24 04:25:12', '2014-03-24 15:47:01', '2014-03-24 04:47:01');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (699, 77, 1, '2014-03-24 15:23:12', '2014-03-24 04:23:12', '2014-03-24 15:23:12', '2014-03-24 04:23:12');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (698, 77, 1, '2014-03-21 11:15:17', '2014-03-21 00:15:17', '2014-03-21 11:15:17', '2014-03-21 00:15:17');

-- *** STRUCTURE: `sym_entries_data_485` ***
DROP TABLE IF EXISTS `sym_entries_data_485`;
CREATE TABLE `sym_entries_data_485` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_485` ***
INSERT INTO `sym_entries_data_485` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 597, 'colliers-international-space-planner', 'Colliers International Space Planner');

-- *** STRUCTURE: `sym_entries_data_486` ***
DROP TABLE IF EXISTS `sym_entries_data_486`;
CREATE TABLE `sym_entries_data_486` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_486` ***
INSERT INTO `sym_entries_data_486` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 597, NULL, '-');

-- *** STRUCTURE: `sym_entries_data_487` ***
DROP TABLE IF EXISTS `sym_entries_data_487`;
CREATE TABLE `sym_entries_data_487` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_487` ***
INSERT INTO `sym_entries_data_487` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 597, 'The Colliers International Space Planner allows you to calculate your space usage versus current industry standards. ', NULL);

-- *** STRUCTURE: `sym_entries_data_488` ***
DROP TABLE IF EXISTS `sym_entries_data_488`;
CREATE TABLE `sym_entries_data_488` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_488` ***
INSERT INTO `sym_entries_data_488` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 597, 'Real estate, space calculation, space planning. ', NULL);

-- *** STRUCTURE: `sym_entries_data_489` ***
DROP TABLE IF EXISTS `sym_entries_data_489`;
CREATE TABLE `sym_entries_data_489` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compiled` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_regexp` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `is_cased` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_489` ***

-- *** STRUCTURE: `sym_entries_data_490` ***
DROP TABLE IF EXISTS `sym_entries_data_490`;
CREATE TABLE `sym_entries_data_490` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_490` ***

-- *** STRUCTURE: `sym_entries_data_491` ***
DROP TABLE IF EXISTS `sym_entries_data_491`;
CREATE TABLE `sym_entries_data_491` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_491` ***

-- *** STRUCTURE: `sym_entries_data_492` ***
DROP TABLE IF EXISTS `sym_entries_data_492`;
CREATE TABLE `sym_entries_data_492` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_492` ***

-- *** STRUCTURE: `sym_entries_data_493` ***
DROP TABLE IF EXISTS `sym_entries_data_493`;
CREATE TABLE `sym_entries_data_493` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_493` ***

-- *** STRUCTURE: `sym_entries_data_494` ***
DROP TABLE IF EXISTS `sym_entries_data_494`;
CREATE TABLE `sym_entries_data_494` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_494` ***
INSERT INTO `sym_entries_data_494` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 626, 'disclaimer-text', 'Disclaimer Text');
INSERT INTO `sym_entries_data_494` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 631, 'public-survey-completion-message', 'Public Survey: Completion Message');
INSERT INTO `sym_entries_data_494` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 632, 'public-survey-above-benchmark', 'Public Survey: Above benchmark');
INSERT INTO `sym_entries_data_494` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 633, 'public-survey-introduction', 'Public Survey: Introduction');

-- *** STRUCTURE: `sym_entries_data_495` ***
DROP TABLE IF EXISTS `sym_entries_data_495`;
CREATE TABLE `sym_entries_data_495` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_495` ***
INSERT INTO `sym_entries_data_495` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 626, '<p>DISCLAIMER: This document and the calculations shown herein have been prepared by Colliers International as a guide only. </p>\r\n\r\n<p>Colliers International does not guarantee, warrant or represent that the information contained in this document is&nbsp;correct. Any interested party seeking to rely on the contents should undertake its own inquiries as to the accuracy of&nbsp;the information. Colliers International excludes unequivocally all inferred and implied terms, conditions and&nbsp;warranties arising out of this document and excludes all liability for loss and damage arising there from including any&nbsp;loss of profits, business or anticipated savings.</p>', '<p>DISCLAIMER: This document and the calculations shown herein have been prepared by Colliers International as a guide only. </p>\r\n\r\n<p>Colliers International does not guarantee, warrant or represent that the information contained in this document is&#160;correct. Any interested party seeking to rely on the contents should undertake its own inquiries as to the accuracy of&#160;the information. Colliers International excludes unequivocally all inferred and implied terms, conditions and&#160;warranties arising out of this document and excludes all liability for loss and damage arising there from including any&#160;loss of profits, business or anticipated savings.</p>');
INSERT INTO `sym_entries_data_495` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 631, '<h1>Thank you for your query.&nbsp;</h1>\r\n\r\n<p>A Colliers International representative will be in touch with you shortly.&nbsp;</p>', '<h1>Thank you for your query.&#160;</h1>\r\n\r\n<p>A Colliers International representative will be in touch with you shortly.&#160;</p>');
INSERT INTO `sym_entries_data_495` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 632, '<h2>You are above a typical benchmark for your industry sector!</h2><p>Contact us to discuss how we can optimise your space requirements.&nbsp;</p>', '<h2>You are above a typical benchmark for your industry sector!</h2><p>Contact us to discuss how we can optimise your space requirements.&#160;</p>');
INSERT INTO `sym_entries_data_495` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 633, '<p>It can be difficult to anticipate your space requirements, especially when your business is growing, downsizing or you are looking to relocate.</p>\r\n\r\n<p>Complete the fields below to discover whether your current space is in line with industry standards.</p>', '<p>It can be difficult to anticipate your space requirements, especially when your business is growing, downsizing or you are looking to relocate.</p>\r\n\r\n<p>Complete the fields below to discover whether your current space is in line with industry standards.</p>');

-- *** STRUCTURE: `sym_entries_data_496` ***
DROP TABLE IF EXISTS `sym_entries_data_496`;
CREATE TABLE `sym_entries_data_496` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_496` ***
INSERT INTO `sym_entries_data_496` (`id`, `entry_id`, `value`) VALUES (10, 626, 'yes');
INSERT INTO `sym_entries_data_496` (`id`, `entry_id`, `value`) VALUES (11, 631, 'yes');
INSERT INTO `sym_entries_data_496` (`id`, `entry_id`, `value`) VALUES (4, 632, 'yes');
INSERT INTO `sym_entries_data_496` (`id`, `entry_id`, `value`) VALUES (9, 633, 'yes');

-- *** STRUCTURE: `sym_entries_data_497` ***
DROP TABLE IF EXISTS `sym_entries_data_497`;
CREATE TABLE `sym_entries_data_497` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_497` ***

-- *** STRUCTURE: `sym_entries_data_498` ***
DROP TABLE IF EXISTS `sym_entries_data_498`;
CREATE TABLE `sym_entries_data_498` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_498` ***

-- *** STRUCTURE: `sym_entries_data_499` ***
DROP TABLE IF EXISTS `sym_entries_data_499`;
CREATE TABLE `sym_entries_data_499` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_499` ***

-- *** STRUCTURE: `sym_entries_data_557` ***
DROP TABLE IF EXISTS `sym_entries_data_557`;
CREATE TABLE `sym_entries_data_557` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_557` ***
INSERT INTO `sym_entries_data_557` (`id`, `entry_id`, `value`) VALUES (8, 597, NULL);

-- *** STRUCTURE: `sym_entries_data_558` ***
DROP TABLE IF EXISTS `sym_entries_data_558`;
CREATE TABLE `sym_entries_data_558` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_558` ***
INSERT INTO `sym_entries_data_558` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 597, 'colliers-international-space-planner', 'Colliers International Space Planner');

-- *** STRUCTURE: `sym_entries_data_559` ***
DROP TABLE IF EXISTS `sym_entries_data_559`;
CREATE TABLE `sym_entries_data_559` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_559` ***
INSERT INTO `sym_entries_data_559` (`id`, `entry_id`, `value`) VALUES (8, 597, NULL);

-- *** STRUCTURE: `sym_entries_data_560` ***
DROP TABLE IF EXISTS `sym_entries_data_560`;
CREATE TABLE `sym_entries_data_560` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_560` ***
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 614, 'accounting', 'Accounting');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 615, 'advertising-media', 'Advertising/Media');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 616, 'banking-financial', 'Banking/Financial');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 617, 'call-centre-customer-service', 'Call Centre/Customer Service');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 618, 'consulting', 'Consulting');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 619, 'engineering-property', 'Engineering/Property');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 620, 'government', 'Government');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 621, 'healthcare-pharmaceutical-medical', 'Healthcare/Pharmaceutical/Medical');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 622, 'hospitality', 'Hospitality');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 623, 'insurance-superannuation', 'Insurance/Superannuation');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 624, 'legal', 'Legal');
INSERT INTO `sym_entries_data_560` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 625, 'marketing', 'Marketing');

-- *** STRUCTURE: `sym_entries_data_561` ***
DROP TABLE IF EXISTS `sym_entries_data_561`;
CREATE TABLE `sym_entries_data_561` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_561` ***
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 614, 119, 11.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 615, 139, 13.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 616, 119, 11.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 617, 109, 10.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 618, 119, 11.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 619, 109, 10.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 620, 149, 14.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 621, 139, 13.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 622, 119, 11.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 623, 119, 11.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 624, 149, 14.9);
INSERT INTO `sym_entries_data_561` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 625, 119, 11.9);

-- *** STRUCTURE: `sym_entries_data_562` ***
DROP TABLE IF EXISTS `sym_entries_data_562`;
CREATE TABLE `sym_entries_data_562` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_562` ***
INSERT INTO `sym_entries_data_562` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 627, '500sqm -salta', '< 500sqm  Salta');
INSERT INTO `sym_entries_data_562` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 628, '500-100sqm-201-elizabeth-street', '500-100sqm 201 Elizabeth Street');
INSERT INTO `sym_entries_data_562` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 629, '1000-1500sqm -2-park-street', '1,000-1,500sqm  2 Park Street');
INSERT INTO `sym_entries_data_562` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 630, '1500sqm-175-liverpool-street', '1,500sqm + 175 Liverpool Street');

-- *** STRUCTURE: `sym_entries_data_563` ***
DROP TABLE IF EXISTS `sym_entries_data_563`;
CREATE TABLE `sym_entries_data_563` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_563` ***
INSERT INTO `sym_entries_data_563` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 627, NULL, '<500');
INSERT INTO `sym_entries_data_563` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 628, '500-1000', '500-1000');
INSERT INTO `sym_entries_data_563` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 629, '1000-1500', '1000-1500');
INSERT INTO `sym_entries_data_563` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 630, 1500, '>1500');

-- *** STRUCTURE: `sym_entries_data_564` ***
DROP TABLE IF EXISTS `sym_entries_data_564`;
CREATE TABLE `sym_entries_data_564` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_564` ***
INSERT INTO `sym_entries_data_564` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 627, '500_salta-5292ce13ac033.pdf', 378869, 'application/pdf', 'a:1:{s:8:\"creation\";s:25:\"2013-11-25T15:12:03+11:00\";}');
INSERT INTO `sym_entries_data_564` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 628, '201-eliz-blank-for-marketing-1-5292ce294cd7c.pdf', 358822, 'application/pdf', 'a:1:{s:8:\"creation\";s:25:\"2013-11-25T15:12:25+11:00\";}');
INSERT INTO `sym_entries_data_564` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 629, '2-park-street-blank-for-market-5292ce619c0a1.pdf', 430927, 'application/pdf', 'a:1:{s:8:\"creation\";s:25:\"2013-11-25T15:13:21+11:00\";}');
INSERT INTO `sym_entries_data_564` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 630, '175-liverpoool-st-blank-for-m-5292ce7abb004.pdf', 433462, 'application/pdf', 'a:1:{s:8:\"creation\";s:25:\"2013-11-25T15:13:46+11:00\";}');

-- *** STRUCTURE: `sym_entries_data_565` ***
DROP TABLE IF EXISTS `sym_entries_data_565`;
CREATE TABLE `sym_entries_data_565` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_565` ***
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 'sarah-wu', 'Sarah Wu');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 'test', 'test');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 'test', 'test');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 'sarah-wu', 'Sarah Wu');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 'sarah-wu', 'Sarah Wu');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 'sarah-wu', 'Sarah Wu');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 'test', 'test');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 'sarah-wu', 'Sarah Wu');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 'sarah', 'Sarah');
INSERT INTO `sym_entries_data_565` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 'test', 'test');

-- *** STRUCTURE: `sym_entries_data_566` ***
DROP TABLE IF EXISTS `sym_entries_data_566`;
CREATE TABLE `sym_entries_data_566` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_566` ***
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 3067063706730, 3067063706730);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 'test', 'test');
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 'test', 'test');
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 0572054703, 0572054703);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 0572054703, 0572054703);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 0572054703, 0572054703);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 'test', 'test');
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 0572054703, 0572054703);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 85248738, 85248738);
INSERT INTO `sym_entries_data_566` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 'test', 'test');

-- *** STRUCTURE: `sym_entries_data_567` ***
DROP TABLE IF EXISTS `sym_entries_data_567`;
CREATE TABLE `sym_entries_data_567` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_567` ***
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 'test-testcom', 'test@test.com');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 'test-testcom', 'test@test.com');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 'test-testcom', 'test@test.com');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 'sarahwu-adcorpcomau', 'sarahwu@adcorp.com.au');
INSERT INTO `sym_entries_data_567` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 'test-testcom', 'test@test.com');

-- *** STRUCTURE: `sym_entries_data_568` ***
DROP TABLE IF EXISTS `sym_entries_data_568`;
CREATE TABLE `sym_entries_data_568` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_568` ***
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 'test', 'test');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 'test', 'test');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 'test', 'test');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 'adcorp', 'Adcorp');
INSERT INTO `sym_entries_data_568` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 'test', 'test');

-- *** STRUCTURE: `sym_entries_data_569` ***
DROP TABLE IF EXISTS `sym_entries_data_569`;
CREATE TABLE `sym_entries_data_569` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_569` ***
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 2, 2);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 2, 2);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 10, 10);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 100, 100);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 10, 10);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 2, 2);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 10, 10);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 10, 10);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 100, 100);
INSERT INTO `sym_entries_data_569` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 3, 3);

-- *** STRUCTURE: `sym_entries_data_570` ***
DROP TABLE IF EXISTS `sym_entries_data_570`;
CREATE TABLE `sym_entries_data_570` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_570` ***
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 1200, 1200);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 3, 3);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 3, 3);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 3, 3);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 1536, 1536);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 1200, 1200);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 1200, 1200);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 1200, 1200);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 1100, 1100);
INSERT INTO `sym_entries_data_570` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 4, 4);

-- *** STRUCTURE: `sym_entries_data_571` ***
DROP TABLE IF EXISTS `sym_entries_data_571`;
CREATE TABLE `sym_entries_data_571` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_571` ***
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 705, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 706, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 707, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 708, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 709, 'healthcare-pharmaceutical-medical', 'healthcare-pharmaceutical-medical');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 704, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 703, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 702, 'marketing', 'marketing');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 699, 'legal', 'legal');
INSERT INTO `sym_entries_data_571` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 698, 'marketing', 'marketing');

-- *** STRUCTURE: `sym_entries_data_572` ***
DROP TABLE IF EXISTS `sym_entries_data_572`;
CREATE TABLE `sym_entries_data_572` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_572` ***

-- *** STRUCTURE: `sym_entries_data_573` ***
DROP TABLE IF EXISTS `sym_entries_data_573`;
CREATE TABLE `sym_entries_data_573` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_573` ***

-- *** STRUCTURE: `sym_entries_data_574` ***
DROP TABLE IF EXISTS `sym_entries_data_574`;
CREATE TABLE `sym_entries_data_574` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_574` ***

-- *** STRUCTURE: `sym_entries_data_575` ***
DROP TABLE IF EXISTS `sym_entries_data_575`;
CREATE TABLE `sym_entries_data_575` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_575` ***

-- *** STRUCTURE: `sym_entries_data_576` ***
DROP TABLE IF EXISTS `sym_entries_data_576`;
CREATE TABLE `sym_entries_data_576` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_576` ***
INSERT INTO `sym_entries_data_576` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 634, 'staff-areas', 'Staff Areas');
INSERT INTO `sym_entries_data_576` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 635, 'front-of-house-areas', 'Front of house areas');
INSERT INTO `sym_entries_data_576` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 636, 'common-areas', 'Common areas');
INSERT INTO `sym_entries_data_576` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 637, 'service-areas', 'Service areas');

-- *** STRUCTURE: `sym_entries_data_577` ***
DROP TABLE IF EXISTS `sym_entries_data_577`;
CREATE TABLE `sym_entries_data_577` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_577` ***
INSERT INTO `sym_entries_data_577` (`id`, `entry_id`, `value`) VALUES (1, 634, 1);
INSERT INTO `sym_entries_data_577` (`id`, `entry_id`, `value`) VALUES (2, 635, 2);
INSERT INTO `sym_entries_data_577` (`id`, `entry_id`, `value`) VALUES (3, 636, 3);
INSERT INTO `sym_entries_data_577` (`id`, `entry_id`, `value`) VALUES (4, 637, 4);

-- *** STRUCTURE: `sym_entries_data_578` ***
DROP TABLE IF EXISTS `sym_entries_data_578`;
CREATE TABLE `sym_entries_data_578` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_578` ***
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 638, 'ceo-senior-director-large', 'CEO / Senior Director (large)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 639, 'managing-director', 'Managing Director');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 640, 'managers-executives-office', 'Manager\'s/Executive\'s Office ');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 641, 'managers-office-small', 'Manager\'s Office  (small)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 642, 'executive-1800mm-2100mm', 'Executive (1800mm - 2100mm)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 643, 'general-support-1500mm', 'General/Support (1500mm)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 644, 'hot-desk', 'Hot Desk');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 645, 'receptionist', 'Receptionist');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 646, 'receptionist-waiting-area', 'Receptionist/Waiting Area');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 647, 'board-room-8-10-people', 'Board Room (8-10 people)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 648, 'board-room-14-people', 'Board Room (14 people)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 649, 'board-room-20-people', 'Board Room  (20 people)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 650, 'meeting-room-4-person', 'Meeting Room (4 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 651, 'meeting-room-6-person', 'Meeting Room (6 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 652, 'meeting-room-8-person', 'Meeting Room (8 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 653, 'meeting-room-10-12-person', 'Meeting Room (10-12 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 654, 'small-meeting-interview-room', 'Small Meeting/Interview Room');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 655, 'training-room-6-person', 'Training Room (6 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 656, 'training-room-8-10-people', 'Training Room (8-10 people)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 657, 'quiet-room-1-person', 'Quiet Room (1 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 658, 'quiet-room-2-person', 'Quiet Room (2 person)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 659, 'tea-room', 'Tea Room');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 660, 'kitchen', 'Kitchen');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 661, 'lunch-room-8-people', 'Lunch Room (8 people)');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 662, 'staff-breakout-space', 'Staff Breakout Space');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 663, 'file-storage', 'File Storage');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 664, 'library', 'Library');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 665, 'computer-comms-server-room', 'Computer/Comms/Server Room');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 666, 'it-built-room', 'IT Built Room');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 667, 'utility-copy-fax-mail-staff-connect', 'Utility - Copy/fax/mail/staff connect');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 668, 'first-aid-sick-bay', 'First Aid/Sick Bay');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 669, 'despatch-room-mail-courier-delivery', 'Despatch Room: Mail/Courier/Delivery');
INSERT INTO `sym_entries_data_578` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 670, 'small-storage', 'Small Storage');

-- *** STRUCTURE: `sym_entries_data_579` ***
DROP TABLE IF EXISTS `sym_entries_data_579`;
CREATE TABLE `sym_entries_data_579` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_579` ***
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 638, 22, 22);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 639, 16, 16);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 640, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 641, 10, 10);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 642, 648, 6.48);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 643, 324, 3.24);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 644, 216, 2.16);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 645, 648, 6.48);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 646, 1000, 10.00);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 647, 20, 20);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 648, 36, 36);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 649, 40, 40);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 650, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 651, 16, 16);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 652, 20, 20);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 653, 32, 32);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 654, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 655, 16, 16);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 656, 45, 45);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 657, 6, 6);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 658, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 659, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 660, 24, 24);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 661, 25, 25);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 662, 20, 20);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 663, 8, 8);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 664, 24, 24);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 665, 15, 15);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 666, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 667, 22, 22);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 668, 14, 14);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 669, 12, 12);
INSERT INTO `sym_entries_data_579` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 670, 10, 10);

-- *** STRUCTURE: `sym_entries_data_580` ***
DROP TABLE IF EXISTS `sym_entries_data_580`;
CREATE TABLE `sym_entries_data_580` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_580` ***
INSERT INTO `sym_entries_data_580` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 639, 15, 15);
INSERT INTO `sym_entries_data_580` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 646, 10, 10);
INSERT INTO `sym_entries_data_580` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 645, 5, 5);

-- *** STRUCTURE: `sym_entries_data_581` ***
DROP TABLE IF EXISTS `sym_entries_data_581`;
CREATE TABLE `sym_entries_data_581` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_581` ***
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (1, 638, 1);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (2, 639, 2);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (3, 640, 3);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (4, 641, 4);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (5, 642, 5);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (6, 643, 6);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (7, 644, 7);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (10, 645, 8);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (9, 646, 9);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (21, 647, 10);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (22, 648, 11);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (23, 649, 12);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (24, 650, 13);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (25, 651, 14);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (26, 652, 15);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (27, 653, 16);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (28, 654, 17);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (29, 655, 18);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (30, 656, 19);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (38, 657, 20);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (39, 658, 21);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (40, 659, 22);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (41, 660, 23);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (42, 661, 24);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (37, 662, 25);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (51, 663, 26);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (52, 664, 27);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (45, 665, 28);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (46, 666, 29);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (47, 667, 30);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (48, 668, 31);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (49, 669, 32);
INSERT INTO `sym_entries_data_581` (`id`, `entry_id`, `value`) VALUES (50, 670, 33);

-- *** STRUCTURE: `sym_entries_data_582` ***
DROP TABLE IF EXISTS `sym_entries_data_582`;
CREATE TABLE `sym_entries_data_582` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_582` ***
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (1, 638, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (2, 639, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (3, 640, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (4, 641, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (5, 642, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (6, 643, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (7, 644, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (10, 645, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (9, 646, 634);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (21, 647, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (22, 648, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (23, 649, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (24, 650, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (25, 651, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (26, 652, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (27, 653, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (28, 654, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (29, 655, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (30, 656, 635);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (38, 657, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (39, 658, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (40, 659, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (41, 660, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (42, 661, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (37, 662, 636);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (51, 663, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (52, 664, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (45, 665, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (46, 666, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (47, 667, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (48, 668, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (49, 669, 637);
INSERT INTO `sym_entries_data_582` (`id`, `entry_id`, `relation_id`) VALUES (50, 670, 637);

-- *** STRUCTURE: `sym_entries_data_583` ***
DROP TABLE IF EXISTS `sym_entries_data_583`;
CREATE TABLE `sym_entries_data_583` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_583` ***
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 638, 'office', 'Office');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 639, 'office', 'Office');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 640, 'office', 'Office');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 641, 'office', 'Office');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 642, 'workstation', 'Workstation');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 643, 'workstation', 'Workstation');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 644, 'workstation', 'Workstation');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 645, 'reception', 'Reception');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 646, 'reception', 'Reception');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 647, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 648, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 649, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 650, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 651, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 652, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 653, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 654, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 655, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 656, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 657, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 658, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 659, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 660, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 661, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 662, 'open-area', 'Open area');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 663, 'open-area', 'Open area');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 664, 'open-area', 'Open area');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 665, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 666, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 667, 'open-area', 'Open area');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 668, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 669, 'room', 'Room');
INSERT INTO `sym_entries_data_583` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 670, 'room', 'Room');

-- *** STRUCTURE: `sym_entries_data_584` ***
DROP TABLE IF EXISTS `sym_entries_data_584`;
CREATE TABLE `sym_entries_data_584` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_584` ***
INSERT INTO `sym_entries_data_584` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 597, 'elishaturen-ott-collierscom', 'Elisha.Turen-Ott@colliers.com');

-- *** STRUCTURE: `sym_entries_data_585` ***
DROP TABLE IF EXISTS `sym_entries_data_585`;
CREATE TABLE `sym_entries_data_585` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_585` ***
INSERT INTO `sym_entries_data_585` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 693, 'moving-times', 'Moving times');
INSERT INTO `sym_entries_data_585` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 700, 'corporate-solutions', 'Corporate Solutions');
INSERT INTO `sym_entries_data_585` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 701, 'office-leasing', 'Office Leasing');

-- *** STRUCTURE: `sym_entries_data_586` ***
DROP TABLE IF EXISTS `sym_entries_data_586`;
CREATE TABLE `sym_entries_data_586` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_586` ***
INSERT INTO `sym_entries_data_586` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 693, 'mt', 'mt');
INSERT INTO `sym_entries_data_586` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 700, 'cs', 'cs');
INSERT INTO `sym_entries_data_586` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 701, 'of', 'of');

-- *** STRUCTURE: `sym_entries_data_587` ***
DROP TABLE IF EXISTS `sym_entries_data_587`;
CREATE TABLE `sym_entries_data_587` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_587` ***
INSERT INTO `sym_entries_data_587` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 693, 'henry-limelightdigitalcom', 'henry@limelightdigital.com');
INSERT INTO `sym_entries_data_587` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 700, 'elishaturen-ott-collierscom', 'Elisha.Turen-Ott@colliers.com');
INSERT INTO `sym_entries_data_587` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 701, 'elishaturen-ott-collierscom', 'Elisha.Turen-Ott@colliers.com');

-- *** STRUCTURE: `sym_entries_data_588` ***
DROP TABLE IF EXISTS `sym_entries_data_588`;
CREATE TABLE `sym_entries_data_588` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_588` ***
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (7, 703, 700);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (6, 702, 700);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (5, 699, 693);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (4, 698, 693);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (8, 704, 700);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (9, 705, 0);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (10, 706, 0);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (11, 707, 0);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (12, 708, 700);
INSERT INTO `sym_entries_data_588` (`id`, `entry_id`, `relation_id`) VALUES (13, 709, 701);

-- *** STRUCTURE: `sym_entries_data_591` ***
DROP TABLE IF EXISTS `sym_entries_data_591`;
CREATE TABLE `sym_entries_data_591` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `label` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_entries_data_591` ***
INSERT INTO `sym_entries_data_591` (`id`, `entry_id`, `label`, `value`) VALUES (6, 693, 'Copy this link', '/?r=mt');
INSERT INTO `sym_entries_data_591` (`id`, `entry_id`, `label`, `value`) VALUES (10, 700, 'Copy this link', '/?r=cs');
INSERT INTO `sym_entries_data_591` (`id`, `entry_id`, `label`, `value`) VALUES (9, 701, 'Copy this link', '/?r=of');

-- *** STRUCTURE: `sym_extensions` ***
DROP TABLE IF EXISTS `sym_extensions`;
CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions` ***
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (129, 'debugdevkit', 'enabled', '1.2.4');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (130, 'export_ensemble', 'enabled', '2.0.3');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (131, 'selectbox_link_field', 'enabled', 1.28);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (132, 'jit_image_manipulation', 'enabled', 1.20);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (133, 'maintenance_mode', 'enabled', 1.7);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (134, 'profiledevkit', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (135, 'markdown', 'enabled', 1.17);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (136, 'xssfilter', 'enabled', 1.2);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (137, 'less_compiler', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (138, 'order_entries', 'enabled', '1.10.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (139, 'oembed_field', 'enabled', '1.7.2');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (140, 'uniqueuploadfield', 'enabled', '1.8.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (141, 'globalresourceloader', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (144, 'html5_doctype', 'enabled', 1.3);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (143, 'maplocationfield', 'enabled', '3.3.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (145, 'duplicate_entry', 'enabled', 1.3);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (146, 'dump_db', 'enabled', 1.10);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (147, 'cachelite', 'disabled', 1.2);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (148, 'dont_drop', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (149, 'image_index_preview', 'enabled', 1.4);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (150, 'static_section', 'enabled', '1.8.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (151, 'expressionfield', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (153, 'richtext_redactor', 'enabled', '1.1.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (155, 'search_index', 'disabled', '0.9.2');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (157, 'pagesfield', 'enabled', '1.6.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (158, 'subsectionmanager', 'enabled', '3.5.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (159, 'email_template_manager', 'enabled', 5.0);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (160, 'publish_tabs', 'enabled', '1.2.0');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (161, 'uniqueinputfield', 'enabled', 1.5);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (163, 'useragent_details', 'disabled', 1.2);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (168, 'entry_url_field', 'enabled', '1.3.0');

-- *** STRUCTURE: `sym_extensions_delegates` ***
DROP TABLE IF EXISTS `sym_extensions_delegates`;
CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=368 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_extensions_delegates` ***
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (331, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (330, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (332, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (339, 133, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (338, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (343, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (342, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (337, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (336, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (328, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (333, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (335, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (327, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (236, 138, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (351, 139, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (239, 141, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (240, 141, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (241, 144, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (242, 144, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (243, 144, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (245, 146, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (246, 146, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (247, 146, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (268, 150, '/backend/', 'AdminPagePreGenerate', 'adminPagePreGenerate');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (267, 150, '/blueprints/sections/', 'SectionPreEdit', 'saveSectionSettings');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (266, 150, '/blueprints/sections/', 'SectionPreCreate', 'saveSectionSettings');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (265, 150, '/blueprints/sections/', 'AddSectionElements', 'addSectionSettings');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (264, 150, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (262, 148, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (353, 149, '/backend/', 'InitaliseAdminPageHead', 'InitaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (283, 153, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (284, 153, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (285, 153, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (286, 145, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (357, 158, '/blueprints/datasources/', 'DatasourcePreDelete', '__clearSubsectionCache');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (356, 158, '/blueprints/datasources/', 'DatasourcePostEdit', '__clearSubsectionCache');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (355, 158, '/blueprints/datasources/', 'DatasourcePostCreate', '__clearSubsectionCache');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (354, 158, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (347, 159, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (346, 159, '/frontend/', 'EventFinalSaveFilter', 'eventFinalSaveFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (345, 159, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (344, 159, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (349, 160, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (329, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (334, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (340, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (341, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (348, 159, '/blueprints/datasources/', 'DatasourcePostEdit', 'datasourcePostEdit');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (350, 157, '/blueprints/pages/', 'AppendPageContent', 'appendAssociationsDrawer');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (352, 139, '*', 'AppendContentType', 'appendContentType');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (358, 158, '/frontend/', 'DataSourceEntriesBuilt', '__prepareSubsection');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (365, 168, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (366, 168, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (367, 168, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');

-- *** STRUCTURE: `sym_fields` ***
DROP TABLE IF EXISTS `sym_fields`;
CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=592 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields` ***
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (491, 'Use as the complete page title', 'full-page-title', 'checkbox', 65, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (492, 'Page Description', 'page-description', 'textarea', 65, 'no', 3, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (493, 'Page Keywords', 'page-keywords', 'textarea', 65, 'no', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (494, 'Name', 'name', 'input', 66, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (495, 'Content', 'content', 'textarea', 66, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (496, 'Publish', 'publish', 'checkbox', 66, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (497, 'Name', 'name', 'input', 67, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (498, 'Image', 'image', 'upload', 67, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (499, 'Publish', 'publish', 'checkbox', 67, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (487, 'Default metadata description', 'default-metadata-description', 'textarea', 64, 'yes', 6, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (488, 'Default metadata keywords', 'default-metadata-keywords', 'textarea', 64, 'yes', 7, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (489, 'Pages', 'pages', 'expression', 65, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (490, 'Page title', 'page-title', 'input', 65, 'no', 1, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (486, 'Page title separator ', 'page-title-separator', 'input', 64, 'yes', 5, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (485, 'Page title suffix', 'page-title-suffix', 'input', 64, 'yes', 4, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (557, 'General', 'general', 'publish_tabs', 64, 'no', 0, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (558, 'Site Name', 'site-name', 'input', 64, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (559, 'Metadata', 'metadata', 'publish_tabs', 64, 'no', 3, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (560, 'Name', 'name', 'input', 75, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (561, 'Standard SQMPP', 'standard-sqmpp', 'input', 75, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (562, 'Name', 'name', 'input', 76, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (563, 'SQM', 'sqm', 'input', 76, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (564, 'File', 'file', 'uniqueupload', 76, 'yes', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (565, 'Name', 'name', 'input', 77, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (566, 'Phone Number', 'phone-number', 'input', 77, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (567, 'Email', 'email', 'input', 77, 'yes', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (568, 'Company', 'company', 'input', 77, 'yes', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (569, 'Number of staff', 'number-of-staff', 'input', 77, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (570, 'Current space', 'current-space', 'input', 77, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (571, 'Industry', 'industry', 'select', 77, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (572, 'Address', 'address', 'input', 78, 'no', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (573, 'Division', 'division', 'input', 78, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (574, 'Operations', 'operations', 'input', 78, 'no', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (575, 'Current area', 'current-area', 'input', 78, 'no', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (576, 'Name', 'name', 'input', 79, 'no', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (577, 'Order', 'order', 'order_entries', 79, 'no', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (578, 'Name', 'name', 'input', 80, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (579, 'Area', 'area', 'input', 80, 'yes', 3, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (580, 'Minimum area (unused)', 'minimum-area', 'input', 80, 'no', 4, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (581, 'Order', 'order', 'order_entries', 80, 'no', 5, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (582, 'Category', 'category', 'selectbox_link', 80, 'yes', 1, 'sidebar', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (583, 'Type', 'type', 'select', 80, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (584, 'Public Survey Notification Email Address', 'public-survey-notification-email-address', 'input', 64, 'yes', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (585, 'Name', 'name', 'input', 81, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (586, 'Code', 'code', 'input', 81, 'yes', 1, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (587, 'Email', 'email', 'input', 81, 'yes', 2, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (588, 'Referrer', 'referrer', 'selectbox_link', 77, 'no', 7, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (591, 'Referrer URL', 'referrer-url', 'entry_url', 81, 'no', 3, 'sidebar', 'no');

-- *** STRUCTURE: `sym_fields_addresslocation` ***
DROP TABLE IF EXISTS `sym_fields_addresslocation`;
CREATE TABLE `sym_fields_addresslocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `street_label` varchar(80) NOT NULL,
  `city_label` varchar(80) NOT NULL,
  `region_label` varchar(80) NOT NULL,
  `postal_code_label` varchar(80) NOT NULL,
  `country_label` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_addresslocation` ***

-- *** STRUCTURE: `sym_fields_author` ***
DROP TABLE IF EXISTS `sym_fields_author`;
CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_author` ***

-- *** STRUCTURE: `sym_fields_checkbox` ***
DROP TABLE IF EXISTS `sym_fields_checkbox`;
CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_checkbox` ***
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (332, 491, 'off', NULL);
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (331, 496, 'on', NULL);
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (327, 499, 'on', NULL);

-- *** STRUCTURE: `sym_fields_date` ***
DROP TABLE IF EXISTS `sym_fields_date`;
CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_date` ***

-- *** STRUCTURE: `sym_fields_entry_url` ***
DROP TABLE IF EXISTS `sym_fields_entry_url`;
CREATE TABLE `sym_fields_entry_url` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `anchor_label` varchar(255) DEFAULT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `new_window` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `sym_fields_entry_url` ***
INSERT INTO `sym_fields_entry_url` (`id`, `field_id`, `anchor_label`, `expression`, `new_window`, `hide`) VALUES (7, 591, 'Copy this link', '{$root}/?r={entry/code/@handle}', 'no', 'no');

-- *** STRUCTURE: `sym_fields_expression` ***
DROP TABLE IF EXISTS `sym_fields_expression`;
CREATE TABLE `sym_fields_expression` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_expression` ***

-- *** STRUCTURE: `sym_fields_input` ***
DROP TABLE IF EXISTS `sym_fields_input`;
CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_input` ***
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1136, 485, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1137, 486, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1066, 490, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1063, 494, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1057, 497, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1134, 558, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1080, 560, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1081, 561, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1082, 562, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1083, 563, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1141, 565, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1142, 566, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1143, 567, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1144, 568, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1145, 569, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1146, 570, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1120, 572, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1121, 573, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1122, 574, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1123, 575, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1124, 576, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1131, 578, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1132, 579, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1133, 580, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1135, 584, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1174, 585, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1175, 586, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (1176, 587, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');

-- *** STRUCTURE: `sym_fields_maplocation` ***
DROP TABLE IF EXISTS `sym_fields_maplocation`;
CREATE TABLE `sym_fields_maplocation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_location` varchar(60) NOT NULL,
  `default_location_coords` varchar(60) NOT NULL,
  `default_zoom` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_maplocation` ***

-- *** STRUCTURE: `sym_fields_oembed` ***
DROP TABLE IF EXISTS `sym_fields_oembed`;
CREATE TABLE `sym_fields_oembed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `refresh` int(11) unsigned DEFAULT NULL,
  `driver` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `thumbs` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `query_params` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_ssl` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_oembed` ***

-- *** STRUCTURE: `sym_fields_order_entries` ***
DROP TABLE IF EXISTS `sym_fields_order_entries`;
CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_order_entries` ***
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (296, 577, NULL, 'no');
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (299, 581, NULL, 'yes');

-- *** STRUCTURE: `sym_fields_pages` ***
DROP TABLE IF EXISTS `sym_fields_pages`;
CREATE TABLE `sym_fields_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `page_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_pages` ***

-- *** STRUCTURE: `sym_fields_publish_tabs` ***
DROP TABLE IF EXISTS `sym_fields_publish_tabs`;
CREATE TABLE `sym_fields_publish_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_publish_tabs` ***
INSERT INTO `sym_fields_publish_tabs` (`id`, `field_id`) VALUES (63, 557);
INSERT INTO `sym_fields_publish_tabs` (`id`, `field_id`) VALUES (64, 559);

-- *** STRUCTURE: `sym_fields_search_index` ***
DROP TABLE IF EXISTS `sym_fields_search_index`;
CREATE TABLE `sym_fields_search_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_search_index` ***

-- *** STRUCTURE: `sym_fields_select` ***
DROP TABLE IF EXISTS `sym_fields_select`;
CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_select` ***
INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (95, 571, 'no', 'yes', 'no', NULL, 560);
INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (94, 583, 'no', 'no', 'no', 'Office, Workstation, Reception, Room, Open area', NULL);

-- *** STRUCTURE: `sym_fields_selectbox_link` ***
DROP TABLE IF EXISTS `sym_fields_selectbox_link`;
CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_selectbox_link` ***
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`, `hide_when_prepopulated`) VALUES (2, 582, 'no', 'yes', 576, 20, 'no');
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`, `hide_when_prepopulated`) VALUES (3, 588, 'no', 'yes', 585, 20, 'no');

-- *** STRUCTURE: `sym_fields_subsectionmanager` ***
DROP TABLE IF EXISTS `sym_fields_subsectionmanager`;
CREATE TABLE `sym_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_tags` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `droptext` text COLLATE utf8_unicode_ci,
  `create` tinyint(1) DEFAULT '1',
  `remove` tinyint(1) DEFAULT '1',
  `allow_multiple` tinyint(1) DEFAULT '1',
  `edit` tinyint(1) DEFAULT '1',
  `sort` tinyint(1) DEFAULT '1',
  `drop` tinyint(1) DEFAULT '1',
  `show_search` tinyint(1) DEFAULT '1',
  `show_preview` tinyint(1) DEFAULT '0',
  `recursion_levels` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_subsectionmanager` ***

-- *** STRUCTURE: `sym_fields_subsectiontabs` ***
DROP TABLE IF EXISTS `sym_fields_subsectiontabs`;
CREATE TABLE `sym_fields_subsectiontabs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `static_tabs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_subsectiontabs` ***

-- *** STRUCTURE: `sym_fields_taglist` ***
DROP TABLE IF EXISTS `sym_fields_taglist`;
CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_taglist` ***

-- *** STRUCTURE: `sym_fields_textarea` ***
DROP TABLE IF EXISTS `sym_fields_textarea`;
CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=551 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_textarea` ***
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (549, 487, NULL, 5);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (550, 488, NULL, 5);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (543, 492, NULL, 4);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (544, 493, NULL, 4);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (540, 495, 'redactor', 15);

-- *** STRUCTURE: `sym_fields_uniqueinput` ***
DROP TABLE IF EXISTS `sym_fields_uniqueinput`;
CREATE TABLE `sym_fields_uniqueinput` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_uniqueinput` ***

-- *** STRUCTURE: `sym_fields_uniqueupload` ***
DROP TABLE IF EXISTS `sym_fields_uniqueupload`;
CREATE TABLE `sym_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_uniqueupload` ***
INSERT INTO `sym_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (3, 564, '/workspace/uploads/floor-plans', '/\\.(?:docx?|pdf|rtf|txt)$/i');

-- *** STRUCTURE: `sym_fields_upload` ***
DROP TABLE IF EXISTS `sym_fields_upload`;
CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_upload` ***
INSERT INTO `sym_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (220, 498, '/workspace', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE: `sym_pages` ***
DROP TABLE IF EXISTS `sym_pages`;
CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages` ***
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, NULL, 'Colliers Space Calculator', 'colliers-space-calculator', NULL, NULL, NULL, NULL, 16);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (97, NULL, 404, 404, NULL, NULL, NULL, NULL, 21);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (98, NULL, 'Public Survey: Step 1', 'public-survey-step-1', NULL, NULL, 'industries,referrer', 'public_survey_submission_step_1', 22);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (99, NULL, 'Public Survey: Step 2', 'public-survey-step-2', NULL, NULL, NULL, 'public_survey_submission_step_2', 23);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (100, NULL, 'Internal Survey', 'internal-survey', NULL, NULL, 'industries,position_categories,positions', 'internal_survey_submission', 24);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (101, NULL, 'Public Survey: Step 3', 'public-survey-step-3', NULL, NULL, NULL, NULL, 25);

-- *** STRUCTURE: `sym_pages_types` ***
DROP TABLE IF EXISTS `sym_pages_types`;
CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=721 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_pages_types` ***
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (720, 98, 'index');
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (715, 97, 404);

-- *** STRUCTURE: `sym_search_index` ***
DROP TABLE IF EXISTS `sym_search_index`;
CREATE TABLE `sym_search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** STRUCTURE: `sym_search_index_entry_keywords` ***
DROP TABLE IF EXISTS `sym_search_index_entry_keywords`;
CREATE TABLE `sym_search_index_entry_keywords` (
  `entry_id` int(11) DEFAULT NULL,
  `keyword_id` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  KEY `entry_id` (`entry_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** STRUCTURE: `sym_search_index_keywords` ***
DROP TABLE IF EXISTS `sym_search_index_keywords`;
CREATE TABLE `sym_search_index_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** STRUCTURE: `sym_search_index_logs` ***
DROP TABLE IF EXISTS `sym_search_index_logs`;
CREATE TABLE `sym_search_index_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `keywords_manipulated` varchar(255) DEFAULT NULL,
  `sections` varchar(255) DEFAULT NULL,
  `page` int(11) NOT NULL,
  `results` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** STRUCTURE: `sym_sections` ***
DROP TABLE IF EXISTS `sym_sections`;
CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_limit` int(11) NOT NULL DEFAULT '1',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections` ***
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (64, 'Preferences', 'preferences', 6, 'no', 'yes', 1, 'Settings');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (65, 'Metadata', 'metadata', 7, 'no', 'no', 1, 'Settings');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (66, 'Text Snippets', 'text-snippets', 4, 'no', 'no', 1, 'Snippets');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (67, 'Image Snippets', 'image-snippets', 5, 'no', 'no', 1, 'Snippets');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (75, 'Industries', 'industries', 3, 'no', 'no', 1, 'Industries');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (76, 'Floor plans', 'floor-plans', 2, 'no', 'no', 1, 'Floor Plans');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (77, 'Public Surveys', 'public-surveys', 1, 'no', 'no', 1, 'Submissions');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (78, 'Internal Surveys', 'internal-surveys', 8, 'no', 'no', 1, 'Submissions');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (79, 'Position Categories', 'position-categories', 9, 'no', 'no', 1, 'Submissions');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (80, 'Positions', 'positions', 10, 'no', 'no', 1, 'Submissions');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `static_limit`, `navigation_group`) VALUES (81, 'Referrers', 'referrers', 11, 'no', 'no', 1, 'Settings');

-- *** STRUCTURE: `sym_sections_association` ***
DROP TABLE IF EXISTS `sym_sections_association`;
CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_sections_association` ***
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (149, 75, 560, 77, 571, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (148, 79, 576, 80, 582, 'no');
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (150, 81, 585, 77, 588, 'no');
