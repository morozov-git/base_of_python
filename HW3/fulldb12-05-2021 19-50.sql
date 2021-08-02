#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ea', '2015-04-26 15:40:13', '1995-06-25 17:02:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'qui', '2003-04-30 04:35:32', '1974-05-12 12:29:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'odio', '1977-08-11 14:29:02', '1991-05-02 20:54:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolor', '2005-01-30 03:41:45', '2018-02-21 14:38:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'autem', '1990-12-13 04:07:11', '2001-01-17 07:04:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'velit', '2007-08-22 22:44:14', '1994-08-29 22:27:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'maiores', '2002-05-26 07:13:20', '1993-11-09 10:58:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'odit', '1995-09-20 23:10:11', '1972-09-01 01:25:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'earum', '1984-11-30 12:56:16', '1979-10-17 17:27:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'aperiam', '1997-09-15 22:50:59', '2004-03-03 16:59:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'doloremque', '2014-04-21 20:05:28', '1997-09-04 21:10:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'eos', '1976-10-13 15:19:37', '2006-02-01 10:48:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'ut', '1970-05-20 01:50:04', '1980-05-25 11:20:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'dolores', '2021-01-13 11:29:53', '2005-07-12 10:40:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'omnis', '2018-07-25 05:22:32', '2014-03-29 22:57:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'nihil', '1984-04-01 10:45:34', '1990-06-30 04:34:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'aspernatur', '1994-02-11 00:19:45', '2016-09-12 09:24:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'error', '2003-11-26 02:35:49', '1982-01-29 06:56:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'nemo', '2009-11-17 00:52:03', '1987-03-25 18:43:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'delectus', '2002-05-07 09:07:06', '1978-10-01 06:30:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'vel', '1970-07-05 15:59:46', '2013-09-05 22:21:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'cum', '1993-01-16 05:23:59', '2002-08-01 10:21:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'id', '2011-09-24 18:52:50', '2010-06-19 09:36:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sit', '2004-06-20 20:09:42', '2003-04-05 11:18:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'molestias', '2010-09-03 05:07:57', '1998-03-21 17:16:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'numquam', '2006-04-13 02:34:54', '2002-09-29 20:38:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'sunt', '2006-07-12 13:29:45', '1981-11-19 02:04:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'quia', '1991-05-18 02:26:05', '1999-03-01 00:48:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'at', '2020-07-06 17:52:50', '1980-07-25 21:14:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'aliquid', '2005-05-10 21:54:57', '2007-01-05 22:09:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'possimus', '1995-11-02 02:32:22', '1985-09-11 07:56:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'tempora', '1972-12-03 16:08:09', '2014-03-28 01:39:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'voluptatibus', '2013-08-22 06:25:08', '1978-09-04 13:51:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'rerum', '1971-06-29 07:24:44', '1998-11-03 23:26:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'et', '1983-12-25 07:43:27', '1985-08-04 10:31:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'eum', '1990-05-31 09:37:46', '2002-04-06 23:42:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'enim', '2011-06-16 22:50:36', '2008-07-15 15:49:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'consectetur', '1984-01-30 09:37:20', '2003-09-07 03:34:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'voluptas', '2001-08-06 09:35:12', '2018-12-31 08:21:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'blanditiis', '2008-12-10 11:50:10', '2003-01-24 05:26:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'itaque', '1991-03-08 02:34:20', '1999-06-04 18:42:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'labore', '1987-11-17 23:02:01', '1979-02-12 07:30:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'accusamus', '2008-01-17 05:55:49', '1980-08-19 19:06:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'architecto', '2009-02-11 14:32:34', '2019-11-21 15:07:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'a', '1984-05-04 09:07:48', '1980-08-11 01:35:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'perspiciatis', '2020-02-10 04:33:17', '2020-11-26 21:37:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'cumque', '2018-03-07 09:32:59', '2009-01-27 08:58:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'harum', '1980-03-16 22:57:42', '1979-05-22 03:40:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'nulla', '2011-03-16 17:16:07', '2020-11-07 01:31:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'laudantium', '1983-02-12 17:13:05', '1999-12-06 02:18:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'consequuntur', '1990-07-05 10:33:33', '2006-10-11 10:14:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'saepe', '1992-05-29 01:11:38', '2011-07-04 01:18:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'minus', '1999-10-30 06:33:19', '1995-06-17 00:00:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'doloribus', '2019-02-24 20:22:51', '2011-11-28 01:11:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'aut', '2019-04-14 08:43:16', '2019-11-18 22:15:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'consequatur', '2001-05-08 14:59:19', '2005-10-24 03:25:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'facilis', '2007-08-21 08:45:33', '2019-09-06 03:19:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'optio', '1993-08-31 03:58:02', '2018-06-03 10:03:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'pariatur', '2002-05-12 21:15:53', '1977-11-07 03:51:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'laboriosam', '2013-11-23 05:25:39', '1973-05-04 12:31:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'quo', '1974-06-16 09:17:40', '1987-08-15 03:19:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'sint', '1990-12-24 23:48:43', '1978-03-02 00:08:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'assumenda', '1987-03-13 03:17:29', '1982-02-13 01:58:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'beatae', '1982-01-05 19:42:41', '1981-07-20 12:30:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'expedita', '2005-08-19 12:56:57', '1972-04-30 23:47:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'voluptatem', '1998-08-21 10:50:41', '2014-08-21 07:00:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'totam', '1999-09-10 21:33:16', '1997-01-30 04:44:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ex', '1973-10-02 23:41:26', '2003-06-10 02:10:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'ipsam', '1993-06-15 18:12:39', '2008-01-10 14:53:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'nostrum', '2002-05-23 04:43:52', '1974-04-05 13:19:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'voluptates', '1974-03-24 00:08:09', '1999-02-03 09:25:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'debitis', '2012-05-15 01:22:23', '1983-04-29 06:38:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'est', '1989-11-13 10:05:37', '1995-04-25 11:06:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'ad', '1982-04-03 10:52:42', '2006-08-29 03:54:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'exercitationem', '1970-05-14 13:30:09', '2004-05-31 05:07:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'esse', '2016-04-01 16:01:08', '1981-04-26 01:06:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'eveniet', '1983-03-30 11:38:01', '2020-08-08 19:56:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'quisquam', '1989-07-27 02:52:01', '2019-01-20 22:21:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'iusto', '2013-11-07 15:59:36', '1986-09-27 06:03:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'asperiores', '2004-09-14 13:34:20', '2020-06-19 20:58:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'sed', '2005-11-11 20:08:15', '2016-04-18 18:50:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'dignissimos', '2018-05-02 12:12:41', '1990-10-15 20:06:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'occaecati', '1974-09-04 12:43:44', '1987-03-26 05:57:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'quas', '1996-07-13 11:51:51', '2019-06-15 09:29:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'minima', '2010-02-15 12:20:18', '1974-12-13 06:40:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'unde', '2003-12-13 00:59:01', '1970-03-07 12:32:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'officiis', '1993-12-21 01:36:29', '2012-01-08 19:58:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'eligendi', '1989-09-18 09:31:13', '1981-07-29 10:12:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'ullam', '1970-04-22 23:42:15', '2017-04-03 11:09:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'praesentium', '1990-05-28 20:05:09', '1999-08-24 20:34:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'officia', '2018-11-04 19:14:09', '2006-09-20 00:20:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'in', '1971-12-19 04:11:12', '2018-11-13 14:06:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'repellat', '2001-10-23 02:13:43', '2006-04-11 07:02:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'non', '1991-12-10 18:58:10', '1984-09-20 15:05:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'quod', '2012-09-19 03:47:29', '1997-08-21 19:34:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'similique', '1971-03-25 20:03:12', '1999-06-16 07:30:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'illum', '1978-06-01 03:51:11', '1985-10-20 23:09:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'temporibus', '2020-01-10 02:35:32', '1983-12-16 01:54:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'quam', '1990-07-29 14:53:18', '1982-10-21 19:52:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'dolorum', '1984-01-26 12:21:29', '1980-01-26 21:06:36');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `user_id` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1979-01-07 11:46:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1991-08-28 00:31:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2002-09-28 04:48:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1971-07-23 21:58:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2008-12-30 10:17:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2012-11-03 00:35:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2019-02-06 16:26:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2015-07-17 08:57:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1978-05-31 10:46:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1971-06-06 22:10:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1978-03-29 04:40:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2014-11-13 08:20:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2017-06-27 01:33:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1973-06-07 09:25:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1980-04-12 23:12:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1971-06-13 16:44:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1993-03-31 06:27:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2015-10-12 22:52:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2004-01-27 05:39:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1985-08-17 21:34:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1996-02-12 07:46:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2006-04-09 00:03:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1996-06-27 22:18:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1979-09-26 00:19:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1996-06-02 12:25:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '2020-06-04 16:07:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '1986-02-18 12:19:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1974-12-11 16:42:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1982-06-26 19:54:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2015-12-23 20:51:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1981-05-01 17:48:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2003-10-23 16:09:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2005-06-18 18:10:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '1982-01-07 16:32:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '1972-10-08 08:27:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1984-09-18 09:18:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2017-01-12 06:19:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1985-11-13 04:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '1980-04-12 11:08:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2013-03-15 21:54:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '2001-04-26 07:22:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1992-01-13 09:57:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2006-06-25 01:10:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '2019-10-02 23:39:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1976-06-28 00:27:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '2005-01-04 14:04:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2010-03-18 17:37:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1985-05-29 14:33:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '2012-09-14 11:55:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2019-06-16 14:19:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2016-01-24 19:49:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '2003-07-26 11:50:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1974-02-20 12:34:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1991-02-06 12:37:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '1992-11-01 07:32:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1975-09-28 00:41:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '2001-11-22 07:19:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1991-06-02 06:57:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1983-05-30 20:52:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '2004-09-16 17:21:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1998-11-27 16:04:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1988-03-18 03:29:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2014-12-03 15:23:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1976-01-28 02:26:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1973-10-12 07:13:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '1983-01-23 00:34:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '1974-05-26 04:31:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2015-06-15 05:08:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '1990-11-09 12:42:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '1987-11-26 17:04:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '2017-03-21 10:16:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2013-08-07 08:41:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '1977-10-16 07:26:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '1971-07-10 11:26:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1996-05-06 20:49:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '2020-02-12 08:46:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2011-01-21 16:35:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2009-12-19 14:10:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2008-05-27 09:05:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1997-06-13 00:47:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1978-11-30 05:10:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2002-07-13 03:27:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2021-02-13 03:36:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1970-03-29 10:56:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '2021-01-18 23:47:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1978-03-09 06:30:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1988-12-16 09:55:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '2003-11-22 01:44:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1971-12-15 07:34:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1987-09-22 09:38:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2006-02-25 23:19:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1984-11-04 21:44:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '2009-11-30 02:30:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1974-05-17 22:37:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1971-03-25 21:02:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1979-10-12 08:22:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1985-06-26 18:17:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '2021-02-01 09:22:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2015-08-16 20:28:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '1983-05-08 03:21:54');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ',
  KEY `friend_id` (`friend_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendship_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1984-08-10 18:14:28', '1977-10-07 12:34:26', '2014-05-19 04:59:30', '2007-09-12 00:36:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1988-10-02 08:16:26', '1977-12-30 07:09:25', '2014-06-24 03:07:16', '1996-05-21 16:46:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1988-04-06 11:07:55', '1994-09-20 22:40:43', '1983-04-17 14:13:31', '1989-04-16 09:24:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1975-07-31 19:36:35', '2017-12-27 07:56:29', '1976-05-30 15:54:27', '1984-01-28 01:45:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1999-03-11 18:09:52', '2012-02-18 14:01:56', '1985-01-12 15:43:02', '2008-02-10 05:10:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1984-03-06 09:17:25', '2017-09-21 00:40:27', '2012-10-04 11:00:51', '1985-06-07 14:35:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '2007-04-06 09:51:35', '1993-07-20 21:15:47', '1979-07-24 05:26:36', '1972-01-09 22:12:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '1974-08-07 07:31:07', '1992-02-12 21:16:56', '1982-04-04 20:45:33', '1977-05-19 08:38:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '2015-04-02 04:54:35', '1988-03-22 09:17:46', '2000-07-26 17:58:02', '1980-11-15 15:19:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '2018-02-03 07:09:15', '1973-08-31 12:00:07', '1986-06-03 05:26:15', '1971-09-05 23:14:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '1976-06-08 20:24:01', '1991-01-19 13:31:33', '1973-05-08 07:22:46', '2013-09-13 09:20:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1991-03-08 07:37:21', '1992-12-18 02:59:16', '2001-04-04 23:44:42', '2005-12-02 16:27:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '2007-08-31 04:52:13', '1978-08-23 19:15:59', '1979-05-20 17:52:12', '2013-10-18 21:43:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '1984-03-03 01:00:10', '1997-11-10 21:17:08', '2002-03-18 01:24:45', '1995-05-02 05:32:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2015-05-28 13:41:36', '1972-06-23 22:23:57', '1999-08-11 19:41:27', '1982-06-10 11:32:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '2010-03-15 22:52:31', '1981-07-05 23:06:34', '1988-10-30 07:42:36', '1979-11-16 07:33:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1980-05-27 01:59:11', '1987-06-12 09:34:20', '1999-09-19 12:56:02', '1984-03-26 18:29:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '2001-04-15 09:18:24', '2009-08-08 08:12:41', '1998-12-23 05:02:33', '1997-10-07 11:13:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '1992-02-22 17:26:09', '1986-05-03 11:33:41', '1991-05-23 17:12:20', '2008-02-06 02:13:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '1974-05-25 17:06:52', '2018-02-03 01:15:39', '1978-10-01 15:19:54', '2011-10-17 20:56:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '1996-04-25 16:58:10', '1992-08-10 00:28:50', '1989-01-28 17:34:33', '1998-05-17 03:04:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1981-07-06 18:31:13', '1990-02-11 09:03:56', '2017-09-22 23:40:47', '1970-05-17 22:36:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '2004-06-07 23:26:05', '2019-12-28 04:11:40', '2002-03-08 20:46:21', '1988-06-02 07:23:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '2020-12-14 03:06:58', '1980-08-31 14:03:54', '2011-07-22 16:00:24', '2018-08-17 17:35:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '2004-01-27 10:48:23', '2020-08-20 18:07:00', '2009-02-09 06:38:42', '1982-01-15 04:51:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '2013-05-13 08:11:23', '2015-06-29 02:29:09', '2004-07-16 07:53:39', '1983-04-19 23:18:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1995-12-03 07:10:01', '2016-03-31 19:33:03', '2006-09-12 07:47:15', '1992-08-24 06:54:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1989-10-11 16:38:58', '2014-08-21 12:39:28', '1984-08-28 16:05:01', '1981-12-02 03:24:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '1972-08-31 12:01:16', '1992-08-03 08:09:10', '1978-03-07 22:00:28', '2008-09-08 17:30:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1977-04-30 17:00:09', '1982-05-11 14:16:14', '2005-07-23 14:21:10', '1980-11-27 03:25:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '2015-01-29 22:20:14', '2019-03-08 21:23:31', '1979-11-27 09:46:53', '2013-06-06 09:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1983-07-11 04:36:51', '2000-11-09 09:06:55', '2010-08-27 14:48:01', '1994-08-15 00:44:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1975-12-29 10:04:31', '2019-05-24 03:17:45', '1992-08-03 06:58:59', '2018-10-26 14:00:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '2003-09-25 10:52:40', '1997-05-03 21:21:05', '2013-09-07 23:53:22', '1970-12-21 12:18:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '2015-02-20 18:56:36', '2005-11-07 23:42:58', '2016-08-08 17:24:50', '1983-11-23 22:39:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '2011-10-10 06:52:36', '2009-04-30 10:20:55', '1971-06-11 09:08:25', '2014-11-11 18:14:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1973-02-23 07:16:47', '2016-02-27 14:27:50', '1981-09-11 13:24:12', '2010-12-16 20:02:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '2009-04-08 16:11:40', '1977-02-15 06:51:21', '1986-12-08 11:31:07', '2014-08-30 17:07:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '2005-02-12 01:40:32', '2018-07-23 03:22:49', '1998-07-26 02:38:47', '2004-10-22 21:16:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1982-11-28 07:29:42', '2006-07-01 06:09:37', '1987-06-21 13:36:07', '2006-09-19 09:25:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '1985-07-31 00:02:34', '2007-01-27 01:26:57', '1999-06-16 09:33:52', '2008-06-02 14:19:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '2014-06-20 06:49:18', '2000-02-22 05:22:04', '2015-08-14 10:58:20', '1981-01-21 07:50:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '1984-06-28 18:03:15', '1974-04-05 06:21:37', '1975-01-24 07:09:22', '2010-06-03 10:18:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1994-07-20 12:42:02', '1996-08-29 02:18:27', '2013-10-31 14:12:50', '1988-12-23 23:54:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '2012-12-11 14:12:44', '1972-01-06 05:49:42', '1980-04-27 07:20:04', '1987-10-16 00:53:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1979-10-20 23:56:40', '1994-04-09 19:49:52', '2008-12-03 08:49:08', '2003-12-02 01:12:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1989-07-20 11:19:22', '1989-06-03 02:01:27', '2003-06-09 03:31:58', '1992-06-09 06:51:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '1977-03-28 16:31:12', '1973-06-21 22:00:27', '2021-05-12 18:05:46', '2010-04-29 18:29:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '2015-08-23 05:25:33', '1988-04-14 19:44:38', '1999-08-28 13:36:48', '2009-03-22 12:43:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '2011-09-16 05:14:43', '1997-02-15 11:04:43', '1986-03-14 22:56:22', '1986-11-24 00:18:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1987-12-03 22:28:38', '1994-07-31 21:39:43', '2019-01-24 13:59:34', '1997-09-03 02:36:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '2004-03-11 19:32:07', '1988-12-26 09:47:50', '1985-02-08 21:55:28', '2004-02-16 23:43:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1995-03-02 14:57:17', '1971-05-24 20:18:43', '2009-04-06 05:57:08', '2009-11-25 07:37:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1992-08-04 10:56:35', '1983-08-07 09:25:05', '1989-05-03 13:34:38', '2015-05-30 22:49:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1994-01-01 07:45:03', '2000-08-03 05:01:14', '1985-05-30 04:52:51', '1976-11-04 10:17:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '1997-03-30 04:38:50', '2014-12-31 23:06:55', '1982-05-29 07:02:21', '1988-02-01 23:15:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1993-02-13 09:51:01', '2006-11-18 11:44:43', '1998-02-26 18:21:31', '1984-03-14 00:47:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '1992-04-12 08:08:51', '1982-06-15 13:00:43', '1990-12-30 20:58:22', '2008-09-02 01:48:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '2001-08-10 11:27:46', '2014-05-15 10:46:08', '2021-03-20 10:41:19', '1998-03-17 13:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1977-07-20 00:10:35', '2012-01-11 16:21:03', '2015-06-28 07:17:51', '1982-11-08 06:33:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '2007-08-16 22:07:21', '1976-07-31 20:25:52', '1991-07-17 03:21:34', '1998-12-02 08:45:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1972-02-25 15:19:19', '2015-02-03 11:47:12', '1982-01-17 01:54:21', '1994-08-03 20:54:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '1971-12-09 02:10:43', '2012-04-23 19:57:08', '1994-02-01 09:26:50', '1991-09-20 07:39:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1998-05-12 11:46:29', '1976-09-12 16:57:10', '2020-10-05 17:42:57', '2013-11-06 02:17:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1970-11-16 11:37:12', '2016-05-02 12:46:54', '1972-04-28 21:53:45', '1983-08-31 18:43:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1994-11-15 05:16:45', '1990-03-20 06:07:07', '1983-10-02 17:32:56', '1981-05-09 01:47:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1993-03-17 02:55:58', '1971-01-24 11:35:38', '2002-04-23 07:39:59', '1987-10-22 04:32:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1979-04-14 00:51:40', '2020-04-28 17:54:51', '1996-03-10 08:19:15', '1986-12-31 10:05:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1993-09-15 15:30:18', '2017-12-17 06:04:43', '1985-12-10 14:22:02', '1980-09-15 01:57:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '2014-11-25 15:39:27', '1984-01-23 06:50:07', '1998-07-12 06:25:32', '2006-10-15 17:55:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2016-09-11 20:00:50', '1987-05-10 08:01:21', '1987-04-18 08:13:56', '2013-03-31 12:43:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1979-05-22 16:42:13', '1997-03-05 01:00:21', '2014-03-26 01:26:26', '2018-11-28 20:20:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '2019-03-05 02:07:17', '2004-02-22 11:08:53', '2010-02-24 19:56:59', '1990-10-05 20:11:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '1983-01-10 16:01:49', '2005-06-19 21:22:53', '1978-04-04 11:59:15', '2011-01-24 17:57:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '1983-09-16 07:39:21', '1971-01-23 09:46:52', '1988-06-07 09:37:59', '1987-03-14 08:41:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '2006-08-08 15:20:00', '1988-05-19 08:56:53', '2007-12-18 22:38:26', '2018-03-01 09:24:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '2006-11-21 20:11:58', '1995-10-09 00:15:19', '2005-02-24 05:57:21', '1972-05-07 21:21:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '2016-09-03 04:14:54', '1979-03-29 20:14:25', '2003-09-23 13:25:13', '2000-11-20 23:02:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '2005-01-14 03:48:44', '1984-03-05 07:40:11', '1971-08-07 08:42:57', '1977-03-23 11:47:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1984-03-28 05:56:27', '2017-12-18 12:47:59', '1973-02-26 21:33:39', '2006-06-29 22:33:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '2003-01-02 09:24:26', '2021-04-30 10:25:05', '2020-02-28 10:32:33', '2016-04-16 02:51:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '2004-09-26 23:49:15', '1999-09-09 16:02:28', '2021-03-17 22:42:29', '2003-09-30 05:52:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2011-08-12 08:45:41', '1982-01-26 03:05:00', '1970-02-02 11:10:25', '1982-06-20 04:59:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1990-09-12 02:04:12', '1970-04-16 04:41:38', '2011-09-22 15:10:21', '1985-05-17 08:14:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '1993-02-14 11:35:22', '2012-10-14 19:07:54', '1978-02-25 21:09:10', '2004-09-18 05:12:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '2007-09-24 03:23:07', '1977-06-22 18:16:47', '1974-11-11 17:23:53', '2020-03-15 22:23:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '1992-04-03 07:16:39', '2014-09-03 12:31:43', '1976-08-25 06:16:25', '1976-04-26 04:08:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '2003-02-09 02:17:06', '1997-12-25 10:25:40', '2020-06-04 16:25:12', '2012-10-23 14:33:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '2018-05-06 02:33:20', '1998-05-08 16:58:12', '1976-02-02 18:11:06', '1993-05-02 08:24:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1972-07-09 23:05:30', '1998-09-18 15:16:55', '1992-07-22 10:08:15', '2013-06-26 12:29:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '1983-04-07 09:59:23', '1972-07-14 16:53:17', '1983-11-05 06:16:58', '2005-09-28 12:36:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '2020-05-01 22:59:37', '1998-04-06 03:25:44', '1996-03-08 09:25:35', '2005-12-10 20:08:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1984-01-21 06:59:21', '1975-01-16 12:06:51', '2007-09-11 20:38:55', '1982-06-01 13:21:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '2007-12-11 14:06:31', '1984-10-11 03:15:02', '1983-09-07 23:40:14', '2007-01-20 05:21:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '2004-08-23 10:56:44', '1974-09-09 05:45:23', '1996-04-30 03:26:51', '2006-07-06 04:19:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '1973-07-16 02:51:12', '1981-12-03 15:06:10', '1971-07-17 16:17:28', '1998-04-24 14:40:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1989-10-12 18:44:34', '1992-03-09 19:15:01', '1976-01-19 07:20:41', '2007-12-12 03:04:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1971-06-08 10:23:33', '1999-03-10 18:52:29', '1977-08-17 00:18:31', '2004-06-10 08:33:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '2010-07-29 22:41:29', '2006-05-30 07:44:02', '1973-09-21 21:11:14', '1983-10-22 21:54:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1976-02-02 14:44:20', '2012-10-26 04:24:42', '2015-04-05 12:34:40', '2016-07-05 13:08:53');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'exercitationem', '1997-01-30 14:43:37', '2006-07-26 05:54:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'possimus', '1976-05-08 00:40:46', '1995-03-09 23:31:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'adipisci', '1973-05-03 10:47:39', '2001-05-14 08:55:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'et', '1982-01-16 18:04:31', '2012-03-20 09:45:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'doloremque', '2006-06-03 00:43:31', '2015-04-07 18:24:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'quibusdam', '1991-05-10 13:53:55', '1986-03-13 22:28:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'molestiae', '1994-05-15 12:21:10', '1986-12-16 07:14:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'nulla', '2006-08-22 01:49:59', '1998-05-25 00:11:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'dolorem', '1982-10-10 05:36:41', '1981-07-15 16:03:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'accusamus', '1995-08-16 12:06:50', '1996-12-21 03:00:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'impedit', '2009-02-14 14:29:27', '1986-06-07 05:44:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'tempora', '1980-09-02 07:28:16', '2021-03-03 08:50:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'quia', '1980-10-03 01:55:44', '1994-03-18 22:43:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'consequatur', '2014-05-27 03:11:01', '1996-08-02 10:37:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'laborum', '1987-08-31 05:57:36', '1993-02-22 19:56:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'fuga', '1971-05-03 18:08:28', '1980-08-23 11:05:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'est', '1990-06-04 04:40:55', '2009-01-09 10:53:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'neque', '1980-12-12 05:57:43', '1996-05-01 09:36:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'quam', '1984-08-23 08:46:45', '2018-01-23 06:19:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'aut', '1997-02-02 17:38:08', '1996-05-13 18:43:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'hic', '2002-06-13 22:34:03', '2000-08-04 12:56:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'quasi', '2011-11-26 02:09:34', '2008-10-10 22:19:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'voluptates', '1995-06-22 00:14:54', '1983-06-06 15:44:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'pariatur', '1977-05-10 11:54:19', '2014-10-14 04:10:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'qui', '2011-11-28 02:28:12', '2018-05-22 20:23:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'animi', '1971-09-05 18:32:36', '1985-04-16 01:27:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'iusto', '2008-10-07 12:38:22', '2009-09-28 01:50:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'tempore', '2011-07-02 21:26:56', '1983-02-17 18:34:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'perspiciatis', '1995-11-16 12:14:16', '1989-05-05 17:08:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'veniam', '1984-10-31 12:03:58', '1982-10-16 15:00:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'ea', '2010-09-18 20:13:26', '2006-08-24 19:12:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'expedita', '1984-09-26 13:25:44', '2002-01-23 08:27:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'debitis', '2020-05-28 21:47:57', '1979-08-16 11:08:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'nam', '1985-12-13 19:08:48', '2014-11-18 12:56:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'dicta', '1992-05-09 00:10:27', '1975-01-02 07:45:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'quos', '2008-05-07 07:39:21', '1973-11-04 14:07:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'ullam', '2004-02-19 21:34:23', '2007-11-12 09:39:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'non', '2009-10-15 02:05:48', '1971-04-17 19:17:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'magnam', '1980-04-13 03:40:27', '1973-01-12 21:48:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'harum', '2010-03-21 08:50:15', '1986-11-21 13:01:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'vitae', '2020-10-30 00:20:31', '1986-03-22 20:41:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'porro', '2004-10-02 08:57:41', '2001-07-14 15:59:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'dolor', '1974-01-25 09:10:30', '1986-06-03 01:38:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'sint', '1990-09-03 12:47:58', '2010-09-20 08:14:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'temporibus', '1974-04-03 16:17:49', '1993-06-02 07:18:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'id', '2012-07-25 09:54:17', '1984-11-14 00:54:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'sunt', '1977-04-25 12:35:39', '2006-11-22 21:18:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'omnis', '1971-03-07 05:59:08', '1989-09-18 23:41:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'natus', '1989-03-19 11:42:19', '1974-10-15 14:30:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'optio', '1975-10-05 23:16:21', '2001-06-11 09:37:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'dolorum', '1984-12-21 12:37:42', '2008-05-19 10:31:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'numquam', '2014-06-05 06:54:26', '1991-03-16 04:11:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'enim', '1988-10-24 02:35:44', '2012-08-15 22:13:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'aperiam', '1987-07-15 16:15:10', '1997-04-21 02:19:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'libero', '2016-04-05 05:18:32', '1982-01-29 16:09:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'eos', '1977-11-16 08:46:49', '1995-03-06 17:53:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'sed', '2005-10-13 16:28:18', '2020-04-26 17:18:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'atque', '1999-11-14 12:09:06', '2019-05-25 00:09:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'consequuntur', '1973-11-25 13:22:07', '2004-12-20 18:23:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'rem', '2015-07-14 18:45:05', '2011-03-21 22:14:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'ut', '1988-09-05 04:10:47', '1972-07-21 04:57:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'deserunt', '1989-10-25 21:11:06', '1990-04-10 20:21:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'quas', '1994-06-18 04:09:19', '1975-12-28 21:38:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'aliquam', '1992-04-26 21:40:42', '1981-01-08 09:29:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'ad', '1982-03-13 09:09:52', '2018-02-04 18:52:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'corporis', '1977-07-20 17:01:04', '2005-06-30 20:23:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'voluptatem', '1997-07-04 07:19:30', '1974-10-26 20:15:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'nostrum', '2000-11-29 13:40:37', '1995-08-10 06:44:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'sapiente', '1990-12-14 23:48:12', '1990-08-22 19:12:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'voluptas', '1974-05-21 13:55:43', '2018-06-10 05:16:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'earum', '1997-06-08 18:08:09', '2001-04-19 02:21:50');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'eligendi', '1990-07-18 15:56:46', '1993-10-26 18:51:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'repudiandae', '2016-04-26 15:01:24', '1996-05-30 05:44:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'consectetur', '1998-03-03 00:50:04', '2014-01-10 02:55:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'corrupti', '2013-04-07 11:49:08', '1971-02-07 19:13:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'saepe', '2005-05-12 22:28:49', '2014-04-26 01:16:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'iure', '1971-07-09 08:10:02', '1994-10-02 09:00:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'velit', '1980-06-21 05:21:32', '2017-03-25 01:50:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'cupiditate', '2014-05-05 15:12:40', '1977-09-15 12:28:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'beatae', '1983-08-04 02:23:50', '1983-01-17 22:35:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'illum', '1974-08-20 08:04:35', '1981-05-28 05:37:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'assumenda', '1972-06-09 21:44:22', '1992-10-23 11:11:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'architecto', '1985-05-10 10:22:08', '1974-03-29 03:13:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'vel', '1995-04-01 03:23:32', '1997-10-30 15:02:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'laudantium', '2008-11-21 20:56:00', '1981-03-13 01:24:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'eveniet', '1991-12-27 04:22:28', '2007-01-06 07:54:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'iste', '1986-02-27 13:52:41', '1987-04-23 14:46:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'deleniti', '1974-11-13 17:51:13', '1978-05-06 22:02:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'quae', '2007-03-14 07:42:44', '1975-04-25 22:27:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'suscipit', '2004-01-19 22:42:17', '1999-08-12 10:15:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'distinctio', '1995-03-29 15:42:07', '1997-11-12 06:37:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'autem', '2014-06-20 23:50:54', '2004-02-03 18:47:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'quisquam', '2000-02-10 10:48:46', '2008-06-20 07:39:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'reprehenderit', '2014-06-12 22:03:51', '2007-02-21 00:25:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'asperiores', '1996-04-19 00:30:38', '2008-12-20 15:16:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'laboriosam', '2014-07-29 08:52:42', '1997-03-11 13:02:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'nesciunt', '1983-07-06 01:59:29', '2008-09-26 17:47:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'voluptatibus', '1983-04-03 02:20:29', '1976-12-30 05:42:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'facere', '2014-04-12 18:32:05', '1978-10-27 09:12:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'molestias', '1974-03-25 09:10:13', '2007-06-09 01:14:40');


#
# TABLE STRUCTURE FOR: likes_media
#

DROP TABLE IF EXISTS `likes_media`;

CREATE TABLE `likes_media` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора лайка',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на файл',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) лайка',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления лайка',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`media_id`) COMMENT 'Составной первичный ключ',
  KEY `media_id` (`media_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `likes_media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_media_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `likes_media_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `likes_media_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков медиа';

INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1977-03-04 18:39:48', '2005-01-15 01:40:11', '2014-05-14 06:59:58');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1996-05-14 01:57:59', '1990-03-16 17:32:01', '2019-01-02 22:49:34');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2005-12-13 07:13:14', '2005-08-03 07:41:06', '2002-01-06 09:07:37');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2006-09-28 07:18:04', '1976-10-31 12:55:56', '1987-01-17 19:25:37');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1970-05-16 13:03:00', '2020-04-27 22:06:32', '1998-03-31 14:41:59');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1993-08-04 06:33:37', '2008-02-17 14:18:55', '2016-01-10 02:52:50');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '1984-10-24 09:42:49', '2002-11-17 01:02:11', '1974-12-11 22:38:16');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '2015-12-15 02:50:07', '1982-09-05 20:06:41', '2003-10-20 03:15:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '1987-03-26 09:20:46', '2001-12-13 00:05:55', '1973-01-13 09:07:35');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '2006-06-11 16:29:36', '2005-01-23 03:15:29', '1996-03-02 07:44:08');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '2002-03-29 10:15:20', '1988-05-25 16:46:42', '1994-05-30 07:55:02');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1970-02-13 20:42:46', '1975-01-15 18:17:19', '1986-03-28 04:35:23');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1976-03-03 23:25:00', '1988-04-06 23:58:40', '2016-03-12 03:08:14');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '2019-10-17 18:12:20', '1981-12-14 20:50:23', '1993-06-04 11:59:56');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2007-08-08 03:44:33', '1970-12-02 20:51:28', '1977-04-13 20:48:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '2002-12-21 23:12:15', '2014-10-04 21:20:45', '1981-08-22 19:13:58');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1982-04-24 17:01:00', '1989-05-08 20:53:54', '2001-06-20 22:04:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '2015-10-18 01:09:00', '1984-10-13 23:49:02', '2015-11-07 04:18:52');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '2020-04-28 05:41:23', '1992-01-22 03:36:28', '1987-04-11 18:40:07');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '2001-03-03 19:44:47', '2006-06-10 20:30:14', '1984-11-28 08:08:58');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '1980-11-03 21:46:19', '1979-05-09 22:38:45', '1994-09-06 05:37:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '2019-05-03 03:13:26', '2001-10-03 03:05:55', '1973-01-03 19:16:37');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1973-04-15 06:55:23', '1978-01-30 19:48:54', '1992-11-11 01:01:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '1972-07-20 03:27:06', '1983-11-27 13:38:16', '2008-11-12 02:43:22');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '1996-10-16 13:53:47', '1973-10-13 21:52:02', '2007-05-17 20:27:26');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '2018-12-02 17:22:10', '1991-05-22 09:30:08', '1973-06-03 01:00:45');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1972-08-10 23:01:02', '2006-09-02 16:53:38', '2012-06-07 00:26:31');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1996-11-15 17:48:24', '2004-08-31 09:23:29', '1988-06-16 00:15:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '2004-02-09 09:24:49', '2002-02-05 12:32:05', '2001-08-23 09:28:39');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '2000-05-23 10:36:44', '1971-07-06 03:50:42', '1978-10-11 08:40:04');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '2015-09-07 00:22:12', '2014-09-20 19:01:49', '2001-11-19 02:36:37');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1993-09-28 12:10:54', '1979-06-19 07:51:45', '1984-07-28 10:25:23');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '2007-01-15 06:11:24', '1978-06-03 10:03:45', '1991-01-27 12:22:12');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '1990-09-23 00:51:54', '2008-07-16 11:05:23', '1990-12-04 01:04:44');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1977-12-29 02:23:31', '2018-10-02 21:25:45', '1989-09-07 08:38:41');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1995-06-09 16:54:04', '2009-02-13 05:04:46', '2001-04-23 15:26:48');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1999-02-13 03:06:10', '1992-09-13 03:29:39', '2016-06-26 15:23:50');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '1987-06-03 07:56:28', '1999-10-21 14:16:51', '1975-04-28 12:48:16');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1989-12-14 13:39:40', '1981-12-23 08:57:23', '1971-10-09 13:39:26');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1998-09-21 18:25:33', '1984-12-10 00:19:53', '2000-06-07 02:42:27');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '1970-06-26 11:07:28', '2012-04-23 19:44:42', '2004-12-31 01:02:50');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '1988-05-23 07:34:33', '1974-05-19 11:26:06', '1988-06-24 20:09:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '1993-02-01 03:28:51', '1997-01-07 22:34:29', '2017-11-09 22:37:19');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1970-11-03 18:59:30', '1998-05-28 09:00:56', '1989-08-26 09:32:26');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '1974-10-23 14:24:57', '1978-06-02 22:26:42', '2011-05-22 03:07:27');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '2013-01-10 12:09:31', '1986-03-24 14:06:10', '1984-06-02 04:12:23');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '2008-09-04 23:39:44', '1974-11-08 21:46:20', '1996-06-06 05:02:29');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '2001-03-27 12:39:24', '1996-09-01 15:17:26', '1986-02-26 01:44:08');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1981-04-28 23:27:42', '1995-04-19 17:06:15', '1985-12-19 19:45:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '2005-07-23 10:49:25', '1989-12-10 21:53:47', '2001-07-24 13:31:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1994-10-11 19:31:01', '2020-04-07 21:46:46', '2016-02-13 03:00:25');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '1970-03-06 01:12:08', '1981-11-11 22:29:15', '1992-10-02 19:45:10');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1984-06-07 17:34:36', '2018-11-02 11:26:59', '2009-06-17 14:07:54');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '2009-06-02 16:09:04', '2015-10-03 16:52:45', '1985-12-30 11:24:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1986-11-16 17:55:44', '1992-04-07 00:33:51', '1993-10-24 12:27:31');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '2013-05-19 15:32:06', '2006-05-29 15:39:03', '1974-09-14 10:51:41');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1981-08-01 19:05:22', '2004-06-05 06:28:59', '1986-03-05 01:38:18');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '1976-08-13 13:22:43', '1974-01-22 07:59:16', '1992-01-07 13:42:21');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '1992-02-21 11:29:02', '1988-04-19 12:04:51', '1993-09-08 16:04:40');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '2016-02-04 10:59:03', '1984-11-23 23:31:42', '1971-08-11 09:01:36');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '1973-05-09 14:19:02', '1993-12-15 10:09:47', '2000-07-04 17:46:25');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '2008-05-11 21:25:30', '1975-03-11 18:32:29', '1973-12-23 17:38:29');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '2014-01-17 21:25:04', '1989-02-21 11:16:01', '2009-05-22 19:58:47');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '2009-07-27 22:30:04', '1980-03-18 12:45:51', '2001-04-25 04:38:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1991-01-05 12:17:18', '2009-10-05 22:27:13', '1986-02-22 06:58:19');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '2006-01-30 00:45:34', '2021-03-16 17:44:01', '1996-08-01 20:42:19');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '2005-08-30 00:14:55', '2020-05-13 10:38:18', '1970-11-04 18:26:01');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1984-10-19 14:04:05', '1980-01-20 12:51:04', '2003-08-24 01:47:35');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1994-06-30 13:48:06', '2015-02-16 15:59:20', '1996-03-11 20:34:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1996-10-26 03:09:57', '1971-07-15 01:30:05', '1975-03-11 22:21:41');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2015-10-08 19:59:38', '2009-05-20 16:34:46', '2004-09-26 22:21:32');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1974-02-01 19:55:34', '2015-02-26 12:40:51', '1994-10-15 03:11:25');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '2011-06-03 00:46:18', '1980-01-22 06:38:16', '1991-01-24 05:20:04');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '1973-09-01 01:00:13', '2003-04-16 02:21:16', '2001-01-16 17:37:06');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '2021-03-14 16:28:27', '1994-12-24 07:07:43', '2007-08-12 07:32:49');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1983-01-21 13:42:33', '1988-05-24 20:38:23', '1975-02-11 22:54:12');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '1973-08-23 17:41:09', '1996-10-21 20:27:51', '1991-09-04 02:34:11');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1975-12-18 19:26:06', '1970-11-15 00:16:59', '1971-03-19 11:54:52');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '1989-04-29 06:20:27', '1988-07-12 09:46:43', '1984-09-14 19:06:27');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1996-03-10 11:35:20', '1989-12-30 09:42:40', '2020-11-28 06:00:14');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1994-11-26 19:16:05', '1972-07-14 03:17:12', '1991-12-21 09:53:28');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1991-08-18 11:25:18', '1974-06-15 09:25:29', '1980-12-19 14:46:00');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '1990-05-16 18:24:25', '2008-09-01 17:13:33', '2008-03-23 05:39:47');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1982-09-03 05:24:52', '1996-05-08 01:21:18', '2001-08-02 12:23:55');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '1989-09-29 07:45:46', '1995-04-23 01:10:20', '2013-11-18 00:18:20');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1986-11-24 04:38:45', '2009-11-21 05:28:23', '2016-01-09 03:50:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '2003-10-17 16:46:23', '2001-08-19 01:56:02', '2015-11-24 15:58:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '1989-07-03 12:43:36', '1977-03-11 21:37:59', '1995-05-14 12:25:45');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '1977-09-14 07:08:36', '1981-08-28 21:08:25', '2009-05-11 11:15:44');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1970-11-01 15:20:13', '1970-09-24 14:54:50', '2020-06-19 21:57:02');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '1985-11-04 07:27:23', '1975-08-09 07:24:02', '1995-03-03 06:39:52');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1978-02-11 05:51:12', '1987-07-31 23:28:20', '2010-10-06 12:03:47');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1988-07-19 14:31:44', '2018-08-28 23:40:09', '2018-04-22 18:39:54');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '2018-12-30 01:40:30', '1995-10-10 07:09:22', '2015-04-29 02:23:44');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1972-11-11 17:43:03', '1979-09-28 15:32:46', '1984-05-25 01:58:15');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '1981-03-08 08:00:02', '2000-06-05 22:54:22', '1985-07-23 17:01:20');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1988-04-08 22:36:55', '1999-10-07 22:40:49', '2008-07-04 09:55:47');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1984-06-30 19:10:34', '1985-11-13 00:26:38', '1994-08-25 15:31:09');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '2008-05-10 12:13:15', '1975-07-16 12:48:34', '1991-06-24 08:37:03');
INSERT INTO `likes_media` (`user_id`, `media_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1978-08-02 05:04:40', '1987-08-28 14:46:49', '1992-10-16 22:52:52');


#
# TABLE STRUCTURE FOR: likes_media_statuses
#

DROP TABLE IF EXISTS `likes_media_statuses`;

CREATE TABLE `likes_media_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы лайков медиа';

INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2001-06-25 12:24:26', '1970-12-14 19:10:44');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2021-02-01 00:46:36', '2001-08-18 00:24:16');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1977-10-11 16:59:49', '1991-12-21 16:04:29');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1972-08-17 10:57:35', '2010-02-21 15:37:45');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1970-06-24 03:34:50', '1990-09-05 06:46:46');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1999-09-01 08:37:14', '1972-03-24 15:05:52');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (7, 7, 7, '2006-07-18 00:48:21', '1998-03-06 05:15:43');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (8, 8, 8, '1984-08-17 10:04:04', '1972-02-03 08:12:46');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (9, 9, 9, '2013-08-15 03:46:01', '2018-01-30 10:39:31');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (10, 10, 10, '2003-03-03 15:11:13', '2001-06-26 09:19:37');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (11, 11, 11, '2013-09-20 18:40:27', '2014-12-23 08:01:31');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1988-08-03 05:25:20', '1998-01-05 16:18:13');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1998-10-21 12:31:40', '1997-10-31 04:50:01');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (14, 14, 14, '2003-07-03 16:31:10', '1998-10-27 10:30:56');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2008-08-19 09:28:39', '1978-10-15 19:28:18');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (16, 16, 16, '1986-09-09 13:45:19', '1974-06-05 02:17:02');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (17, 17, 17, '2004-09-23 15:44:10', '1998-02-21 04:24:06');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (18, 18, 18, '2000-08-28 18:57:11', '2014-10-08 03:25:23');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (19, 19, 19, '2018-11-17 19:11:45', '1989-07-18 13:57:37');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (20, 20, 20, '1974-08-10 01:19:19', '1991-05-04 14:04:31');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (21, 21, 21, '1982-01-04 20:12:22', '1972-08-30 23:47:55');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1987-05-19 11:36:20', '1988-01-16 12:50:26');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1976-11-02 08:55:34', '1994-08-12 03:28:26');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (24, 24, 24, '1992-10-23 10:01:09', '1983-04-30 03:15:32');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (25, 25, 25, '2008-03-30 11:48:55', '2011-05-27 10:15:35');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (26, 26, 26, '2016-04-18 00:59:16', '1987-01-08 03:54:37');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (27, 27, 27, '2012-05-16 00:00:59', '1988-01-08 22:23:41');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1994-12-10 03:47:44', '1971-03-14 17:55:32');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (29, 29, 29, '1982-11-30 03:55:21', '2006-07-11 14:42:56');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1997-08-18 17:39:54', '1989-08-07 01:02:58');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (31, 31, 31, '2011-05-31 11:54:33', '1986-11-19 16:59:46');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1993-09-01 11:18:46', '2004-02-24 13:04:20');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1997-04-07 18:33:57', '1985-05-26 19:37:20');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (34, 34, 34, '2008-05-16 12:23:04', '1990-02-01 18:22:17');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1979-10-26 22:37:17', '1987-02-27 05:59:50');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1983-09-01 17:42:55', '2007-10-24 13:02:20');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1990-07-01 21:46:14', '1977-06-30 00:35:45');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (38, 38, 38, '1988-12-19 15:38:52', '1986-12-27 08:36:35');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (39, 39, 39, '2008-08-01 16:00:37', '1971-07-21 20:08:07');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (40, 40, 40, '2014-09-08 06:02:49', '2013-10-07 16:45:10');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (41, 41, 41, '2002-03-25 08:24:20', '1989-08-24 05:09:43');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (42, 42, 42, '2011-12-25 05:40:45', '2010-04-19 11:30:14');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (43, 43, 43, '2016-02-17 22:00:14', '1987-12-30 03:31:24');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (44, 44, 44, '2016-11-30 01:12:02', '1983-07-26 19:37:58');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (45, 45, 45, '1971-09-20 23:59:02', '1992-04-22 13:34:12');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1997-05-29 21:22:49', '1977-01-28 05:27:15');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1988-11-26 03:59:36', '1992-08-26 23:30:46');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (48, 48, 48, '2008-09-13 09:28:35', '2006-06-18 07:23:00');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1984-09-28 22:08:50', '2005-01-19 12:14:07');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1983-03-05 20:20:04', '1970-07-13 00:11:12');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1976-04-05 17:37:18', '1989-11-23 17:27:03');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (52, 52, 52, '1980-05-21 11:27:32', '2000-06-06 16:25:20');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1984-01-25 17:53:42', '1994-12-29 18:36:06');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1992-06-25 16:53:59', '2005-05-03 21:13:38');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (55, 55, 55, '2001-10-30 14:57:27', '2001-03-26 06:22:40');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (56, 56, 56, '2002-09-08 07:59:02', '2009-12-06 21:47:55');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1991-11-01 00:03:15', '2019-09-10 05:39:10');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (58, 58, 58, '2013-10-14 21:04:58', '1987-05-23 20:52:04');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (59, 59, 59, '2015-03-04 12:00:32', '1989-09-13 20:05:36');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1993-01-17 05:16:04', '1973-05-20 00:58:47');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (61, 61, 61, '1972-07-12 16:33:13', '1993-03-30 03:50:13');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (62, 62, 62, '2001-06-16 10:33:22', '2013-03-23 23:09:25');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (63, 63, 63, '1992-12-11 07:36:01', '1995-01-15 02:15:59');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (64, 64, 64, '2002-04-11 19:59:23', '1985-01-09 14:55:42');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (65, 65, 65, '2012-05-20 21:32:20', '2018-02-08 23:53:00');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1972-11-07 01:10:27', '2005-09-04 07:37:24');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (67, 67, 67, '2018-10-07 00:28:56', '1996-08-03 10:08:01');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1972-04-12 17:27:04', '2006-09-02 17:56:52');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1970-10-01 23:17:10', '1975-02-09 13:35:12');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1974-03-20 16:51:09', '1995-08-18 17:15:44');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (71, 71, 71, '1990-11-27 17:00:57', '1985-08-08 20:55:03');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1991-01-08 14:41:59', '1983-08-14 16:26:18');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1974-07-02 20:12:23', '2017-10-23 07:19:48');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (74, 74, 74, '1979-04-11 21:15:10', '1978-12-22 06:24:06');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (75, 75, 75, '1981-03-21 23:52:14', '1980-09-15 14:57:20');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (76, 76, 76, '2003-06-04 09:49:51', '1975-05-04 21:53:32');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (77, 77, 77, '1986-11-10 18:58:14', '1984-12-28 15:15:28');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1990-10-07 10:01:55', '1984-09-06 19:04:06');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (79, 79, 79, '2003-01-15 18:16:22', '1999-06-17 03:09:09');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1999-01-11 08:43:40', '1981-10-03 02:48:17');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1989-09-28 18:17:02', '2011-10-27 00:11:36');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1970-09-18 09:47:58', '2009-07-03 04:49:04');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2008-08-07 01:13:19', '2005-06-26 20:11:11');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (84, 84, 84, '2021-01-18 04:05:20', '1976-08-16 20:25:00');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (85, 85, 85, '1984-03-25 01:17:48', '1993-10-19 17:29:18');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1974-09-24 16:47:49', '2000-06-29 02:22:14');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (87, 87, 87, '1975-06-20 09:09:14', '2017-10-05 19:14:18');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (88, 88, 88, '1985-10-18 05:25:48', '2005-09-27 00:12:37');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (89, 89, 89, '1973-08-19 15:23:28', '2013-09-11 18:55:27');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1975-06-01 06:41:50', '1971-10-04 23:22:27');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (91, 91, 91, '2006-07-30 13:31:36', '2006-06-30 14:39:35');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1980-09-02 11:30:57', '2007-04-03 01:23:03');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1986-05-18 21:53:50', '1998-05-10 16:51:35');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (94, 94, 94, '1995-05-30 09:27:59', '1989-12-22 13:44:33');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1991-10-11 15:18:27', '1980-01-28 08:18:31');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (96, 96, 96, '2018-05-10 03:35:32', '1970-10-09 08:31:49');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1984-09-18 09:24:21', '1986-07-21 10:28:35');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1993-01-11 22:43:52', '1977-12-13 10:31:39');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (99, 99, 99, '1974-04-22 17:50:50', '1983-06-11 16:58:54');
INSERT INTO `likes_media_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1984-06-25 02:04:32', '1975-09-30 03:21:05');


#
# TABLE STRUCTURE FOR: likes_messages
#

DROP TABLE IF EXISTS `likes_messages`;

CREATE TABLE `likes_messages` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора лайка',
  `message_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на сообщение',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) лайка',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления лайка',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`message_id`) COMMENT 'Составной первичный ключ',
  KEY `message_id` (`message_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `likes_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_messages_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`),
  CONSTRAINT `likes_messages_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `likes_messages_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков сообщений';

INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1982-05-11 13:55:15', '2006-08-26 09:50:49', '1975-02-15 07:09:54');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1990-03-03 13:19:47', '2000-12-08 10:22:42', '2018-03-18 10:25:06');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2013-01-21 21:33:44', '1976-05-05 17:40:41', '1991-03-22 21:03:27');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2021-03-30 23:35:11', '1998-01-03 05:25:35', '1977-09-18 03:56:06');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '2011-12-26 10:38:24', '1990-04-14 01:55:36', '2015-04-11 08:38:50');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1999-06-05 03:30:07', '1970-02-14 06:43:54', '2006-04-07 11:05:43');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '1984-07-07 06:18:32', '1993-05-12 19:58:08', '1983-06-08 16:29:21');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '2004-03-02 22:05:46', '2012-10-11 14:46:56', '1994-07-05 22:05:45');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '2008-10-17 18:01:46', '1979-08-06 04:40:42', '1992-09-16 03:10:07');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '1970-03-08 11:59:07', '1977-02-11 12:35:20', '2000-05-25 10:35:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '2020-03-05 03:43:44', '1980-11-30 23:21:02', '1995-07-13 14:37:04');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '2020-11-22 17:13:36', '1982-12-20 00:07:26', '1997-01-21 20:39:51');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '2018-07-03 12:21:48', '2017-05-05 13:55:21', '1990-08-19 09:11:12');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '1992-10-10 07:21:01', '2020-01-12 21:07:44', '1975-11-04 12:07:14');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '2011-01-24 04:43:25', '2015-05-08 19:45:11', '1977-07-26 08:13:00');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '1985-04-05 19:20:38', '2016-03-21 20:54:54', '2016-11-12 08:11:40');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1989-08-14 22:32:59', '2008-12-18 21:24:54', '1972-03-25 04:25:28');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '1987-12-30 05:45:19', '1979-08-10 04:15:22', '1999-10-15 12:22:31');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '2006-11-19 06:56:59', '2001-08-19 10:31:23', '1975-03-18 01:48:19');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '1973-05-06 20:51:43', '1990-09-04 09:18:02', '1970-05-16 09:08:19');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '2003-02-12 20:48:21', '1982-03-10 09:12:13', '1976-07-24 20:28:11');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1992-08-23 05:20:47', '2016-09-20 14:16:21', '1981-03-05 03:30:50');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1981-11-29 13:16:15', '2007-03-29 18:45:09', '1979-12-10 18:15:11');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '2017-11-15 22:23:30', '2004-12-14 15:12:15', '2012-07-05 17:31:59');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '1992-11-11 10:42:45', '1993-05-17 22:11:24', '1998-09-15 01:38:36');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '2002-02-17 21:19:13', '1995-05-03 11:58:14', '2019-12-12 16:41:36');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '2009-05-07 20:22:09', '1983-06-13 04:27:06', '1985-02-18 18:20:14');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1980-09-16 20:51:15', '1993-11-20 22:46:11', '1981-07-03 11:19:20');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '1991-10-18 13:27:45', '1973-04-13 10:29:16', '1987-10-13 07:10:00');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '2015-01-12 06:25:01', '2009-10-31 20:17:15', '1997-11-20 13:24:26');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '1978-07-20 13:03:23', '1994-03-24 07:57:48', '1995-07-11 04:53:18');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1972-06-04 16:25:12', '1971-06-10 05:46:25', '2002-02-14 14:39:35');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '2000-10-17 07:12:11', '2019-05-08 07:00:00', '1992-05-14 19:58:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '2006-04-15 12:07:13', '1978-07-26 18:22:14', '1974-04-17 05:49:07');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1973-09-22 16:52:36', '1991-11-07 11:55:53', '2000-10-30 17:51:20');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1991-03-14 05:07:39', '1992-02-12 00:53:34', '1986-05-21 23:00:53');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1994-03-28 23:17:58', '1984-05-12 07:33:05', '1984-12-09 18:48:43');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '2010-11-27 11:12:04', '2010-03-19 19:15:23', '1985-08-28 15:05:05');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1992-06-23 04:53:10', '1983-09-13 10:34:53', '2014-12-07 01:30:49');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1998-11-22 04:00:17', '2017-09-03 21:04:17', '1980-12-23 01:50:25');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '1980-10-12 15:28:44', '1980-06-14 21:20:14', '1998-11-10 05:11:20');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '2010-07-11 06:25:59', '2001-10-21 22:40:17', '2010-09-22 15:15:26');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '2010-04-20 22:09:57', '2003-07-23 21:05:28', '1998-12-07 11:07:41');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '2010-11-07 19:42:48', '2009-02-10 11:56:45', '2005-02-09 12:20:54');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '1973-05-05 19:07:14', '1984-08-01 08:29:41', '2000-12-30 03:05:31');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1981-05-05 18:13:10', '1984-01-05 05:49:18', '1973-09-11 14:22:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '2018-12-24 21:25:17', '1986-05-16 23:07:34', '2018-01-01 22:10:05');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '1972-03-30 20:37:02', '1979-08-15 08:24:11', '2008-02-17 19:21:09');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1985-05-30 22:01:23', '1990-03-15 16:06:50', '1991-03-08 15:57:27');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1991-03-11 09:43:45', '2019-02-03 19:54:13', '1998-12-31 01:08:48');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1972-08-10 16:24:48', '1974-02-17 13:13:15', '1985-10-14 20:43:15');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '2013-04-11 22:11:24', '1986-11-29 17:14:27', '2014-12-18 17:39:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '2005-07-23 23:22:09', '2014-12-09 21:10:57', '1998-02-11 03:28:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1995-03-07 22:19:45', '1983-06-05 13:48:34', '2018-04-22 22:03:00');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1987-05-31 19:01:49', '2012-05-12 19:11:47', '1975-05-30 16:06:18');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '2016-03-12 21:22:07', '1985-05-19 17:25:56', '1975-01-26 11:58:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '2017-06-05 10:45:55', '1996-09-04 07:36:14', '2010-01-23 15:20:53');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '2012-05-18 13:56:46', '2018-10-31 00:33:57', '2014-04-24 02:23:43');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '1989-08-29 15:12:29', '1996-10-26 23:23:02', '2008-01-16 09:19:55');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '2005-01-20 10:13:03', '2010-04-08 03:12:16', '1990-02-11 16:17:28');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '1992-01-23 21:05:18', '2006-03-09 16:08:11', '1993-02-09 12:09:13');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1991-03-17 01:22:15', '2018-05-09 10:22:10', '1988-09-28 22:35:46');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '2011-01-31 09:12:13', '1972-04-14 13:56:12', '1997-01-20 11:07:27');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1992-10-03 10:28:34', '1985-05-01 02:28:18', '1998-09-24 07:41:33');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '2003-05-26 10:54:56', '1992-12-07 04:54:34', '1985-03-14 08:25:57');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '2011-01-16 14:54:36', '1987-03-18 06:20:30', '1999-02-22 12:58:45');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1995-11-03 10:54:37', '2019-06-04 05:24:35', '2001-05-30 05:54:02');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1977-07-28 07:20:52', '2002-08-10 14:50:45', '1988-06-01 16:32:33');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1999-11-28 18:10:54', '2003-01-07 00:02:33', '1970-09-11 14:22:18');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1985-01-19 15:04:28', '2004-09-25 13:26:09', '1983-07-21 10:47:48');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '1974-01-29 04:57:54', '2015-06-26 03:09:09', '2011-10-17 15:39:34');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1990-03-10 06:40:16', '1978-08-03 14:08:25', '2000-08-02 23:48:17');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1978-07-15 11:07:45', '1979-11-04 07:11:36', '2011-10-30 14:32:44');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2007-02-22 07:30:32', '2014-01-05 11:31:18', '1993-02-03 01:34:28');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '2006-07-18 12:13:44', '2006-09-01 17:01:29', '1990-12-24 04:32:09');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1994-02-17 10:33:59', '1990-01-03 17:34:40', '1999-06-18 17:03:41');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '1986-01-03 07:24:48', '1996-04-12 16:46:12', '2013-03-19 15:28:56');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1994-03-10 22:46:32', '2003-03-02 16:27:18', '1979-12-08 10:25:25');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '2005-08-17 08:57:27', '2007-05-30 11:06:07', '1970-02-10 20:38:56');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '2003-03-08 02:15:42', '1993-12-28 15:37:37', '1995-09-25 02:13:15');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1994-12-18 19:21:50', '1982-05-30 17:52:05', '2002-01-09 21:40:59');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1979-01-17 05:55:23', '2000-03-09 08:05:09', '2002-08-19 14:01:59');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '1984-11-09 01:38:33', '2016-12-11 14:43:01', '1983-12-26 18:11:14');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1994-06-13 02:25:03', '1990-10-22 11:03:31', '1993-12-24 23:06:44');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '2000-02-04 04:21:06', '1999-05-19 13:52:04', '1988-12-26 06:30:20');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '2018-12-31 11:20:53', '2006-04-04 14:19:43', '2006-01-08 18:54:49');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '1974-02-24 03:42:08', '2006-02-28 19:52:14', '2020-03-13 08:32:53');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '2020-04-12 22:02:43', '2004-06-12 14:47:27', '1976-07-23 17:21:47');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '1987-07-01 19:51:02', '2009-12-11 22:26:22', '2004-09-13 19:04:24');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1987-12-18 09:16:18', '1991-10-15 00:33:32', '1991-06-06 21:14:54');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '1975-07-14 12:23:45', '1986-09-25 04:46:24', '1988-05-31 20:50:26');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '2008-11-15 19:29:42', '2006-06-23 13:14:00', '1994-07-06 20:43:38');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '2021-03-11 13:17:04', '2011-12-21 19:44:52', '2017-09-18 16:51:28');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '1997-06-06 05:04:30', '2008-04-24 01:11:51', '2011-01-07 22:58:55');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1977-11-12 22:31:30', '1991-02-16 23:13:09', '1987-10-15 22:03:23');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '2005-07-28 08:42:54', '1997-01-02 15:36:54', '2003-05-19 15:25:04');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '2005-12-10 07:12:59', '2007-02-03 15:55:38', '2001-09-10 14:43:32');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '2020-01-06 06:28:56', '2008-12-14 01:35:10', '2008-05-01 18:24:10');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '1983-12-10 23:24:30', '2008-01-22 08:00:16', '1980-07-19 05:58:39');
INSERT INTO `likes_messages` (`user_id`, `message_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1984-02-23 04:15:03', '1999-01-12 09:48:23', '1995-12-09 22:07:26');


#
# TABLE STRUCTURE FOR: likes_messages_statuses
#

DROP TABLE IF EXISTS `likes_messages_statuses`;

CREATE TABLE `likes_messages_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы лайков сообщений';

INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2008-09-09 13:32:25', '2000-02-08 08:13:25');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1978-07-15 04:58:13', '2004-01-13 18:09:06');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2007-02-13 07:15:23', '1971-02-12 07:15:44');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1973-10-14 22:14:55', '1989-09-16 01:17:26');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1998-02-12 18:48:13', '1974-10-18 09:51:28');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1992-05-24 19:48:22', '2017-12-18 22:44:47');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (7, 7, 7, '1992-11-26 15:55:21', '2005-03-04 10:50:27');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (8, 8, 8, '1989-07-07 22:20:14', '1991-08-09 14:37:49');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (9, 9, 9, '2020-07-19 22:56:06', '2013-08-17 19:39:49');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (10, 10, 10, '1995-11-22 10:56:56', '2020-11-14 12:45:46');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (11, 11, 11, '2005-10-19 04:34:19', '1976-02-16 01:45:02');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1980-06-05 08:51:34', '1984-02-05 09:55:46');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1977-06-30 11:36:27', '1982-05-13 07:05:33');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (14, 14, 14, '2019-08-21 02:16:31', '1976-11-04 16:04:55');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (15, 15, 15, '1974-01-08 05:47:28', '1972-02-12 02:52:16');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (16, 16, 16, '1993-01-17 14:47:21', '1992-02-22 05:54:33');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1980-07-28 22:48:47', '1978-08-26 21:28:40');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (18, 18, 18, '2003-08-11 12:00:53', '2018-10-27 20:42:01');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (19, 19, 19, '1970-06-10 13:18:22', '1977-09-22 23:15:17');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (20, 20, 20, '1974-07-11 10:53:24', '2006-09-23 11:37:53');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (21, 21, 21, '1974-06-18 14:19:35', '1983-09-14 15:15:37');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1979-08-14 05:19:53', '1977-07-28 13:41:14');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1975-03-17 06:31:06', '1994-08-04 16:17:01');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (24, 24, 24, '2003-07-18 22:46:52', '1993-02-24 15:40:34');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (25, 25, 25, '2019-01-18 22:15:06', '2013-01-02 12:52:28');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (26, 26, 26, '1993-03-07 07:22:36', '1998-05-22 10:30:58');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (27, 27, 27, '2017-08-02 01:20:39', '2020-11-03 22:17:11');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1998-11-06 11:12:48', '1982-02-02 12:01:24');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (29, 29, 29, '1979-12-09 14:57:36', '2013-07-15 17:20:08');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1982-01-27 12:31:49', '1992-03-10 20:26:25');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (31, 31, 31, '1989-12-09 18:13:38', '1976-08-27 01:47:16');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1988-08-15 18:46:24', '2014-10-08 14:50:35');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1972-03-25 13:42:50', '1975-06-11 12:20:56');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (34, 34, 34, '1980-05-24 03:01:56', '1974-12-31 05:51:24');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1989-01-11 12:00:49', '1986-07-31 19:02:36');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (36, 36, 36, '2010-06-29 18:05:36', '1971-07-19 10:26:49');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1980-01-17 01:40:06', '1985-11-10 19:53:30');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (38, 38, 38, '2003-12-31 06:54:05', '2012-03-05 09:09:50');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (39, 39, 39, '2015-03-19 08:03:55', '1974-05-19 04:03:14');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1992-01-10 07:48:16', '1986-01-04 08:03:23');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (41, 41, 41, '2013-06-08 23:34:36', '1983-08-07 00:44:04');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (42, 42, 42, '1991-11-20 15:05:18', '1977-05-21 01:49:51');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (43, 43, 43, '2012-03-16 22:30:41', '2003-09-17 01:53:01');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (44, 44, 44, '2013-06-26 03:24:05', '1982-06-16 15:27:27');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (45, 45, 45, '2017-05-08 21:48:09', '1986-09-02 02:22:01');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1983-08-09 04:25:43', '1973-10-22 23:30:27');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1970-03-22 21:28:45', '1970-10-16 12:19:50');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (48, 48, 48, '2020-09-13 11:19:03', '1983-12-24 04:38:41');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1982-08-29 21:03:35', '2003-09-17 10:33:22');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1990-05-12 15:13:02', '1980-08-23 05:33:43');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1973-02-08 11:42:38', '2002-07-16 19:39:09');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (52, 52, 52, '1977-08-05 02:21:27', '1984-04-25 22:52:00');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1993-02-16 16:41:40', '1985-07-28 09:15:06');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (54, 54, 54, '2011-05-22 15:31:32', '1992-07-07 00:20:36');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (55, 55, 55, '2009-04-20 05:42:51', '1995-07-12 11:56:59');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (56, 56, 56, '1988-03-29 16:03:23', '1992-02-11 07:31:23');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (57, 57, 57, '2005-04-26 16:12:30', '2012-10-16 03:19:44');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (58, 58, 58, '2017-03-03 03:42:09', '2006-11-22 19:46:44');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (59, 59, 59, '2008-04-11 00:52:37', '1995-08-27 12:35:16');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1983-08-31 00:45:38', '1992-07-26 12:10:11');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (61, 61, 61, '2011-08-03 08:38:21', '1980-04-12 04:54:08');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1981-04-23 10:46:30', '1993-11-23 01:56:08');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (63, 63, 63, '1972-04-22 21:14:13', '2005-03-01 14:39:28');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1986-11-02 13:19:21', '1994-09-13 10:21:21');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1996-06-09 23:45:15', '2020-02-14 03:19:41');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1999-05-25 00:03:26', '1983-11-02 20:22:36');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1976-03-27 13:27:04', '1995-11-18 07:31:38');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (68, 68, 68, '2008-10-29 17:12:31', '2017-12-23 20:10:34');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (69, 69, 69, '2002-02-10 19:00:01', '2017-11-19 00:28:53');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1999-02-02 09:42:51', '1975-09-03 14:17:29');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2006-02-13 09:13:40', '2001-12-20 09:41:04');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1973-12-03 10:31:28', '1979-05-28 01:10:17');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1990-11-23 03:17:15', '2014-09-17 03:09:52');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2008-01-26 01:14:48', '2013-03-21 21:55:55');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (75, 75, 75, '2005-04-28 02:29:29', '1991-04-07 04:35:44');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1992-04-15 21:53:13', '2004-04-30 19:54:32');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (77, 77, 77, '1982-11-17 18:40:10', '1972-08-23 00:59:00');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (78, 78, 78, '1989-05-20 16:37:19', '2007-04-08 07:20:58');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (79, 79, 79, '2007-10-06 06:19:26', '2002-02-09 13:32:41');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1981-01-13 13:50:47', '1985-06-12 13:22:14');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1976-01-23 02:28:54', '1990-03-13 23:34:33');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1987-09-05 17:39:03', '1975-02-01 11:37:51');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2015-03-09 02:45:04', '1977-10-08 18:54:20');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1995-09-21 18:48:28', '1972-03-03 11:11:08');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (85, 85, 85, '2007-01-11 03:43:33', '1997-06-20 04:57:11');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (86, 86, 86, '2001-03-26 01:29:14', '1994-11-05 19:58:47');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (87, 87, 87, '2010-05-19 14:23:49', '2001-12-28 11:19:33');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (88, 88, 88, '1991-11-21 22:59:59', '1977-11-02 03:04:16');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (89, 89, 89, '2012-12-30 07:01:17', '1978-07-21 10:38:34');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1975-08-21 09:56:07', '1994-08-15 04:38:39');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (91, 91, 91, '2006-09-20 20:35:33', '1996-08-28 07:38:31');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1989-06-15 09:04:59', '2013-02-09 04:39:34');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (93, 93, 93, '2000-08-14 14:03:38', '2006-10-18 14:58:19');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (94, 94, 94, '1981-01-25 04:33:41', '2002-10-25 02:22:32');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1970-09-30 21:19:06', '1981-02-28 19:18:12');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (96, 96, 96, '1998-12-27 13:11:48', '1979-11-04 06:15:30');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1983-06-25 21:38:50', '2004-07-06 18:11:18');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1971-03-04 03:48:40', '1980-09-05 23:49:59');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (99, 99, 99, '2004-11-11 16:02:23', '2008-12-16 22:13:24');
INSERT INTO `likes_messages_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1973-12-20 00:13:15', '2001-01-29 15:40:49');


#
# TABLE STRUCTURE FOR: likes_users
#

DROP TABLE IF EXISTS `likes_users`;

CREATE TABLE `likes_users` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора лайка',
  `likes_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя лайка',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) лайка',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления лайка',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`likes_id`) COMMENT 'Составной первичный ключ',
  KEY `likes_id` (`likes_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `likes_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_users_ibfk_2` FOREIGN KEY (`likes_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_users_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `likes_users_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица лайков пользователей';

INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1998-11-15 13:28:56', '1983-12-16 05:13:08', '2005-12-13 03:23:41');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2017-11-07 21:36:10', '2020-08-11 08:38:56', '1988-04-03 11:28:18');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2001-08-15 22:58:11', '2008-12-17 00:35:44', '2015-02-03 06:48:05');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '1985-06-02 12:26:17', '1979-03-24 04:54:44', '1998-10-13 10:38:09');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1996-12-08 20:21:03', '1996-03-15 14:34:02', '1977-04-11 12:46:16');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (6, 6, 6, '2016-05-20 04:20:59', '2016-11-22 16:50:18', '1998-10-12 21:37:34');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (7, 7, 7, '2010-05-05 18:08:01', '1997-03-29 05:59:26', '1993-01-12 17:00:25');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (8, 8, 8, '2011-08-31 05:13:08', '1979-03-08 23:50:20', '2011-07-02 01:28:03');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (9, 9, 9, '1977-04-06 16:44:50', '2008-02-20 06:22:29', '1987-11-24 03:51:44');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (10, 10, 10, '2007-12-07 08:12:18', '2008-04-23 16:48:21', '1977-03-31 08:16:45');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (11, 11, 11, '1980-04-20 23:03:04', '2002-08-29 05:17:01', '2007-11-22 18:46:12');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1991-06-21 17:37:06', '1979-10-14 08:02:47', '2006-07-15 20:54:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (13, 13, 13, '1986-03-31 05:06:45', '2006-01-02 03:35:07', '1986-05-17 14:24:32');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (14, 14, 14, '1971-12-28 01:24:09', '1979-11-20 17:00:39', '2005-04-20 20:47:14');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (15, 15, 15, '1993-08-25 23:22:12', '1984-06-04 10:46:26', '1988-05-05 22:51:58');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (16, 16, 16, '2015-09-04 18:24:08', '2013-05-13 22:11:20', '1975-05-03 02:30:42');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1997-03-07 07:54:53', '2012-02-02 01:17:22', '1996-04-20 11:58:11');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (18, 18, 18, '1990-06-02 20:05:54', '2018-07-01 12:14:04', '1986-04-22 12:51:55');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (19, 19, 19, '1988-05-16 08:04:35', '2003-05-02 11:34:51', '1995-08-13 04:22:48');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (20, 20, 20, '2020-11-23 16:05:58', '1973-06-17 21:43:08', '1985-01-13 21:27:18');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (21, 21, 21, '2013-03-29 00:52:53', '2013-06-06 15:12:54', '2002-01-30 14:11:19');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (22, 22, 22, '1980-12-13 17:56:46', '1977-10-22 17:36:36', '1987-04-22 06:41:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (23, 23, 23, '1976-08-29 15:41:22', '2018-01-04 10:34:25', '1978-03-13 20:29:29');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (24, 24, 24, '1986-08-25 15:31:41', '2010-08-23 21:14:33', '1993-05-06 16:02:52');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (25, 25, 25, '1978-08-22 00:33:53', '1982-02-21 02:21:25', '1984-01-17 02:45:39');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (26, 26, 26, '1991-05-09 03:27:42', '1970-02-16 00:48:49', '1992-06-05 22:41:06');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1970-08-17 18:07:40', '2002-03-14 17:01:58', '1987-11-19 12:35:53');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (28, 28, 28, '1986-02-07 04:36:22', '2011-03-20 17:38:17', '1976-05-28 15:00:28');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (29, 29, 29, '2002-01-23 18:16:19', '1987-05-15 17:47:23', '1991-08-29 02:59:31');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1999-03-02 09:40:01', '1980-03-25 02:30:19', '2002-12-29 04:43:20');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (31, 31, 31, '1995-01-02 04:13:39', '1993-10-07 09:46:18', '2012-09-20 09:31:37');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (32, 32, 32, '2004-04-27 06:01:10', '1971-03-16 02:22:41', '2020-04-25 08:59:40');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (33, 33, 33, '2002-06-04 06:06:42', '1979-03-14 10:46:03', '2000-01-30 12:24:17');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (34, 34, 34, '1983-11-13 02:09:50', '1979-07-02 19:48:19', '1996-12-20 06:25:08');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1996-03-15 12:51:54', '2002-06-03 03:47:11', '1971-01-01 23:52:52');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (36, 36, 36, '2001-03-06 19:56:49', '2013-08-23 17:04:22', '1996-11-02 17:40:06');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (37, 37, 37, '1989-06-14 11:09:18', '1997-06-19 11:43:01', '1979-05-31 17:09:24');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (38, 38, 38, '1996-04-13 15:33:00', '1982-02-07 09:37:37', '1979-07-04 13:03:21');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1981-12-03 09:50:33', '1978-07-05 06:44:29', '1974-09-09 10:52:28');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (40, 40, 40, '2006-07-17 22:07:57', '2011-10-21 00:52:03', '1976-08-08 07:05:13');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (41, 41, 41, '1992-01-27 16:53:23', '1970-04-07 08:01:22', '2008-11-16 15:58:04');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (42, 42, 42, '1984-09-05 08:57:01', '1972-11-24 01:50:46', '2006-09-18 08:17:33');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (43, 43, 43, '1987-04-30 19:21:45', '2003-06-03 22:37:53', '1996-06-28 10:36:48');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1986-09-15 03:20:30', '1976-02-17 20:05:41', '1995-03-06 17:06:38');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (45, 45, 45, '2013-03-31 10:05:06', '2009-07-16 16:00:25', '2004-06-13 05:53:58');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (46, 46, 46, '2008-01-17 11:54:10', '1977-04-27 00:50:37', '1997-06-12 00:14:23');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (47, 47, 47, '2012-09-29 10:15:34', '2010-08-14 09:09:02', '2011-06-21 11:31:38');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (48, 48, 48, '2020-05-14 11:20:40', '1984-10-29 11:08:49', '2017-01-30 15:05:55');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (49, 49, 49, '1977-09-20 20:48:25', '2004-09-18 00:02:26', '2015-05-06 08:21:51');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1991-09-15 06:43:03', '2005-05-24 08:47:40', '1978-07-01 01:52:02');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1991-10-09 09:20:54', '1996-10-04 19:41:59', '2010-09-05 20:05:39');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (52, 52, 52, '2012-04-17 15:21:29', '1999-02-04 08:22:45', '1987-03-10 13:58:51');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1985-02-01 14:40:54', '1995-08-30 02:06:07', '2012-05-25 17:38:17');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1984-10-14 13:05:36', '2007-05-08 02:15:32', '1987-01-04 15:46:58');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1973-09-07 03:15:50', '1973-02-19 19:12:15', '1998-01-19 15:00:24');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (56, 56, 56, '2020-11-19 00:55:39', '2008-08-21 16:05:56', '1998-10-31 02:47:56');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (57, 57, 57, '2012-02-09 22:25:19', '1982-03-15 14:51:32', '1981-08-12 10:45:04');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (58, 58, 58, '1986-10-04 22:18:28', '2005-12-03 19:14:24', '1980-10-19 07:17:27');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (59, 59, 59, '2003-06-20 15:27:11', '2010-09-27 13:04:34', '1985-06-10 22:10:48');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1971-12-21 05:45:09', '1991-05-18 23:05:43', '1972-09-28 06:10:43');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (61, 61, 61, '1986-07-08 07:04:59', '1996-01-21 08:20:13', '2005-06-23 17:42:09');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1996-03-01 00:33:57', '1970-11-18 17:36:10', '1983-12-13 11:53:21');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (63, 63, 63, '1997-02-04 20:06:01', '2010-05-23 01:26:18', '2011-03-03 05:01:11');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1985-09-28 17:50:06', '2016-11-29 04:01:34', '1981-04-07 22:45:53');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (65, 65, 65, '2000-09-09 01:03:10', '1992-08-19 05:22:57', '1993-02-04 15:27:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (66, 66, 66, '2007-03-22 23:06:50', '1988-08-21 06:02:08', '2004-07-02 01:55:41');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1985-05-01 00:39:38', '1989-04-14 19:22:28', '2000-06-07 16:16:50');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1991-09-13 21:15:39', '1988-01-05 19:24:07', '1976-05-01 05:51:29');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (69, 69, 69, '2003-01-27 07:51:53', '2003-07-22 09:50:55', '1984-08-08 00:17:22');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (70, 70, 70, '1974-07-11 09:11:49', '2011-04-24 00:53:58', '1972-01-16 12:41:16');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2014-04-10 00:11:57', '1992-08-06 12:15:22', '1989-08-13 08:24:14');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1980-08-16 17:08:36', '1972-09-23 07:03:08', '1991-08-28 12:54:53');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1989-07-01 16:30:42', '1981-03-31 20:26:51', '2006-08-24 16:37:07');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2016-04-30 04:31:49', '2001-02-11 08:51:42', '1983-03-22 01:49:41');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (75, 75, 75, '2005-01-29 03:57:29', '1982-03-25 23:24:30', '1997-09-24 13:56:13');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (76, 76, 76, '1972-04-19 19:14:15', '2010-10-18 03:11:40', '1973-01-21 10:51:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (77, 77, 77, '2001-02-20 19:16:42', '2000-12-06 09:05:55', '1986-01-19 04:05:22');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (78, 78, 78, '2010-01-07 13:09:24', '2006-10-14 11:31:17', '1996-09-11 20:40:40');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (79, 79, 79, '1972-07-12 20:20:10', '1970-10-12 02:56:10', '2000-08-28 18:58:31');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1990-08-09 21:56:23', '1994-11-17 18:26:55', '1990-07-05 12:08:45');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (81, 81, 81, '2019-09-24 05:48:11', '2009-04-03 09:43:16', '2005-01-26 05:14:06');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (82, 82, 82, '2008-09-20 05:23:56', '2011-07-17 10:14:06', '1986-01-16 11:24:11');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (83, 83, 83, '2005-02-08 16:42:09', '1981-02-23 04:55:45', '2011-08-12 01:00:42');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1977-04-02 23:10:11', '1973-02-10 19:56:33', '1980-08-15 05:53:50');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (85, 85, 85, '2015-01-06 02:19:38', '1998-07-08 04:34:29', '1988-02-29 07:37:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1976-01-14 07:28:36', '2016-06-15 18:01:28', '1988-02-24 12:55:04');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (87, 87, 87, '1999-01-22 02:55:39', '1992-02-06 20:11:26', '1990-01-04 16:31:21');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (88, 88, 88, '2020-02-24 07:16:51', '2006-09-13 22:28:21', '2015-07-28 03:36:17');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (89, 89, 89, '2002-09-29 02:57:54', '1978-10-25 22:37:22', '2018-10-14 11:32:09');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (90, 90, 90, '1975-11-24 20:15:21', '2008-09-05 13:55:55', '1972-08-06 09:40:29');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (91, 91, 91, '2005-03-12 12:39:35', '1987-08-04 10:02:27', '2002-06-20 22:45:18');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1996-11-18 23:28:33', '2003-11-12 01:47:33', '1997-09-29 12:30:49');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1998-05-20 02:32:04', '2017-08-26 15:54:40', '1982-06-10 02:05:43');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (94, 94, 94, '2012-10-19 18:01:27', '2016-10-07 14:38:23', '1972-09-05 23:34:00');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1970-01-31 21:02:54', '2005-07-01 09:12:50', '2010-04-27 14:13:12');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (96, 96, 96, '1987-08-26 15:30:01', '1995-03-22 10:39:38', '1991-12-24 13:17:42');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (97, 97, 97, '1995-10-23 10:13:53', '2010-01-16 16:28:20', '1997-08-23 16:52:27');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1993-09-04 20:57:20', '2012-01-27 07:43:52', '1983-02-05 17:25:21');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (99, 99, 99, '2016-07-05 07:15:50', '2016-02-02 06:05:44', '1989-03-04 13:42:15');
INSERT INTO `likes_users` (`user_id`, `likes_id`, `status_id`, `requested_at`, `created_at`, `updated_at`) VALUES (100, 100, 100, '1982-05-11 18:55:45', '2008-04-20 15:10:00', '2015-03-21 08:08:50');


#
# TABLE STRUCTURE FOR: likes_users_statuses
#

DROP TABLE IF EXISTS `likes_users_statuses`;

CREATE TABLE `likes_users_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы лайков пользователей';

INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2017-02-25 07:06:46', '1972-03-29 14:17:48');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1994-12-29 13:17:00', '1971-06-06 09:25:18');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2003-12-05 18:50:43', '1975-06-27 12:26:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2003-05-06 10:10:07', '1976-02-10 12:37:10');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1988-06-16 09:49:51', '1971-12-17 21:30:45');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (6, 6, 6, '1973-09-30 18:54:44', '2017-10-17 06:29:45');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (7, 7, 7, '1997-07-08 10:45:31', '2018-01-31 01:21:01');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (8, 8, 8, '2019-08-10 12:47:34', '2014-10-29 20:23:32');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (9, 9, 9, '1991-01-25 21:55:20', '1973-03-12 06:49:51');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (10, 10, 10, '1982-06-26 10:48:49', '1979-03-30 18:49:44');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (11, 11, 11, '1981-09-20 14:05:37', '2020-01-25 22:34:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (12, 12, 12, '1972-07-09 10:39:33', '1977-02-21 06:47:06');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (13, 13, 13, '2000-03-15 07:00:58', '2012-08-17 18:38:15');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (14, 14, 14, '1970-02-19 16:53:21', '2000-04-10 06:06:43');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (15, 15, 15, '1995-12-11 23:40:45', '2013-04-13 04:33:31');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (16, 16, 16, '1998-06-20 23:48:29', '1987-02-21 07:42:11');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (17, 17, 17, '1989-10-13 23:17:46', '1994-12-11 07:24:39');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (18, 18, 18, '1981-07-29 10:46:01', '1970-08-01 06:47:55');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (19, 19, 19, '1985-08-15 15:21:49', '1986-03-08 04:31:26');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (20, 20, 20, '1998-10-03 09:26:23', '2002-02-09 21:06:57');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (21, 21, 21, '2005-05-18 23:30:16', '1996-05-09 11:17:41');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (22, 22, 22, '2005-07-20 12:12:14', '1989-10-25 20:37:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (23, 23, 23, '2020-03-01 11:57:35', '2000-04-17 05:21:09');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (24, 24, 24, '2009-07-21 10:38:53', '1981-10-02 20:31:19');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (25, 25, 25, '2008-11-16 11:14:52', '1989-02-06 19:50:40');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (26, 26, 26, '2000-11-25 15:08:46', '1991-05-16 09:05:48');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (27, 27, 27, '1978-04-22 14:39:28', '1975-11-11 16:50:01');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (28, 28, 28, '2016-07-29 20:09:21', '1990-05-22 19:04:01');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (29, 29, 29, '2004-10-22 15:43:06', '2014-07-18 03:58:44');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (30, 30, 30, '1999-12-09 17:21:52', '2005-05-18 08:53:34');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (31, 31, 31, '2007-11-06 17:37:42', '1993-01-26 21:57:06');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (32, 32, 32, '1971-09-12 12:48:44', '2020-10-29 05:42:53');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (33, 33, 33, '1971-03-29 21:58:08', '1972-10-14 21:21:44');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (34, 34, 34, '1978-03-18 10:15:06', '1988-08-16 04:16:03');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (35, 35, 35, '1997-10-02 03:02:44', '2004-11-26 01:29:19');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (36, 36, 36, '1991-06-11 09:50:42', '2014-05-28 20:57:38');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (37, 37, 37, '2008-04-26 12:41:17', '2018-04-30 07:48:55');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (38, 38, 38, '1987-10-01 01:53:34', '1996-09-11 15:07:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (39, 39, 39, '1985-09-08 13:05:17', '1976-02-09 22:19:48');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (40, 40, 40, '1987-06-22 02:58:10', '2014-06-18 02:17:46');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (41, 41, 41, '2019-02-02 15:23:48', '2015-06-18 08:44:07');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (42, 42, 42, '1975-09-06 02:35:22', '2005-02-08 14:24:48');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (43, 43, 43, '2009-05-26 02:49:58', '2004-07-05 13:22:15');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (44, 44, 44, '1994-08-29 18:41:52', '2013-11-04 20:24:36');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (45, 45, 45, '1976-03-18 12:03:44', '1985-06-19 08:27:32');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (46, 46, 46, '1986-11-02 07:58:55', '1988-03-04 05:46:50');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (47, 47, 47, '1981-03-30 17:01:10', '2001-08-25 02:32:37');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (48, 48, 48, '2006-11-28 05:08:18', '2014-12-03 14:10:23');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (49, 49, 49, '2007-09-20 20:26:53', '1978-10-25 09:15:59');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (50, 50, 50, '1973-09-21 02:01:28', '1974-10-02 18:53:33');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (51, 51, 51, '1970-04-13 11:03:57', '1979-11-07 07:50:59');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (52, 52, 52, '2008-11-16 07:04:36', '2016-07-10 16:48:06');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (53, 53, 53, '1991-04-18 05:54:21', '1991-07-14 06:21:54');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (54, 54, 54, '1991-02-20 15:22:29', '1978-11-30 23:10:19');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (55, 55, 55, '1970-12-19 18:44:44', '1971-02-26 02:44:10');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (56, 56, 56, '1999-04-02 00:39:32', '2007-02-05 08:58:22');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (57, 57, 57, '1974-04-17 05:12:27', '1981-05-07 07:25:02');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (58, 58, 58, '1986-09-11 17:31:14', '2016-06-29 07:45:25');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (59, 59, 59, '2009-06-21 11:44:07', '2016-03-16 01:25:06');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (60, 60, 60, '1982-10-13 07:51:24', '1990-06-02 20:02:28');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (61, 61, 61, '2017-11-22 04:33:10', '1981-09-30 15:03:47');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (62, 62, 62, '1973-03-21 03:10:21', '1997-06-22 14:29:41');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (63, 63, 63, '1994-07-28 23:55:15', '1995-11-28 16:10:35');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (64, 64, 64, '1974-07-21 13:03:35', '2010-09-10 20:39:23');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (65, 65, 65, '1999-09-05 16:59:14', '1971-02-16 06:36:35');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (66, 66, 66, '1993-01-09 01:29:12', '2013-10-23 22:02:00');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (67, 67, 67, '1994-11-07 04:07:29', '2016-04-27 10:59:02');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (68, 68, 68, '1974-05-14 11:30:48', '2001-09-01 07:08:08');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (69, 69, 69, '1992-10-12 23:59:14', '1983-02-17 11:59:55');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (70, 70, 70, '2006-01-26 15:54:14', '1975-09-06 19:26:24');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (71, 71, 71, '2006-07-03 09:29:57', '2001-05-19 12:09:51');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (72, 72, 72, '1985-01-03 08:53:30', '2015-04-16 08:44:55');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (73, 73, 73, '1994-02-21 04:59:24', '2015-01-09 07:53:13');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (74, 74, 74, '2006-08-14 14:20:28', '1992-09-22 15:26:17');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (75, 75, 75, '2011-09-23 13:01:40', '2005-10-08 21:29:01');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (76, 76, 76, '2001-02-24 13:14:25', '1974-12-27 19:42:25');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (77, 77, 77, '2006-05-16 09:26:39', '1977-02-06 17:11:44');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (78, 78, 78, '2020-12-04 18:58:21', '2019-10-16 01:53:11');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (79, 79, 79, '1991-09-23 10:00:12', '2006-02-09 09:58:17');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (80, 80, 80, '1979-01-03 19:24:08', '1988-03-06 15:12:57');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (81, 81, 81, '1986-02-08 17:17:30', '2013-02-02 09:41:54');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (82, 82, 82, '1987-09-26 23:55:45', '1985-04-13 13:57:52');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (83, 83, 83, '1997-01-05 23:16:31', '2009-04-23 02:45:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (84, 84, 84, '1991-05-28 20:39:22', '1976-03-20 05:51:22');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (85, 85, 85, '2004-10-08 06:10:04', '2007-03-27 17:19:35');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (86, 86, 86, '1974-04-16 17:27:51', '2005-06-17 06:18:44');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (87, 87, 87, '2007-03-16 22:40:24', '1994-01-02 23:00:20');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (88, 88, 88, '2016-04-05 21:41:11', '2008-05-09 22:38:18');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (89, 89, 89, '2016-02-23 12:00:04', '1979-06-08 09:55:17');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (90, 90, 90, '2015-01-29 16:07:24', '2008-10-02 13:55:16');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (91, 91, 91, '2005-01-29 10:23:38', '1985-08-12 01:44:15');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (92, 92, 92, '1985-08-07 07:56:00', '2018-12-18 10:22:16');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (93, 93, 93, '1984-04-15 17:44:15', '1975-02-17 01:36:04');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (94, 94, 94, '1993-10-18 21:49:32', '2008-07-12 02:31:40');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (95, 95, 95, '1991-05-07 07:11:56', '1975-01-09 22:46:43');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (96, 96, 96, '2006-03-26 04:47:47', '1984-03-25 11:09:12');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (97, 97, 97, '2014-04-17 10:53:07', '1996-04-12 02:40:05');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (98, 98, 98, '1996-08-24 05:56:22', '1971-09-13 19:22:19');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (99, 99, 99, '1974-01-10 09:55:38', '1972-05-19 15:48:51');
INSERT INTO `likes_users_statuses` (`id`, `from_user_id`, `to_user_id`, `created_at`, `updated_at`) VALUES (100, 100, 100, '2020-08-23 14:16:41', '1981-06-25 09:52:57');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'application/vnd.wqd', 1, NULL, 1, '2007-12-20 01:57:57', '1982-02-23 02:58:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'application/sbml+xml', 219, NULL, 2, '2007-11-06 03:18:32', '1992-09-09 15:31:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'application/vnd.ms-xpsdocument', 16, NULL, 3, '1984-08-10 22:25:13', '2002-09-05 04:12:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'application/vnd.ds-keypoint', 257, NULL, 4, '1970-02-13 15:13:19', '1974-04-09 13:58:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'application/x-msmetafile', 33, NULL, 5, '2000-02-21 21:42:16', '2006-09-25 06:47:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'application/x-gramps-xml', 585564, NULL, 6, '1997-08-07 15:42:57', '2000-06-12 13:14:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'application/lost+xml', 1, NULL, 7, '1989-04-26 06:41:58', '1976-05-22 08:10:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'text/sgml', 0, NULL, 8, '1978-09-19 20:56:29', '2007-02-26 10:18:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'text/n3', 451747321, NULL, 9, '1988-11-19 09:40:36', '2009-05-13 11:58:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'application/vnd.kinar', 46, NULL, 10, '1970-09-15 12:25:44', '1981-04-25 02:36:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'application/vnd.ms-excel.template.macroenabled.12', 9, NULL, 11, '1971-07-14 06:05:42', '1997-11-26 20:33:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'audio/x-wav', 38, NULL, 12, '1998-11-16 17:58:34', '1997-03-19 13:39:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'application/vnd.sailingtracker.track', 75691582, NULL, 13, '1996-11-14 20:13:32', '2008-05-20 00:04:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'application/vnd.ds-keypoint', 77, NULL, 14, '1991-02-20 11:59:59', '1997-05-26 12:30:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'image/vnd.net-fpx', 724, NULL, 15, '1994-11-28 08:07:41', '2004-05-26 15:19:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'application/vnd.ms-artgalry', 186792829, NULL, 16, '2010-09-12 01:40:39', '2008-06-23 15:12:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'application/vnd.ms-works', 41107, NULL, 17, '2001-01-07 09:01:21', '1998-09-07 01:45:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'application/octet-stream', 513877, NULL, 18, '2006-06-01 13:06:01', '1992-11-07 09:25:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'video/x-fli', 944, NULL, 19, '1989-12-06 08:56:15', '2001-06-05 20:23:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'image/jpeg', 45206, NULL, 20, '2017-06-29 14:38:40', '1979-11-04 18:56:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'application/vnd.ms-excel.sheet.binary.macroenabled.12', 5, NULL, 21, '1977-06-30 10:45:16', '1992-08-24 08:08:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'application/vnd.enliven', 396952794, NULL, 22, '1984-03-08 05:08:18', '1994-05-11 04:00:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'application/x-xz', 6858286, NULL, 23, '1992-08-20 07:08:09', '1996-11-24 07:21:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'application/x-debian-package', 93, NULL, 24, '2014-03-13 02:35:11', '2001-05-04 03:08:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'image/vnd.net-fpx', 38320, NULL, 25, '1989-08-09 20:24:30', '1997-04-09 06:22:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'application/x-xliff+xml', 61, NULL, 26, '1999-10-25 13:08:02', '2017-08-28 15:28:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'application/vnd.musician', 0, NULL, 27, '2002-12-02 22:15:08', '2012-11-03 13:16:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'application/vnd.ms-officetheme', 32, NULL, 28, '2016-08-05 22:00:13', '1974-10-19 06:33:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'application/xaml+xml', 2, NULL, 29, '2002-02-07 21:05:05', '1978-01-28 07:54:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'application/vnd.symbian.install', 522105811, NULL, 30, '1984-04-12 00:40:54', '1981-10-28 20:33:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'application/vnd.dece.ttml+xml', 99, NULL, 31, '1991-10-29 10:56:08', '2019-10-31 10:45:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'application/vnd.dece.ttml+xml', 53, NULL, 32, '2007-10-24 05:33:26', '1982-06-27 10:50:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'application/x-cpio', 128156, NULL, 33, '2009-04-17 09:13:26', '1983-01-26 10:42:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'text/x-vcalendar', 533, NULL, 34, '1990-05-19 18:43:51', '1984-08-20 04:59:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'application/pls+xml', 657, NULL, 35, '2012-01-14 08:30:20', '1996-07-13 00:13:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'application/x-zmachine', 3, NULL, 36, '1993-09-14 01:48:43', '1998-03-18 14:17:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'application/vnd.wap.wmlc', 9082, NULL, 37, '2016-06-25 07:20:06', '2018-07-26 12:39:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'application/vnd.wap.wmlc', 0, NULL, 38, '2014-05-01 20:30:31', '1988-08-13 19:41:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'video/x-mng', 294, NULL, 39, '2005-03-04 05:59:14', '1972-04-30 18:12:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'audio/x-aac', 265, NULL, 40, '2011-12-29 08:22:25', '1993-04-27 16:11:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'application/vnd.flographit', 877983458, NULL, 41, '2011-04-11 05:01:36', '2010-07-20 04:26:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'application/vnd.wqd', 78536, NULL, 42, '1995-11-25 20:57:38', '1984-05-28 00:10:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'audio/x-mpegurl', 11007, NULL, 43, '1991-02-02 04:04:26', '1981-01-14 02:37:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'application/vnd.kenameaapp', 362589, NULL, 44, '2017-03-31 11:15:44', '2020-06-25 02:03:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'application/vnd.kde.kspread', 9574, NULL, 45, '2001-08-14 09:32:49', '1986-06-07 13:08:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'audio/mpeg', 33246, NULL, 46, '1981-02-07 23:49:45', '1999-12-19 01:51:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'application/vnd.ms-excel', 0, NULL, 47, '1985-03-17 14:20:15', '2013-02-10 00:28:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'application/vnd.openxmlformats-officedocument.presentationml.slide', 351, NULL, 48, '1984-11-16 13:47:15', '2019-04-05 22:28:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'video/webm', 499531, NULL, 49, '2017-01-16 08:26:32', '2012-11-15 21:21:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'application/xspf+xml', 77, NULL, 50, '1983-06-10 00:50:42', '1970-04-05 09:16:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'video/x-matroska', 65, NULL, 51, '2003-08-06 06:06:51', '2012-01-22 22:31:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'application/xcap-diff+xml', 9380, NULL, 52, '1982-06-17 05:54:21', '1994-11-03 21:07:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'application/x-freearc', 5, NULL, 53, '2011-07-28 01:53:52', '2017-02-20 00:53:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'application/vnd.shana.informed.interchange', 0, NULL, 54, '1984-06-21 05:09:01', '1982-08-23 00:22:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'image/vnd.fastbidsheet', 57, NULL, 55, '1982-01-17 01:37:03', '2018-12-13 00:43:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'application/vnd.wordperfect', 45, NULL, 56, '2000-03-29 12:36:00', '2005-04-21 16:54:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'text/vnd.wap.wmlscript', 4, NULL, 57, '1996-08-06 12:56:01', '1986-09-24 05:47:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'application/vnd.ms-artgalry', 1, NULL, 58, '1993-09-22 00:51:01', '1984-02-23 02:55:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'application/vnd.enliven', 7720, NULL, 59, '1998-07-29 18:31:50', '2003-07-16 05:04:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'application/jsonml+json', 95728492, NULL, 60, '1974-09-11 08:12:19', '1987-05-27 10:22:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'application/vnd.oasis.opendocument.formula-template', 268563, NULL, 61, '2014-09-22 22:33:51', '1982-11-11 19:27:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'application/vnd.sun.xml.writer.global', 930, NULL, 62, '2006-05-07 13:31:36', '1986-11-09 09:10:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'application/x-silverlight-app', 88, NULL, 63, '1978-09-07 18:30:58', '2013-12-21 19:27:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'model/iges', 52347, NULL, 64, '1988-06-21 01:16:13', '1977-10-18 00:20:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'application/x-mobipocket-ebook', 821513371, NULL, 65, '1999-03-13 10:44:07', '1996-01-04 22:44:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'video/3gpp2', 0, NULL, 66, '1990-07-30 09:34:05', '2015-03-26 15:43:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'video/vnd.vivo', 3, NULL, 67, '1994-12-09 05:29:32', '2006-07-23 19:12:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'application/x-msbinder', 190, NULL, 68, '1989-05-02 04:00:13', '2001-10-13 06:36:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'application/vnd.immervision-ivp', 274, NULL, 69, '2005-10-19 10:36:10', '2018-08-06 04:17:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'application/x-stuffit', 88, NULL, 70, '2005-01-17 01:12:07', '2010-04-11 11:56:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'application/vnd.ms-powerpoint.template.macroenabled.12', 423706, NULL, 71, '1972-09-22 11:11:15', '1980-08-31 09:38:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'application/vnd.shana.informed.package', 8282506, NULL, 72, '1990-02-15 10:14:47', '1993-05-11 20:37:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'application/vnd.svd', 758, NULL, 73, '2003-07-21 14:40:37', '1977-03-18 04:37:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'application/x-lzh-compressed', 36, NULL, 74, '2004-08-06 01:15:01', '2010-03-29 14:30:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'application/vnd.ms-wpl', 0, NULL, 75, '2005-09-10 00:12:53', '2017-01-15 05:49:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'application/x-wais-source', 1, NULL, 76, '1998-06-02 09:28:49', '1975-10-29 14:22:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'application/vnd.openxmlformats-officedocument.presentationml.slide', 513954812, NULL, 77, '1977-11-14 12:37:09', '2001-12-22 17:02:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'application/vnd.sun.xml.writer', 0, NULL, 78, '2011-08-26 18:15:12', '2001-08-15 17:36:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'text/css', 779807, NULL, 79, '1989-06-26 00:22:57', '2015-10-14 09:31:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'application/vnd.dece.ttml+xml', 0, NULL, 80, '1993-04-18 08:01:34', '2017-08-23 08:45:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'application/vnd.recordare.musicxml', 0, NULL, 81, '1985-08-11 18:00:06', '1989-07-11 12:21:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'image/vnd.ms-photo', 0, NULL, 82, '2007-04-15 22:35:51', '1984-09-10 00:41:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'application/vnd.syncml.dm+xml', 13528, NULL, 83, '2000-11-21 18:56:36', '1979-11-07 02:19:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'application/x-silverlight-app', 987756, NULL, 84, '2010-08-31 22:49:01', '1990-12-13 18:30:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'application/xenc+xml', 100807, NULL, 85, '1978-02-28 21:20:37', '2000-03-29 21:20:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'application/x-7z-compressed', 516998630, NULL, 86, '1972-11-23 02:32:57', '2013-05-07 05:28:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'text/calendar', 93, NULL, 87, '2011-03-03 11:34:56', '1979-05-14 03:27:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'video/x-flv', 92, NULL, 88, '2008-03-07 13:02:17', '2007-09-18 23:28:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'application/vnd.ms-powerpoint.presentation.macroenabled.12', 11, NULL, 89, '1981-01-16 04:40:09', '2010-07-06 19:22:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'audio/x-pn-realaudio', 502376502, NULL, 90, '2005-05-06 06:50:29', '1995-08-17 07:57:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'application/vnd.wap.wbxml', 79820, NULL, 91, '2000-10-17 04:37:05', '2006-03-09 00:47:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'application/vnd.dece.data', 95926, NULL, 92, '2000-11-15 17:33:44', '2016-06-01 09:36:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'application/wsdl+xml', 4601312, NULL, 93, '2002-08-22 04:27:30', '2006-05-23 10:12:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'audio/x-matroska', 621671, NULL, 94, '1971-02-17 19:48:12', '2005-05-09 21:33:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'application/x-shar', 8945, NULL, 95, '1992-05-04 10:01:14', '2011-08-26 12:06:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'application/x-7z-compressed', 650357989, NULL, 96, '1986-12-12 23:04:17', '1995-02-28 01:37:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'text/csv', 3622, NULL, 97, '1989-06-20 20:12:04', '1998-07-25 03:02:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'application/x-sh', 245, NULL, 98, '1986-11-15 20:18:55', '1980-04-02 23:45:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'video/x-fli', 0, NULL, 99, '1971-12-03 20:22:31', '1992-08-22 05:14:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'application/x-font-type1', 15720, NULL, 100, '1997-08-21 03:37:40', '2010-07-26 02:03:27');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'conf', '2014-05-19 08:45:17', '1971-01-11 05:10:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'uri', '2002-05-03 17:30:52', '2007-08-21 18:05:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'stc', '2000-07-26 10:34:17', '1984-01-28 10:08:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'ait', '1972-11-24 18:13:08', '1996-07-07 00:38:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'pskcxml', '2012-06-20 17:29:58', '1982-02-17 10:04:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'uvvu', '1973-11-17 09:21:46', '2006-03-24 05:20:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'xpm', '2012-11-27 07:28:16', '2005-01-16 13:24:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'tif', '1979-03-16 20:16:33', '2007-10-30 19:14:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'wdp', '1989-02-22 13:39:41', '2010-07-09 14:01:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'pfm', '2005-02-16 10:15:26', '1991-10-15 11:32:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'wmx', '1979-03-25 02:47:21', '1972-03-04 05:35:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'jpm', '2010-08-09 21:39:36', '2003-08-02 13:59:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'rtf', '1996-08-07 07:21:27', '1978-08-25 07:09:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'air', '1981-02-22 02:35:35', '2013-09-08 05:37:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'jpgm', '1999-12-25 10:37:01', '2009-09-06 22:38:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'pptm', '1999-01-20 20:51:53', '2008-08-03 09:45:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'emma', '1986-11-06 18:52:01', '1973-08-05 02:25:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'ras', '2008-11-10 09:02:49', '2000-12-01 08:43:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'tex', '1972-12-24 06:35:46', '1974-03-17 16:23:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'sub', '1983-06-13 23:28:14', '2013-12-02 09:29:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'bmp', '1985-04-17 02:34:22', '1997-04-17 19:04:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'atom', '2005-04-29 12:54:04', '2020-04-09 00:36:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'mime', '1975-01-09 08:22:58', '2005-01-05 08:17:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'wmv', '2020-09-21 10:02:13', '1984-08-21 09:36:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'm3u', '1974-01-29 08:46:37', '1998-04-02 18:30:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'pptx', '2004-07-16 00:01:51', '2004-11-21 00:43:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'jad', '2002-12-21 15:58:46', '2007-07-03 01:01:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'aif', '2000-02-15 00:50:31', '1974-12-12 00:26:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'ogx', '2017-05-11 18:59:14', '1976-04-23 09:07:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'csv', '2018-12-07 08:58:16', '1975-09-14 14:02:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'uvvt', '1976-07-28 15:24:54', '2015-12-17 22:06:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'lbd', '1997-01-03 16:49:12', '2013-11-29 22:06:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'qwt', '2001-06-30 02:20:42', '1995-05-07 23:16:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'sv4cpio', '1995-04-02 15:21:26', '1972-01-29 03:02:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'sm', '1974-01-28 20:21:09', '1981-04-15 21:04:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'pas', '1973-06-11 12:42:39', '2015-04-06 11:40:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'mdi', '2020-01-24 00:21:54', '1999-04-26 08:31:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'sema', '1998-08-24 07:13:31', '2019-01-19 15:22:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'pnm', '2014-09-02 03:08:54', '2008-12-03 20:08:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'rdf', '1988-10-20 11:14:50', '2015-10-27 02:50:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 's', '2014-01-11 02:52:41', '1971-07-31 02:56:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, '3g2', '1995-06-14 19:30:25', '2018-07-18 17:32:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'rgb', '1978-08-12 10:59:41', '1986-06-03 17:20:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'unityweb', '2014-10-21 16:24:11', '2017-03-07 04:04:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'ogg', '2019-11-07 14:00:37', '2005-01-31 11:10:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'jpgv', '2011-10-10 16:23:35', '2003-04-28 18:01:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'ftc', '2013-05-16 14:31:47', '2004-11-03 02:00:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, '3ds', '1996-10-18 19:59:02', '1971-06-02 11:46:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'msh', '2017-11-30 18:52:49', '2018-09-25 05:54:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'mcurl', '1982-01-17 20:46:35', '1984-12-13 18:36:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'dpg', '1979-03-18 20:02:29', '1970-03-21 06:36:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'yin', '2009-07-19 07:33:01', '2020-05-09 23:12:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'chm', '1991-12-28 07:50:45', '2004-07-21 03:37:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'xo', '1985-07-29 17:36:35', '1989-03-30 13:15:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'viv', '1970-03-23 21:40:38', '2017-01-28 04:47:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'tfm', '2013-04-19 01:12:20', '2014-04-27 15:06:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'uvm', '1995-09-05 21:58:54', '1992-01-28 14:16:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'stl', '1980-01-08 03:20:10', '2007-01-12 19:55:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'pcx', '1975-04-10 19:00:45', '1977-02-17 19:43:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'wpl', '1987-12-05 11:24:14', '1998-10-13 17:29:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'ots', '1981-12-15 05:51:51', '1979-03-19 20:37:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'sse', '1977-04-27 14:19:01', '2018-04-13 21:22:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'nbp', '1988-02-16 01:05:07', '2010-12-18 04:20:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'gca', '1971-10-11 23:16:54', '2000-08-22 07:40:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'otp', '2021-02-28 13:33:55', '1987-12-14 03:55:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'pgn', '1973-11-01 23:12:28', '1977-11-12 21:22:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'caf', '1976-05-26 19:19:42', '2014-04-17 14:30:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'torrent', '2001-06-22 05:30:40', '2006-11-28 18:01:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'pct', '2002-02-22 07:21:18', '2009-09-07 02:47:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'm13', '2000-06-26 12:48:47', '2018-10-21 08:27:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'wbxml', '1976-09-19 13:35:37', '1980-10-31 02:00:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'ttl', '2010-03-17 17:36:46', '1977-09-03 12:17:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'ifm', '2002-03-03 19:08:02', '2015-04-20 22:47:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'etx', '1975-12-15 02:45:45', '1971-10-03 13:02:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'gramps', '1998-09-22 21:18:07', '2007-07-19 11:56:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'exe', '1972-07-15 21:06:56', '1992-02-06 04:12:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'uvvh', '1982-08-17 21:14:22', '1996-10-12 09:40:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'ogv', '1979-08-09 09:29:10', '1971-11-23 14:28:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'esf', '2013-09-18 13:21:14', '2003-08-27 23:23:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'ods', '2003-05-28 10:45:54', '1998-03-21 19:25:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'text', '1983-09-20 23:42:42', '1984-11-18 06:34:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'dwg', '2008-01-09 17:41:28', '2007-09-15 00:15:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'dvb', '1978-09-18 02:40:21', '2011-04-15 19:16:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'ktx', '2019-10-05 04:21:31', '2021-03-19 20:29:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'uvvd', '1996-06-22 19:13:37', '1971-07-03 08:40:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'sql', '2012-03-18 06:48:38', '1971-01-13 18:31:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'adp', '2007-08-06 14:03:57', '1988-03-08 23:00:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'ppam', '2011-12-26 03:29:26', '1971-10-09 15:43:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'uvt', '1994-06-09 21:05:01', '2004-10-11 13:10:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'nsc', '1988-07-29 18:38:29', '1988-05-27 23:21:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'oth', '1970-08-28 15:38:54', '2020-05-15 13:07:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'stf', '1974-03-18 03:56:14', '2004-12-04 23:56:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'fh', '2014-01-01 17:08:13', '1984-10-09 06:24:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'mlp', '1991-07-03 18:34:35', '1971-03-23 05:35:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'mus', '2011-08-20 06:10:30', '2012-01-20 10:14:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'oga', '1982-08-14 04:39:16', '2003-05-28 09:59:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'sv4crc', '2004-09-23 04:27:20', '1988-05-16 23:25:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'wmd', '1970-06-23 16:00:04', '1976-10-16 23:14:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'odf', '2021-03-02 11:03:05', '2013-01-30 23:18:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'sfd-hdstx', '2018-12-29 02:48:32', '2007-11-20 09:08:58');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Rerum minima ut dolorem aperiam temporibus dolorem. Quae ducimus sint saepe quod. Occaecati laborum at a officiis id. Accusantium amet nam voluptatem.', 1, 0, '1978-12-15 10:35:44', '2008-06-09 13:54:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'A officia accusantium quis qui laudantium quasi a. Sunt et minima et soluta suscipit. Ut officiis vero suscipit magnam necessitatibus molestiae. Culpa deleniti asperiores non perferendis commodi.', 0, 1, '1974-07-13 03:43:48', '2016-04-21 12:44:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Vel ducimus voluptatum temporibus non molestiae velit necessitatibus error. Commodi voluptatem error fugit dolorem odio aut autem et. Fugiat nulla accusantium adipisci.', 0, 1, '1975-08-13 01:27:34', '2015-10-16 08:55:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Qui excepturi architecto nihil cumque. Amet quidem inventore provident et cum officia. Repudiandae asperiores dolor officiis aperiam sint perspiciatis in. Atque velit porro in repellendus harum nulla deleniti.', 1, 1, '1989-04-25 09:16:26', '1979-03-02 09:09:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Non voluptatem sunt ea repudiandae ea sed. Et ut incidunt omnis et fugit voluptatem omnis. Dolorem voluptatum nam est nemo.', 0, 1, '2008-06-01 01:34:23', '1988-03-09 11:34:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'Facilis recusandae earum inventore quis eius quibusdam saepe nemo. Officiis harum velit tempora delectus et quidem quia. Reprehenderit deserunt est aut ut et.', 1, 1, '1990-07-22 04:16:01', '1999-10-17 21:02:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'Doloremque ut in doloribus. Dolorum doloremque hic quam vero expedita ea. Est et voluptatem est dolores molestiae. Dolor eaque dignissimos enim assumenda quaerat.', 0, 0, '1973-01-03 09:45:37', '1994-07-02 12:09:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'Ipsum aliquam deserunt quos omnis commodi et. Pariatur dolore maiores quia adipisci quia unde sint sequi. Molestiae animi debitis adipisci.', 0, 1, '1989-01-24 15:44:41', '1984-07-30 19:48:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'Omnis alias iste est laborum voluptatibus quia tempore. Eius illo reiciendis et eveniet. Voluptatem consequatur veritatis vero ullam esse.', 0, 1, '2015-08-05 05:08:07', '2013-01-04 01:44:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'Impedit nisi a dolores repellendus qui optio ex. Voluptates rerum sunt vel et distinctio eligendi quo. Et in odit et et voluptates molestiae. Et consequatur inventore est.', 1, 0, '2008-02-22 07:31:34', '1999-05-15 16:57:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'Architecto dolores quas id possimus dolores dignissimos omnis. Ducimus sit ab odio sed harum qui quidem. Temporibus est aut cumque illum.', 1, 0, '1977-06-09 00:56:52', '1980-01-25 23:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'Consequatur veniam necessitatibus occaecati asperiores. Hic numquam sed quasi eum. Fugit in nihil id omnis debitis enim.', 1, 0, '2007-06-12 22:14:33', '2012-10-30 12:51:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'Quos enim similique ut ea quas. Iusto consequatur quidem non cumque molestias. Dignissimos tempore et eligendi error. Suscipit culpa eaque vel culpa blanditiis.', 0, 1, '1975-01-14 05:43:11', '1972-03-27 19:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'Earum qui voluptas molestiae blanditiis qui. Modi labore sit quidem doloribus doloribus. Sunt dicta aut omnis accusantium doloribus eum. Vero nihil expedita vel delectus odit est.', 0, 1, '1981-09-16 23:46:46', '1973-01-31 00:35:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'Illo earum vero blanditiis id iusto consequatur fugiat. Deleniti minima at tenetur quasi occaecati. Est ut quas sed adipisci.', 0, 1, '1976-01-05 09:21:05', '1988-08-03 15:16:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'Beatae non dolorum beatae libero aut nam consequatur. Natus itaque non eius neque vero. Molestias ut similique dolores cum dolorum. Aut omnis sint ab id quia.', 0, 0, '2003-09-22 22:11:20', '2006-10-12 08:43:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'Et voluptatem nesciunt consectetur ipsam et. Voluptas sed id laboriosam qui. Modi sit harum accusamus omnis.', 0, 0, '1989-11-29 22:59:54', '1978-06-19 16:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'Nobis est vitae doloremque et impedit modi. Repellendus consequatur eligendi deleniti. Totam modi dicta distinctio dolores.', 1, 0, '1999-07-08 09:25:31', '2006-12-19 01:43:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'Veritatis deleniti error ipsa non beatae accusamus quisquam. Maiores nam est sed et non. Sint possimus eveniet repudiandae voluptates. Voluptas id totam quidem ut. Quis sapiente quibusdam quisquam ut voluptatibus odio unde.', 1, 1, '1971-07-03 05:45:23', '2015-01-26 08:55:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'Cum qui minima aut excepturi. Voluptatum sit quod est quae ad. In ipsa in ipsum omnis ut consequatur voluptas libero.', 0, 1, '1978-01-06 06:24:58', '2006-12-01 07:54:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 21, 21, 'Tenetur aut rem ex voluptas mollitia odio repellat et. Consequatur rerum impedit necessitatibus. Soluta maxime est illum praesentium et tempora quia voluptates.', 1, 1, '2009-09-03 01:07:23', '1991-06-25 08:47:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 22, 22, 'Earum suscipit est itaque odio sed aspernatur sunt. Modi consequatur molestiae omnis consequatur. Excepturi voluptatum eaque sint beatae reiciendis cumque.', 1, 1, '2010-07-07 07:38:39', '2005-06-26 04:28:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 23, 23, 'Est excepturi fugiat nisi qui. Similique veritatis architecto dolor ab ut. Dolore voluptatem facere placeat est rem.', 0, 1, '1977-10-14 06:58:50', '1972-06-29 21:54:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 24, 24, 'Aut rem ducimus cumque consequatur enim alias. Sed consequatur nisi autem ducimus corporis doloremque possimus. Illo animi rerum explicabo culpa.', 1, 1, '2003-08-03 17:41:57', '1976-03-24 15:51:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 25, 25, 'Ipsam tempore debitis voluptates aspernatur. Ut velit aperiam animi animi ad. Maxime blanditiis nulla natus labore illum.', 0, 1, '2001-02-14 05:47:55', '1975-11-25 11:14:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 26, 26, 'Sed hic eligendi ducimus necessitatibus. Velit est modi sunt pariatur. Enim est ut asperiores sed natus. Fuga sit nihil suscipit ipsam ab ullam quod.', 0, 0, '2005-01-03 04:25:21', '2002-05-16 06:10:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 27, 27, 'Error hic et quibusdam necessitatibus cum qui molestias. Ut et provident est doloribus quia. Iure dolore non nihil voluptatem repellendus. Nostrum et facilis temporibus voluptatibus cupiditate non repellat.', 1, 1, '1983-12-23 15:49:22', '1980-12-14 23:56:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 28, 28, 'Ea dicta harum enim dolorem in minima. Voluptas rerum earum voluptatem placeat veniam nemo. Beatae repellendus qui voluptas dolores sit.', 0, 0, '1981-07-17 23:23:00', '1989-09-11 17:06:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 29, 29, 'Suscipit amet repellat pariatur ducimus praesentium assumenda necessitatibus. Rerum et dolores quibusdam praesentium. Quis pariatur ut quis hic sint.', 1, 0, '1980-02-04 17:41:06', '2014-06-23 02:19:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 30, 30, 'Numquam nihil veniam aut omnis. Rerum at et magnam aut provident ea. Saepe ea et quibusdam voluptatum quam fugit et quo. Voluptatibus ab rerum animi omnis culpa vitae et.', 1, 0, '1985-08-24 04:32:13', '2013-11-17 21:48:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 31, 31, 'Aut voluptatem voluptatem harum quas. Sit fuga aut corporis voluptatem. Et architecto qui illo sit. Veniam voluptas inventore voluptate iusto ut voluptatem.', 1, 1, '1979-08-20 13:14:23', '1972-07-10 06:23:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 32, 32, 'Ut earum necessitatibus nemo facilis. Incidunt labore fugit perferendis dicta laborum. Earum perferendis fugiat velit nulla est possimus.', 0, 1, '1985-09-30 13:16:53', '1986-07-17 13:26:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 33, 33, 'Accusamus magnam dolores dolores quasi possimus assumenda. Qui aut est fugit hic nesciunt. Illo quos placeat dolor explicabo consequatur voluptatem natus. Temporibus illum et expedita hic.', 0, 1, '2015-04-23 03:26:04', '2002-10-19 06:51:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 34, 34, 'Vero voluptatem necessitatibus possimus fuga ut. Sequi ab modi sit qui dolores eum.', 1, 0, '1987-04-05 09:57:21', '1982-02-04 05:46:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 35, 35, 'Esse laudantium id quo ducimus excepturi est. Qui quia perspiciatis libero sit aut. Nihil iste reiciendis officiis commodi suscipit.', 0, 1, '1978-11-21 18:47:41', '1990-02-17 04:49:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 36, 36, 'Animi similique dolores ut. Velit consequatur porro sit quidem natus in. Ipsa molestiae perferendis minus. Ullam aut iure dolorum voluptas adipisci nostrum. Tenetur ut magnam vel aspernatur.', 0, 0, '2011-01-16 22:37:15', '1972-06-01 15:37:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 37, 37, 'Sit molestias asperiores aperiam. Et odio ea et aperiam sunt corporis veniam aut. Eaque sed occaecati quam omnis repudiandae magni voluptas.', 1, 0, '1981-07-19 22:38:22', '2007-10-11 04:37:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 38, 38, 'Blanditiis necessitatibus esse sit aut. Aut voluptatem laudantium voluptas est. Accusamus atque at aliquam ut odit est omnis. Beatae facere est perferendis sed. Et corrupti ullam et quidem quasi sunt aut.', 1, 0, '2017-02-02 13:33:55', '1993-12-13 01:19:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 39, 39, 'Aut est voluptates nobis dolor sunt enim. Dolorem sed animi voluptates vitae iste quia error. Recusandae in dignissimos et iusto omnis. Nihil tenetur pariatur quaerat minima possimus maxime magnam.', 1, 1, '1978-06-03 14:59:28', '1992-05-11 10:59:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 40, 40, 'Aut consequatur sed ab debitis porro perferendis incidunt nisi. Est debitis ipsa tenetur. Magnam ipsam temporibus voluptatem vitae illo non. Qui voluptatem tempora repellat beatae quod ducimus.', 1, 0, '1974-08-23 04:05:52', '2019-06-12 06:24:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 41, 41, 'Eligendi ut ullam iure eaque. Odit quidem sit unde dolor saepe.', 1, 0, '1982-05-10 17:46:58', '2010-01-26 21:07:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 42, 42, 'Molestias commodi corporis dolorem beatae quos ratione. Voluptatum sit cum dicta quia. Voluptatum rerum quod ad quis sunt.', 1, 0, '2003-05-02 08:03:45', '2000-11-02 21:34:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 43, 43, 'Illum atque omnis facere voluptatem ducimus tempore alias corporis. Quisquam placeat quo ut. Dolores non eveniet facere nesciunt possimus.', 0, 0, '1986-08-20 14:54:23', '1997-03-14 18:39:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 44, 44, 'Eveniet ad quo maxime veniam accusamus doloremque sit. Voluptates labore rerum voluptate possimus esse et. In in quia et suscipit dolor ut nisi. Repudiandae doloribus ipsa ut illum.', 1, 1, '1999-06-23 17:36:43', '1970-06-20 11:12:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 45, 45, 'Incidunt et vel possimus. Earum ipsum blanditiis aut earum molestiae esse voluptates. Et vitae beatae omnis.', 0, 1, '1991-12-02 23:00:54', '1999-07-20 20:58:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 46, 46, 'Dolore eligendi sint earum labore. Unde nostrum porro repellat asperiores. Rerum odio dolorum eos aliquid officiis nisi adipisci.', 1, 0, '1988-10-31 18:00:35', '2010-07-12 08:43:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 47, 47, 'Vero eum velit perspiciatis nihil quo sequi. Praesentium et distinctio ratione quod molestiae et. Dicta quibusdam aut debitis vitae rem ut.', 1, 1, '1985-10-12 01:04:17', '2006-02-20 17:00:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 48, 48, 'Optio enim harum accusamus cupiditate molestiae ut nihil sequi. Vel fugit ducimus sit non non id quae. Ipsam rerum id velit nihil voluptatibus quia quam. Beatae nam et aut cupiditate mollitia et.', 0, 0, '2005-04-11 00:45:08', '1972-04-25 09:13:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 49, 49, 'Dolor blanditiis sapiente dolorem numquam eaque dolorum ut sed. Placeat dolores delectus eos.', 0, 1, '2015-11-29 04:34:48', '1978-06-27 21:05:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 50, 50, 'Vitae ut facilis minima laudantium suscipit laudantium quisquam sed. Qui debitis molestiae officiis repudiandae. Incidunt dolore error ex et quis distinctio quasi fuga.', 0, 0, '1992-09-09 05:47:48', '1999-03-31 00:17:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 51, 51, 'Odio temporibus amet odit consectetur dicta eos. Aperiam perspiciatis incidunt quis exercitationem. Porro consequatur omnis nisi quam.', 1, 1, '1982-08-05 21:53:01', '1987-08-17 23:00:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 52, 52, 'Nihil dolorum temporibus et minus. Ut pariatur omnis est veritatis. Consequuntur rem est repellendus sed explicabo. In voluptatum dolor expedita nihil.', 1, 1, '2011-03-31 14:16:20', '2002-08-12 17:10:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 53, 53, 'Iste consequatur non dolorem dolorem dicta ad totam consequatur. Aut aliquam voluptatem delectus consectetur porro minima deserunt. Veritatis in sunt aut quia. Nihil error aut sunt atque necessitatibus iste voluptatem laboriosam.', 0, 0, '2010-11-29 13:50:54', '1993-12-12 13:10:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 54, 54, 'Quisquam et perferendis quia asperiores inventore. Laborum dolorum ut soluta exercitationem. Est nihil delectus inventore veniam alias earum saepe. Ut tenetur dolore harum.', 1, 0, '2020-03-06 05:13:58', '1989-07-02 01:29:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 55, 55, 'Libero placeat sed libero. Est aut velit ullam fugit iure. Earum consequuntur porro ex. Autem voluptate vel quia est. Veniam sed sed sunt dolorem nobis dignissimos a fuga.', 1, 1, '1977-09-02 01:16:07', '1984-07-06 13:43:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 56, 56, 'Dolores qui suscipit iste consequatur. Id facilis pariatur quisquam voluptate rerum mollitia. Consequatur iusto ullam soluta necessitatibus pariatur est distinctio. Error minus sed fugit asperiores.', 1, 0, '2006-06-11 11:52:56', '1986-05-09 06:20:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 57, 57, 'Officia itaque ex quibusdam nesciunt. Exercitationem voluptas at velit quod. Sit itaque totam consequatur explicabo assumenda aperiam consequatur. Qui reprehenderit ipsam porro consequatur aliquam dolores.', 0, 1, '1986-08-01 09:51:20', '1998-08-18 08:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 58, 58, 'Culpa eveniet et sit corporis quos omnis exercitationem architecto. Ex voluptate asperiores amet consectetur. Praesentium repudiandae quo magni ut recusandae rem laudantium.', 1, 1, '1970-04-17 03:52:12', '2010-12-23 17:37:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 59, 59, 'Iste sint sint dicta est. Quibusdam deserunt similique voluptatem id aliquid ut inventore. Nulla illum ea ut voluptatibus corporis rerum accusantium.', 1, 0, '2015-03-03 07:48:41', '2006-01-16 10:48:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 60, 60, 'Possimus in qui sit consequatur. Officia iusto qui expedita vel eius. Sed modi sunt iste iusto ratione saepe voluptatem.', 1, 0, '1979-06-16 18:29:22', '2004-05-29 00:39:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 61, 61, 'Inventore inventore in molestiae quae. Temporibus tempore sequi fuga repellat nemo eos. Natus reiciendis omnis quia at.', 0, 1, '1998-02-17 19:45:07', '1972-08-28 23:11:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 62, 62, 'Et enim rerum odio et ducimus et exercitationem. Nihil tenetur et accusamus est sit. Tenetur alias atque veritatis labore id earum.', 0, 0, '1980-03-06 07:50:34', '2004-01-14 11:25:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 63, 63, 'Aut eius accusamus quia. Doloremque reprehenderit sint ut et aliquid iusto. Molestiae nesciunt aperiam molestiae. Quam voluptatibus similique iure esse sit fugit accusamus.', 1, 1, '1996-03-25 08:41:40', '1999-03-05 16:15:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 64, 64, 'Non in voluptas possimus laudantium. Sapiente omnis iste doloremque assumenda ducimus et a. Velit excepturi expedita numquam iste quaerat id ab eligendi.', 0, 1, '1994-10-06 06:11:24', '2014-09-06 16:57:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 65, 65, 'Molestiae qui amet sit cum iste. Ullam incidunt est corporis. Sapiente harum ad voluptatem molestiae dolorum.', 0, 0, '1988-09-01 20:38:47', '1984-11-29 15:04:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 66, 66, 'Molestiae enim tempora aut in eius. Magni ut consectetur est nobis.', 1, 1, '1991-01-22 17:38:19', '1981-08-02 16:31:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 67, 67, 'Qui repellendus natus nemo dolorem ratione. Odit excepturi praesentium earum repellat. Quia odit sed sed est molestiae impedit consequatur.', 1, 1, '1977-04-28 14:04:30', '2002-01-26 06:18:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 68, 68, 'Quia ad praesentium laudantium qui voluptas sunt. Incidunt laborum ullam ut quo repellat rerum. Explicabo quis alias iure natus deserunt.', 0, 1, '1973-04-26 12:18:21', '1985-04-14 05:31:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 69, 69, 'Suscipit alias velit non praesentium mollitia. Magnam atque rerum dolores. Fugit et quam nulla dolor corrupti. Qui vel molestiae repudiandae ut et.', 1, 0, '1970-01-27 19:53:33', '1981-06-10 20:20:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 70, 70, 'Neque molestiae omnis inventore vel rerum neque rem sed. Enim error qui aliquid voluptatum voluptatem odio. Eaque corrupti architecto eum non ab. Ea minus sint odio voluptatem ut.', 0, 1, '2001-02-20 14:48:03', '2009-01-11 21:16:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 71, 71, 'Vitae labore veniam occaecati consequatur consequatur autem eos. Cupiditate adipisci est vel vitae reiciendis. Nemo quis et deserunt sed et.', 1, 0, '1978-05-25 14:18:31', '1986-02-05 18:03:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 72, 72, 'Dolores officiis omnis itaque at debitis distinctio et unde. Aut culpa omnis minima saepe. Sunt molestias veniam laborum earum. Ad a atque quia error voluptate veritatis.', 0, 0, '1986-08-10 14:30:07', '1979-07-17 19:24:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 73, 73, 'Repellat necessitatibus corporis reprehenderit odio dolorum iusto dolorem. Perspiciatis assumenda alias ut dolor sed nostrum dignissimos. Eos libero vel aut mollitia.', 0, 1, '2002-05-10 00:25:10', '1989-07-19 22:12:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 74, 74, 'Maiores adipisci tempora rem voluptate. Ut et quia molestiae aut autem facere quos.', 1, 0, '2015-10-14 19:31:05', '1997-11-21 00:25:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 75, 75, 'Corporis voluptatem eum qui sequi. Labore nisi itaque quia temporibus aut. Perspiciatis esse voluptas et.', 1, 0, '1981-07-06 11:54:01', '1971-03-27 07:19:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 76, 76, 'Et ad quos eaque et sunt ex ab maiores. Et at et quaerat quis omnis dolorum sed. Officia ut veniam voluptatibus labore. Nihil et sit ipsa autem.', 1, 0, '2006-11-11 21:11:49', '2008-08-22 14:16:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 77, 77, 'Qui qui soluta voluptate possimus. Perspiciatis voluptatem enim et illum. Assumenda repellat ut commodi.', 0, 0, '1978-12-04 17:11:07', '2017-01-24 04:52:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 78, 78, 'Aut officiis ullam aliquam dolorum vel harum. Provident quibusdam quas iste qui aut. Quis quo in alias.', 1, 1, '2012-09-29 13:55:29', '2008-06-19 06:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 79, 79, 'Sed doloribus quis assumenda sed ut esse pariatur quia. Dolorum ipsam facere maxime itaque provident. Ut excepturi doloremque quidem.', 1, 0, '1973-02-07 07:49:49', '1993-02-28 02:56:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 80, 80, 'Hic vel id dolores dolor in. Est rem eius quia enim. Laboriosam voluptatem omnis corporis. Omnis ratione quo enim impedit doloremque.', 0, 0, '1979-04-07 09:45:05', '2009-08-15 21:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 81, 81, 'Aliquid vero assumenda libero dolorum. Molestiae dolores illo doloremque consequuntur dicta eligendi illum.', 1, 0, '2001-12-03 10:26:41', '1978-07-16 10:09:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 82, 82, 'Corporis sed accusantium dolore soluta. Quis fuga quisquam culpa ut voluptas beatae expedita. Quo possimus autem et voluptates ipsa dicta.', 1, 1, '1976-01-10 23:36:03', '2018-12-28 21:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 83, 83, 'Ut blanditiis non est est sit fugit totam. Eaque sed reiciendis saepe ratione eius dicta. Dolorem quibusdam est qui quidem enim minus. Autem et aut ipsa illum non neque.', 1, 1, '2006-11-27 07:45:31', '1986-09-24 05:26:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 84, 84, 'Qui vel fugit debitis nesciunt. Facilis qui ut enim illo similique consectetur culpa. Veniam odio molestiae repellendus quis.', 1, 0, '1994-06-28 05:33:25', '1982-04-09 05:07:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 85, 85, 'Omnis aperiam veritatis quis harum voluptatem tempore. Totam et sed temporibus et qui non. Cum necessitatibus velit ducimus ad dolorum nostrum.', 1, 1, '1976-04-26 23:36:18', '2015-09-20 16:17:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 86, 86, 'Iusto sequi corporis ipsam nisi eaque. Aut sit fugit magni nihil cum nesciunt animi id. Necessitatibus sit iste recusandae quidem aspernatur quam dolorem.', 1, 1, '2015-03-26 09:04:09', '2006-05-28 22:07:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 87, 87, 'Harum voluptas debitis accusamus et dolor voluptate et. Autem quo laudantium et et. Tempora dolor vel qui sed nisi deserunt ut et.', 1, 1, '1979-07-30 11:14:53', '1990-05-27 04:13:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 88, 88, 'Tenetur commodi sed et quia culpa. Aliquam asperiores sint sed. Occaecati ut asperiores laudantium et cum hic.', 0, 1, '2014-09-16 11:26:08', '1989-10-07 23:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 89, 89, 'Delectus nulla rem quam libero repellat. Id suscipit eveniet incidunt recusandae. Distinctio pariatur voluptatem magnam quas quos doloremque. Ut dolores et molestiae est minus ab aliquid sunt. Qui quis tempore eaque sunt quia ducimus veritatis.', 1, 1, '2014-12-30 13:15:48', '1972-10-06 21:50:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 90, 90, 'Perspiciatis suscipit qui corporis eveniet asperiores. Non corrupti voluptates quas quod pariatur. Ex soluta repellendus distinctio accusantium eligendi. Magnam quas at ut magnam dolores delectus natus.', 0, 1, '1996-08-06 05:36:57', '1976-04-21 13:05:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 91, 91, 'Cupiditate reprehenderit autem qui ipsum. Et praesentium ut est laborum. Est qui enim corrupti quia aut voluptatem unde consequuntur.', 0, 1, '2005-04-12 01:37:45', '2011-02-05 18:37:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 92, 92, 'Ut et aperiam qui velit. Expedita sit molestiae illo hic. Adipisci sunt veniam facilis accusantium.', 0, 1, '1982-05-27 04:34:39', '1978-05-20 10:25:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 93, 93, 'Voluptatum et sunt maxime maxime rerum sunt beatae. Voluptatem error consequatur illum. Voluptatem debitis eum et qui neque ut autem. Illo occaecati placeat quia aliquam maxime ea molestiae.', 1, 1, '1997-12-02 05:23:02', '2005-12-10 06:58:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 94, 94, 'Nemo amet consequatur aut expedita amet. Sunt vitae dolorem sit inventore. Aliquid voluptatem temporibus eum consequuntur fuga.', 1, 0, '2012-01-01 12:29:10', '1975-09-02 23:21:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 95, 95, 'Sed animi rerum necessitatibus magnam eos qui est. Fugiat deserunt deserunt doloribus sed deserunt dignissimos sed asperiores. Et sed doloribus dolor in ea rerum molestias est.', 1, 0, '2016-07-16 19:11:12', '1992-02-20 16:15:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 96, 96, 'Quos dolor enim ad ea excepturi. Illum quo harum perferendis cum. Maiores quia ea atque.', 1, 0, '1999-02-02 00:51:48', '1991-05-01 08:34:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 97, 97, 'Tempora aut inventore consectetur nihil illo. Excepturi cum et necessitatibus odit. Dolorum vitae aliquam rem sapiente. Provident maxime fugit deleniti facere quis eveniet nihil saepe.', 1, 1, '2000-02-13 09:11:16', '2001-02-08 00:02:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 98, 98, 'Aliquid eaque sint laborum corrupti at vero deleniti et. Quia enim illo fugit fuga maiores vel dolore hic. Necessitatibus qui debitis consectetur. Et voluptatum qui qui deserunt sed dolorem minima.', 1, 1, '1970-11-26 15:48:55', '1997-02-24 04:36:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 99, 99, 'Ducimus accusamus veritatis doloremque quis autem voluptate. Sit architecto rerum quas ut. Accusantium esse maiores quaerat autem autem praesentium optio. Magnam explicabo ipsa qui placeat minus eaque.', 0, 0, '1979-05-10 16:25:19', '1982-10-09 14:19:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 100, 100, 'Molestiae voluptatum perspiciatis eum tenetur. Id commodi fugiat debitis animi sit distinctio reprehenderit aspernatur. Quasi aut ipsam voluptate ut. Quia minus provident ut esse.', 0, 1, '2012-11-14 18:46:28', '1988-11-22 16:33:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (101, 1, 1, 'Aut pariatur repudiandae totam aut necessitatibus aspernatur. Voluptates incidunt laborum qui officiis cumque. Reprehenderit sit dolorum quibusdam odit et accusantium dolores.', 1, 1, '1995-01-11 03:08:40', '2018-09-20 21:15:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (102, 2, 2, 'Consectetur voluptatem atque consequatur dolorum omnis qui quae iusto. Similique voluptatem aut vitae harum quis. Impedit ea praesentium voluptate quo cupiditate facere qui. Magnam voluptas id aut laborum nostrum aut labore. Impedit quia possimus iure.', 1, 1, '1997-12-07 22:19:31', '1980-07-27 23:19:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (103, 3, 3, 'Possimus sit et fugit ad velit. Cum architecto aut hic laudantium. Architecto quis facilis deserunt pariatur facere quod.', 0, 0, '1999-12-11 01:27:02', '1977-02-23 13:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (104, 4, 4, 'Maxime provident eos consequatur et occaecati repudiandae itaque. Unde vitae repudiandae debitis temporibus suscipit. Fuga sint sapiente omnis est aliquid.', 1, 0, '1985-01-16 17:56:46', '2004-04-02 11:03:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (105, 5, 5, 'Sequi ut ab labore ut optio aut eaque. Ipsa deserunt quidem animi inventore consequatur. Qui est et et maiores modi eos. Autem et molestiae corrupti et.', 1, 1, '2001-03-17 09:20:48', '2001-04-14 21:29:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (106, 6, 6, 'Sed ea placeat aut repellendus. Harum optio ut minima eveniet ipsum. Repellat perspiciatis autem nihil velit deserunt quidem.', 0, 1, '1981-06-26 11:53:30', '1993-10-26 07:59:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (107, 7, 7, 'Sequi asperiores architecto et omnis eveniet. Quod ut alias dolores minus omnis quas sapiente id. Exercitationem corporis consequatur molestias consequatur harum quisquam et. Dolorum odio in similique possimus neque rem.', 0, 1, '1999-12-05 19:15:50', '1981-12-31 20:47:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (108, 8, 8, 'Explicabo dolor facere laboriosam eius. Sed molestiae sed commodi quo. Explicabo ipsa ipsum saepe perspiciatis voluptatem. Voluptatem odit numquam repellat necessitatibus corrupti quis.', 0, 0, '1983-10-22 22:28:44', '1998-11-05 02:06:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (109, 9, 9, 'Repellendus nihil fugiat quasi dignissimos quia corrupti. Ut qui sunt ratione tempore praesentium corrupti. Soluta eos quas quam.', 1, 0, '1988-03-27 11:03:48', '2003-08-05 03:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (110, 10, 10, 'Dicta dicta dolorem facere ut illum doloremque commodi. Optio ut molestias qui corrupti sunt. Vero sed quibusdam ad incidunt.', 1, 1, '2012-08-12 18:42:29', '1977-02-19 22:19:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (111, 11, 11, 'A occaecati nostrum recusandae et tempore nostrum. Autem illo ut nobis dolores et sunt. Vero blanditiis est hic sunt est praesentium libero consequatur. Sint nihil consequuntur consequatur expedita doloremque.', 1, 1, '2005-01-06 16:35:18', '1980-10-15 00:19:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (112, 12, 12, 'Architecto illum temporibus repudiandae et. Blanditiis numquam doloremque quidem voluptatum provident ratione. Unde nobis dicta facere blanditiis consequatur. Molestias consectetur cupiditate at. Fuga incidunt quia exercitationem qui et excepturi ratione laudantium.', 1, 1, '1974-11-30 20:12:07', '1996-11-27 10:31:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (113, 13, 13, 'Aut aut quia repellendus qui numquam accusamus quisquam. Similique illo mollitia ut officiis voluptates. Accusamus repudiandae optio et autem iste. Voluptates labore incidunt quas nostrum.', 0, 0, '1972-03-09 04:35:13', '1994-09-19 19:10:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (114, 14, 14, 'Assumenda perferendis quae doloremque non voluptas. Voluptas quidem sit architecto consequatur impedit. Magnam quos alias cupiditate consectetur quod.', 0, 0, '1997-06-16 03:50:52', '1989-09-06 02:57:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (115, 15, 15, 'Nihil at et omnis ut fuga. Eum eius fugiat quia quod doloribus id eius et. Repellat at velit qui et ut reiciendis et. Officiis molestiae dolorum consequatur.', 1, 1, '1989-08-21 09:30:09', '1980-11-09 04:24:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (116, 16, 16, 'Eum aut et eveniet non qui molestiae. Eum nihil voluptate eius veritatis dolores sed ea molestiae. Dolorem illum in nostrum inventore ipsam quia quia. Impedit deserunt quae omnis accusamus debitis architecto odit iusto.', 1, 1, '1977-03-02 15:04:47', '1970-02-07 03:24:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (117, 17, 17, 'Est qui cumque commodi recusandae a. Quaerat minima occaecati voluptatum a aut quisquam et. Asperiores porro quibusdam pariatur totam ut saepe doloremque vel. Qui doloribus ratione voluptate dolor ut ab.', 1, 0, '1981-02-08 16:27:29', '1973-12-14 16:28:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (118, 18, 18, 'Cumque omnis eum pariatur voluptatem tenetur et veritatis dolor. Rem voluptas fugit reiciendis quia consequatur omnis et. Labore aut voluptatem voluptatibus sapiente deleniti adipisci natus beatae.', 1, 0, '2003-07-29 20:53:04', '1977-12-21 09:14:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (119, 19, 19, 'Et ut eligendi at. Suscipit neque unde et error corrupti dolorem corrupti. Magni non ut ut dolorem et. Qui est non sint saepe.', 0, 1, '1989-03-20 07:29:41', '1999-07-22 08:28:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (120, 20, 20, 'Quae earum aut enim. Non aut consequatur repellendus labore maiores voluptas. Aspernatur error reiciendis voluptatem itaque suscipit voluptatibus consequuntur. Eum magnam deserunt inventore eum dignissimos.', 0, 0, '1991-10-05 17:14:55', '2020-03-09 04:17:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (121, 21, 21, 'Voluptas consequatur nostrum est id. Sit eius velit doloribus animi.', 1, 0, '1982-05-07 05:48:38', '1980-02-26 10:07:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (122, 22, 22, 'Rerum error commodi aliquid recusandae. Quis dolorem earum magnam. Iste itaque magni dolore ipsa aut natus facere omnis. Nemo nam sint qui inventore voluptas.', 0, 0, '2018-05-14 20:32:50', '1994-05-11 19:59:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (123, 23, 23, 'Repellat quia et placeat qui sed asperiores tempora ipsam. Exercitationem est est exercitationem. Qui et repudiandae magni tempore. Aperiam non et dignissimos molestiae nihil.', 0, 0, '2007-05-21 16:53:20', '1973-07-14 01:38:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (124, 24, 24, 'Sed sunt fuga quae odit rerum. Sed saepe fugiat ut ex ratione consequuntur omnis quas.', 0, 1, '1973-03-16 17:45:33', '1972-10-17 13:58:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (125, 25, 25, 'Et repellat laboriosam veritatis repellendus. Esse impedit autem excepturi. Officiis laudantium nulla dicta ipsa ratione repellat ea. Natus quod similique cupiditate possimus.', 1, 1, '1989-03-11 04:20:17', '2019-11-20 09:16:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (126, 26, 26, 'Dolores ipsam facilis asperiores beatae et ullam voluptas veritatis. Ea dolor et expedita placeat nihil. Aliquid repellendus tenetur est quis quia cumque. Voluptatem et accusamus assumenda.', 1, 1, '2015-10-26 17:15:13', '2010-08-16 18:07:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (127, 27, 27, 'Quibusdam odit ut totam unde fugiat beatae assumenda vero. Impedit at dignissimos quaerat odit et. Consequatur error quidem perferendis doloremque et fugit. Ut voluptates mollitia quis exercitationem omnis porro dolores.', 1, 0, '2003-02-20 09:38:36', '2009-10-23 11:55:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (128, 28, 28, 'Non non et velit sed quis. Aperiam expedita vel quo porro placeat vel. A et officiis possimus qui. Dolor cupiditate cupiditate culpa.', 0, 1, '1982-08-28 04:14:57', '2005-08-03 13:45:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (129, 29, 29, 'Et aperiam debitis distinctio quod voluptatum reiciendis similique. Possimus earum sequi rerum. Exercitationem et omnis enim nulla temporibus et. Aut quam sint sunt autem maiores ut velit.', 0, 0, '1997-08-26 22:29:10', '2000-08-11 08:34:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (130, 30, 30, 'Dicta fugit fugiat culpa sunt laudantium et. Nihil vel in rerum. Alias sunt voluptate occaecati. Et debitis eos et veritatis magni.', 1, 0, '1985-03-04 05:12:00', '2001-02-01 03:06:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (131, 31, 31, 'Omnis aliquam incidunt at et maxime omnis. Eaque et et unde. Aut quos rerum cumque delectus.', 0, 1, '2012-08-05 00:17:54', '2002-01-28 02:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (132, 32, 32, 'Eveniet molestiae adipisci dolor omnis sint fugit. A ratione nihil dolore suscipit sed. Ea dolores reiciendis voluptatum vitae.', 1, 1, '1985-07-24 01:28:01', '1981-07-05 21:10:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (133, 33, 33, 'Occaecati pariatur aut ipsam voluptatum. Dignissimos cumque tempore fugit dolorem est. Necessitatibus laudantium illum cumque vitae rem sit et.', 1, 0, '1999-11-15 19:59:38', '1973-07-05 04:44:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (134, 34, 34, 'Exercitationem et similique quia eius quo. Excepturi excepturi officia quae. Corporis ratione aut libero expedita hic eos.', 0, 0, '2018-10-30 19:19:35', '2006-06-22 01:55:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (135, 35, 35, 'A molestias pariatur et nam fugiat. Quas nulla unde et repellendus. Quis itaque consequatur aut a rerum in.', 1, 1, '1974-02-20 13:35:21', '1986-03-21 02:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (136, 36, 36, 'Iusto vel perspiciatis quibusdam dolor est aliquam adipisci est. Velit et delectus soluta consequuntur blanditiis. Est eveniet quibusdam praesentium aliquid laboriosam cupiditate.', 1, 1, '2006-09-09 05:36:17', '2014-04-12 23:52:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (137, 37, 37, 'Enim pariatur minima deserunt explicabo maiores voluptas esse laudantium. Sapiente iure hic deleniti quos earum iste eum enim. Iure qui nemo sed quibusdam similique voluptatibus quia. Nihil id earum repudiandae et.', 1, 1, '2005-02-20 11:37:03', '2003-08-27 15:40:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (138, 38, 38, 'Sed odio non assumenda est. Numquam dolores aut minima porro minus voluptatem molestiae. Modi dicta iste qui. Sit qui eum ipsa atque asperiores suscipit labore.', 0, 1, '2011-01-31 08:47:26', '1970-03-25 03:29:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (139, 39, 39, 'Est quam et rerum. Voluptatem dolor saepe et suscipit ut porro. Cumque ea doloribus ut porro commodi. Omnis molestiae voluptates hic non.', 1, 1, '1986-08-04 04:39:02', '1981-06-13 03:48:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (140, 40, 40, 'Saepe eveniet consectetur numquam maxime labore impedit nemo. Commodi iste eveniet architecto mollitia. Ut aut harum nobis quae sit reiciendis.', 1, 1, '1974-04-14 15:08:35', '2014-09-09 18:02:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (141, 41, 41, 'Est qui nostrum sed eos reprehenderit doloremque laudantium. Saepe magni vitae nihil quia non ipsa. Non inventore illum enim laborum quaerat corporis ipsam quo.', 1, 1, '1982-06-09 14:26:13', '1991-06-07 23:14:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (142, 42, 42, 'Aut accusamus architecto quas velit nesciunt. Maiores at corrupti quam qui itaque. Autem sapiente quis numquam autem molestiae quo nulla. Aut enim laborum quam quo exercitationem. Id porro illum quia sit consectetur nihil consequuntur alias.', 1, 0, '2002-05-02 20:18:02', '1980-06-15 02:47:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (143, 43, 43, 'Impedit quidem quaerat cumque et laborum. Consequuntur cumque rerum cum dignissimos. Iste aliquam molestiae deleniti saepe rem dolores. Ipsum eum iure sequi assumenda porro magni.', 0, 0, '1980-07-30 13:22:11', '1990-10-15 19:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (144, 44, 44, 'Ea maiores nam tempore eaque qui rerum. Debitis delectus sed soluta repellat aut a et. Et voluptatibus velit suscipit autem doloribus.', 0, 0, '2020-02-28 06:54:33', '1991-10-22 13:00:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (145, 45, 45, 'Consectetur et repudiandae fugiat. Est voluptatem corporis consequatur. Iusto eos ratione sit repellendus voluptate autem aperiam officiis. Architecto repellendus harum error optio architecto similique sint.', 0, 1, '1984-02-22 22:06:45', '2014-02-02 18:03:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (146, 46, 46, 'Non nulla corrupti voluptatem dolorem possimus expedita sint. Optio quasi vel distinctio officia modi aut cupiditate. Id quo pariatur velit error itaque eligendi aut unde. Eaque repellat ipsam vitae maxime quis aut. Accusamus omnis rerum consequuntur porro.', 1, 0, '2004-09-10 15:24:09', '2007-11-03 04:54:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (147, 47, 47, 'Eos iusto minima fuga rerum. Tempore atque magnam magni ea quia tenetur est est. Quia eveniet reprehenderit voluptates iste. Repellendus ipsam officiis dignissimos architecto quidem sed.', 0, 1, '2006-02-20 14:47:10', '1986-04-15 03:15:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (148, 48, 48, 'Rerum corporis eaque accusamus est dolor quo architecto sapiente. Provident in iure consequuntur consectetur quia. Sed est dolores sunt ipsam officiis est. Cum nisi quae ad aut rem ut aut.', 0, 0, '2009-10-05 02:05:15', '2004-09-27 11:18:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (149, 49, 49, 'Tempora ipsam consequatur et autem voluptatum aliquid omnis. Cupiditate sed amet quo ut impedit molestiae. Cupiditate id rem et distinctio.', 1, 1, '1978-01-23 13:54:40', '1984-12-27 20:25:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (150, 50, 50, 'Dolor aut sint voluptatem. Et accusamus consectetur laborum quasi officiis quasi repellendus. Ut repellat accusamus et consequatur iure omnis inventore. Esse cumque totam labore numquam saepe et.', 0, 1, '1973-01-12 15:16:28', '1987-04-08 18:05:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (151, 51, 51, 'Et nam minus commodi tempora. Aperiam eum consequatur voluptatem laboriosam. Expedita aut et et in sed. In consequuntur illum eum et ipsa rerum quasi.', 0, 0, '2011-06-11 17:09:37', '1974-12-29 15:34:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (152, 52, 52, 'Dolorem in soluta qui praesentium nihil enim recusandae. Cupiditate eaque sit atque sed. Provident quibusdam beatae ut et vero in. Voluptatem rerum sit nihil.', 0, 1, '1985-06-16 02:48:04', '1991-10-17 15:06:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (153, 53, 53, 'Eos itaque omnis ipsum dignissimos magni. Est modi ratione voluptatem hic alias ad. Quasi aut in sed dolores.', 0, 0, '1973-03-25 03:47:11', '2006-04-01 11:43:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (154, 54, 54, 'Quae corporis est fugiat. Ex accusantium sapiente neque alias. Perferendis dolorem aliquam et ipsam officiis porro iusto.', 0, 0, '2013-06-22 18:44:00', '2020-02-26 10:27:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (155, 55, 55, 'Tempora expedita tenetur voluptatem blanditiis quo. Voluptatem est error minus consequatur. Quis eveniet rem voluptatem. Quia quia quod quia sapiente nostrum odit qui. Magnam et quos ab neque quidem odit.', 1, 0, '1975-12-01 09:20:03', '2000-06-16 01:45:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (156, 56, 56, 'Magni laboriosam eos numquam qui repudiandae officia velit doloribus. Dolores sit illum nulla aliquam ipsa. Ratione omnis recusandae sunt nisi. Saepe voluptatem sint et voluptas.', 0, 1, '1971-12-07 17:43:45', '2000-05-02 07:27:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (157, 57, 57, 'Ut provident porro sapiente aperiam. Iure alias ut vel iusto enim in voluptates.', 0, 1, '1993-01-14 01:17:05', '1981-10-22 05:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (158, 58, 58, 'Quasi enim beatae exercitationem. Sed adipisci voluptate expedita magni magnam. Adipisci autem nobis nihil. Sapiente mollitia provident quia facilis. Veniam recusandae iusto ut.', 0, 1, '1970-05-03 11:14:33', '1989-02-25 18:32:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (159, 59, 59, 'Sunt aut mollitia numquam praesentium. Voluptate illum maxime alias qui. Aut ut dignissimos doloremque ratione ut error voluptas.', 1, 0, '2005-04-17 22:59:43', '1976-05-16 07:52:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (160, 60, 60, 'Earum aliquid est et voluptas ullam doloremque optio. Qui amet tempora quos soluta. Et voluptatem omnis dolores eum enim recusandae.', 1, 0, '1973-11-01 19:58:18', '1987-12-06 15:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (161, 61, 61, 'Vero excepturi minima et ipsa culpa quas unde. Quibusdam cumque suscipit et est id.', 0, 0, '1995-08-04 15:37:47', '2000-10-09 04:59:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (162, 62, 62, 'Ducimus corporis voluptas et velit aut. Consequatur et voluptas et illum tenetur ex. Asperiores animi dolores provident ullam quasi voluptate.', 1, 0, '2012-02-10 08:07:18', '2018-06-26 15:39:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (163, 63, 63, 'Autem error fugiat soluta officiis et eaque nemo. Sit aut et deleniti qui ipsum consectetur rerum. Nemo nostrum est architecto facere facilis nobis illo.', 1, 1, '2001-06-22 08:31:32', '1976-04-20 06:59:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (164, 64, 64, 'Ullam facere iusto animi voluptatum ipsam ex. Culpa perferendis aut recusandae non. Totam et eligendi itaque laboriosam nobis qui doloribus. Ipsam asperiores sunt voluptas. Fugiat error minus totam vitae deserunt.', 0, 1, '1982-03-22 11:28:39', '1992-02-02 14:18:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (165, 65, 65, 'Sint est nihil earum officia sunt magnam in. Minima voluptates ut soluta cum.', 1, 0, '1991-08-02 09:56:39', '1995-10-20 03:24:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (166, 66, 66, 'Enim sint eos est consectetur et corporis adipisci. Odit qui velit omnis explicabo alias.', 1, 0, '1988-05-22 08:34:43', '2007-06-03 04:08:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (167, 67, 67, 'Fugiat aliquam vel aut alias. Quis reprehenderit quis odit sunt perspiciatis placeat ea. Fugiat id ipsa ipsa voluptatem qui laborum voluptate non. Perferendis id aut quidem laborum laudantium sit quibusdam. Autem est sunt ad eaque praesentium nihil laboriosam consequatur.', 1, 1, '1991-08-20 23:23:11', '1974-05-31 08:09:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (168, 68, 68, 'Voluptatum repellat voluptatem incidunt impedit quae quo rerum error. Quaerat ea ut incidunt reiciendis eius provident inventore.', 0, 0, '2018-05-03 23:57:24', '2020-09-07 00:07:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (169, 69, 69, 'Ut doloremque at tempore. Molestias aspernatur in magnam nulla sunt fugit vitae aut. Velit ullam dicta asperiores est. Quia nobis molestias veniam neque.', 1, 1, '1978-12-05 04:01:58', '1991-04-03 12:36:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (170, 70, 70, 'Qui ex minima enim tempora cupiditate. Adipisci ea error eos eum a dicta quo. Cum aut aut omnis soluta qui accusamus tenetur. Nam sit dolores laboriosam dolorem aperiam laudantium et. Quisquam qui inventore dolorem.', 0, 1, '2004-02-07 16:16:42', '1975-06-24 21:45:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (171, 71, 71, 'Dignissimos quaerat similique et ullam eligendi qui qui nisi. Et natus id fuga. Rem cupiditate consectetur dolores asperiores voluptatem voluptatem fugiat sunt. Sint minus qui numquam est debitis eligendi dolores dolor.', 1, 0, '1988-07-19 15:28:17', '2020-08-16 01:57:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (172, 72, 72, 'Explicabo ab doloribus velit excepturi. Quibusdam eaque excepturi iste deleniti. Voluptatum dolorem quas possimus quia ut inventore. Illo minima minima natus iure corrupti corporis consequatur.', 1, 0, '2009-09-12 00:43:49', '2016-01-27 04:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (173, 73, 73, 'Dolore et mollitia neque est in voluptatem dolorem. Qui totam eos molestiae. Velit nihil doloremque sed voluptatibus aliquam. Ut fuga laborum quibusdam consequatur quos esse voluptatum.', 0, 1, '1973-03-08 06:24:41', '2006-06-19 01:11:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (174, 74, 74, 'Sunt quis ea quod dolorum reprehenderit fugit dolorem id. Occaecati quaerat a ex. Id suscipit et laudantium repudiandae. Et eveniet qui optio eligendi aut est veniam. Accusantium sequi aut et et voluptatem.', 1, 1, '1982-01-20 06:31:43', '1973-08-21 22:16:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (175, 75, 75, 'Officia provident quaerat enim qui itaque quia. Repellat non nulla earum repellendus repudiandae. Aut quis ullam atque vitae similique aut ipsa. Voluptatibus nihil eos perferendis facilis reprehenderit.', 1, 1, '1979-08-21 11:31:39', '1991-07-14 09:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (176, 76, 76, 'Et nostrum nemo quae facilis temporibus. Sit quia qui excepturi at.', 1, 1, '1995-08-23 18:40:20', '2000-10-15 10:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (177, 77, 77, 'Ex aperiam modi aperiam pariatur reiciendis ut sit. Eius beatae laborum dolorem. Corporis maxime sunt quaerat dignissimos fuga temporibus. Optio et esse minima totam eum qui fugiat.', 1, 0, '2008-01-26 20:40:33', '1970-08-22 02:04:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (178, 78, 78, 'Omnis doloremque est voluptas consequatur reiciendis. Perferendis excepturi similique et eius repellat a minus. Et aut dolorem est ipsum ut reprehenderit.', 1, 0, '1995-11-29 13:47:51', '1989-02-19 03:03:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (179, 79, 79, 'Molestiae dolorum eos et ducimus earum ad perferendis ad. Qui atque minus animi itaque cupiditate aut. Voluptas blanditiis ipsam et quaerat voluptatem accusamus fugiat ut.', 1, 0, '2003-03-13 11:32:09', '1990-12-05 14:47:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (180, 80, 80, 'Dolore laudantium voluptatibus quae omnis sit. Non est sed sunt magnam iste. Vero quod soluta saepe est.', 0, 1, '1974-10-16 07:46:11', '1989-01-13 05:35:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (181, 81, 81, 'Eum iure consequatur occaecati voluptatem esse qui numquam. Officiis aspernatur dolor est vel. Et dolore et quis vero maiores. Voluptates voluptatum illum unde.', 0, 0, '1991-11-29 02:19:11', '1996-11-08 23:52:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (182, 82, 82, 'Excepturi dolorem nihil nihil sunt earum ullam possimus laborum. Rerum itaque aliquid aperiam doloribus quia blanditiis officiis. Distinctio inventore eius voluptas ullam eius nulla nesciunt. Culpa sunt non alias non.', 0, 1, '1992-07-01 19:16:01', '1991-07-09 15:36:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (183, 83, 83, 'Consequatur voluptatem quis quisquam minima vel omnis eos iure. Voluptatibus et nemo at aut est accusamus officia. Est sed magni quo ex placeat deserunt. Optio dolores impedit ea voluptatem quia molestiae rerum.', 1, 0, '1986-08-31 21:27:12', '1986-03-25 20:15:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (184, 84, 84, 'Consequuntur culpa omnis dolor voluptatum molestias doloribus nemo cumque. Culpa quia autem et aspernatur tempora. Eum tempore et consequatur et. Omnis amet dolorum occaecati voluptates.', 1, 0, '2015-10-08 07:26:09', '1998-01-23 15:07:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (185, 85, 85, 'Accusantium distinctio dolorem doloremque quos. Esse magnam voluptatem autem voluptas est. Odio suscipit incidunt et cum praesentium in numquam qui.', 1, 1, '2006-02-07 11:07:39', '2010-12-26 23:31:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (186, 86, 86, 'Quae eligendi dolorum ut necessitatibus voluptatem dolores. Veritatis molestiae dolor repellendus hic culpa aspernatur placeat. Quibusdam consequatur quo iste nostrum sed qui est.', 0, 0, '1982-04-19 21:30:51', '1982-05-21 06:06:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (187, 87, 87, 'Ut delectus doloremque nobis aliquam dignissimos quia laborum delectus. Fuga laborum voluptates dolorum occaecati autem modi voluptatem. Harum voluptas error velit impedit officia nam est aperiam. Deleniti qui minima aut laudantium.', 1, 1, '1985-07-03 09:37:41', '1987-02-19 10:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (188, 88, 88, 'Enim recusandae dolor nam quam est quod et et. Quia velit facilis error ea repellat tempora dolore et. Voluptatem ex id sit. Vitae enim amet reiciendis sint et.', 0, 1, '1975-12-09 23:52:44', '1992-06-14 06:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (189, 89, 89, 'Aut molestiae quisquam voluptate voluptatibus laborum iure autem velit. Vel nulla quia impedit est ad quis quia. Enim dignissimos ut dolor. Atque incidunt pariatur eum magnam exercitationem eaque.', 1, 0, '2012-07-04 13:42:46', '2006-01-03 01:01:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (190, 90, 90, 'Provident odit iste mollitia eligendi quo nemo. Vitae qui et ea voluptas accusantium numquam facilis. Veritatis ex voluptas delectus. Iste qui neque earum perspiciatis dolorem enim ad.', 0, 0, '2009-10-27 23:09:56', '2015-12-21 01:35:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (191, 91, 91, 'Mollitia rerum quia qui voluptates dolore omnis fugiat autem. Quidem ipsa fugiat explicabo accusantium mollitia officiis. Qui occaecati sit assumenda quam saepe at ab. Consequuntur cum aut rerum voluptatem officia assumenda.', 1, 1, '1986-11-05 17:27:00', '1994-03-17 16:04:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (192, 92, 92, 'Non quae eum repudiandae asperiores. Ratione temporibus dolor velit consequatur ea. Autem rerum tenetur porro voluptatum placeat corrupti. Optio corrupti voluptatibus hic qui nihil voluptatem nihil.', 0, 1, '2019-09-17 22:44:40', '1999-04-27 15:28:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (193, 93, 93, 'Error officiis quia eius autem sequi. Est aperiam non hic voluptas. Et dolorum explicabo qui asperiores libero quisquam eos.', 0, 0, '2005-07-09 14:13:41', '2019-09-06 22:44:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (194, 94, 94, 'Sunt veniam recusandae omnis animi voluptas in aliquid. Quia reiciendis sit et perspiciatis quaerat nesciunt et praesentium. Eaque incidunt magnam dicta tenetur suscipit ducimus. Laboriosam aut dolores qui vel.', 1, 1, '1985-05-01 05:21:26', '1997-01-16 06:11:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (195, 95, 95, 'Quis et sint voluptas autem. Sint ipsum ut qui iusto quo aperiam et.', 0, 0, '1984-07-10 05:51:07', '2019-04-26 04:44:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (196, 96, 96, 'Velit est culpa minus. Ut fuga impedit inventore consequatur vel ipsum numquam. Deleniti et esse nam et exercitationem. Consequatur quo repellendus eius eaque fugiat quisquam aut qui.', 1, 1, '1985-06-13 00:37:11', '1979-01-31 11:52:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (197, 97, 97, 'Sit ducimus quaerat dolores qui eum omnis eum rerum. Ut a et eius necessitatibus. Mollitia velit pariatur perferendis explicabo velit modi.', 1, 0, '2011-05-06 02:10:24', '1981-09-21 18:18:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (198, 98, 98, 'Unde sit voluptatum voluptas consequuntur voluptas. Laborum quas ullam est ut. Beatae tempore earum corrupti cupiditate. Id vero sed repellendus laborum id iusto.', 0, 1, '1997-04-13 20:57:45', '2003-04-20 13:30:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (199, 99, 99, 'Corporis blanditiis earum maxime quos explicabo. Optio natus nostrum magnam sequi non est optio laboriosam. Aperiam dolorum id in corrupti. Laborum sequi quis aliquid culpa sed laboriosam voluptatum.', 1, 0, '2010-03-31 22:12:15', '1998-04-08 15:11:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (200, 100, 100, 'Impedit labore quo id occaecati eius id fugit. Similique tempore pariatur neque. Quisquam enim id excepturi quaerat amet repellendus.', 0, 0, '2016-09-04 16:53:11', '1970-05-07 06:07:49');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '1970-11-13', 1, 'Sint repellendus reiciendis au', 'Rustyberg', '336959975', '2011-06-29 07:09:15', '2014-11-03 08:50:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '2012-08-22', 2, 'Quas quaerat molestias quo con', 'North Katarina', '', '2000-06-15 19:06:38', '2011-08-29 20:22:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '1993-02-11', 9, 'Porro blanditiis iusto ullam v', 'Adonishaven', '52618563', '1989-09-27 16:18:28', '1981-02-05 19:51:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '1971-01-26', 3, 'Ut sint aut non cupiditate nem', 'South Jasen', '4278607', '2002-12-02 20:17:42', '1979-06-07 07:57:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '2011-08-17', 9, 'Deleniti ullam id necessitatib', 'Port Toreymouth', '315169982', '2017-08-27 03:33:42', '1983-03-20 17:03:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '1984-01-13', 1, 'Sed dolores ducimus consectetu', 'Gulgowskiview', '', '1987-09-10 12:29:01', '2017-10-26 13:55:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1984-10-14', 3, 'Distinctio illum voluptate atq', 'Port Urban', '8', '2014-03-19 11:09:42', '2004-03-30 20:01:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '1986-11-16', 9, 'Neque quia eum similique ex eu', 'Vedamouth', '48026', '2014-05-18 13:55:35', '1985-10-07 16:23:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '1978-01-28', 1, 'Est culpa repudiandae blanditi', 'Bechtelarstad', '6136', '2010-06-30 23:16:52', '1979-08-19 02:16:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '2006-10-14', 0, 'Enim eum sapiente amet culpa c', 'East Creola', '593', '2015-03-15 04:15:09', '2008-09-18 19:00:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '2010-06-11', 2, 'Vero nesciunt quo voluptatem q', 'Myrnaside', '2575', '1970-11-23 02:40:35', '1985-09-20 22:36:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '1979-07-23', 4, 'Deleniti expedita placeat dolo', 'Tylerview', '774500', '2017-06-25 17:07:13', '2016-07-08 02:42:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '2016-12-24', 3, 'Quisquam et aut et cumque odio', 'South Antonettaland', '616559', '2020-12-20 04:34:49', '1971-03-05 15:07:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '1970-10-01', 1, 'Odit sunt hic perferendis et q', 'West Gregorio', '95865', '2005-01-06 16:49:58', '1970-02-22 18:52:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '1984-05-25', 4, 'Possimus quod ea sit. Facere e', 'North Colbyfurt', '5105487', '1989-04-13 18:53:52', '1976-05-10 03:17:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1970-08-21', 6, 'Omnis dolorem aliquam enim iur', 'Alfredfurt', '91377', '1987-05-19 21:13:01', '2014-06-03 14:32:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '2016-08-04', 7, 'Atque ut voluptate dolores. Co', 'East Giovanibury', '', '1983-05-04 19:05:02', '1976-02-26 03:13:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '1996-02-23', 5, 'In ratione fugit non repellend', 'Port Rodolfo', '80401', '2016-03-09 10:27:28', '2002-05-02 23:40:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '2017-02-15', 1, 'Ut consectetur earum est expli', 'Lavinialand', '35434454', '2018-09-06 00:27:53', '1989-05-04 01:02:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '2009-05-03', 5, 'Exercitationem et itaque solut', 'Lake Kelliland', '234', '1987-08-25 01:00:23', '2020-02-09 09:16:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2009-04-03', 1, 'Ipsum aut ea quod autem quam. ', 'West Edwina', '725424461', '2017-10-25 01:42:17', '2007-01-08 04:04:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '1999-06-01', 5, 'Consequatur voluptatem reprehe', 'East Eulaliafurt', '1321', '1985-10-28 16:05:50', '1987-09-13 10:59:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '2017-11-16', 3, 'Animi ullam qui ad vitae. Mole', 'Elnaberg', '49639558', '1991-11-23 19:46:00', '2015-06-09 18:12:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '2008-08-01', 9, 'Quibusdam voluptatem veniam qu', 'North Jordane', '', '2006-06-19 05:25:14', '1979-08-14 06:17:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '1975-02-22', 6, 'Voluptatem fuga quibusdam atqu', 'East Dereck', '8707', '2016-06-08 17:50:19', '1985-01-23 12:55:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '2005-08-11', 5, 'Itaque voluptates veritatis et', 'West Jaden', '7', '1976-02-06 20:57:07', '2019-03-09 09:34:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '2014-05-10', 5, 'Ut repudiandae eum illo odio. ', 'North Robertaberg', '865942', '2007-01-23 15:32:11', '1987-01-18 05:36:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '1976-04-25', 5, 'Quis omnis eum laborum necessi', 'Lemketown', '103297', '1976-05-05 00:12:17', '1984-04-20 15:53:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '1995-01-08', 4, 'Maxime soluta doloribus rerum ', 'Kadefort', '7475', '1970-07-24 17:21:21', '2009-07-16 10:54:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1997-01-10', 9, 'Et laboriosam et tenetur. Sit ', 'North Mohammadton', '42421551', '1975-08-19 07:47:02', '1976-01-17 09:53:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '1973-12-15', 0, 'Aut labore velit molestiae qui', 'West Eribertoton', '9', '1995-02-13 16:36:54', '2013-09-17 22:15:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '2004-01-22', 9, 'Sunt molestias aut soluta dist', 'Lueilwitzshire', '', '1985-11-16 00:39:13', '1998-09-14 10:47:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '1980-03-05', 5, 'Consequuntur quia laborum et. ', 'West Laurettatown', '215124952', '2011-04-29 05:19:25', '2011-05-31 00:30:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '2001-09-05', 3, 'Dolores reiciendis est officia', 'Twilafurt', '8', '2017-07-20 19:26:26', '2003-03-22 10:55:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '2015-07-05', 7, 'Odit sint pariatur officia ut ', 'Port Laurine', '36', '2004-06-19 03:46:30', '2007-02-06 12:41:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1979-05-28', 8, 'Officia nisi assumenda velit v', 'North Paulineton', '31304980', '1977-03-21 17:52:37', '1988-07-10 00:08:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '1996-07-22', 4, 'Et aliquid sit quod totam recu', 'Lake Zora', '95', '1986-10-31 20:35:11', '1990-06-24 02:16:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '1981-09-08', 4, 'Magni eum ipsum perferendis se', 'Port Demondmouth', '', '1981-05-10 00:34:43', '2016-10-30 05:04:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '1982-04-13', 3, 'Inventore labore recusandae sa', 'Port Coltonview', '5316', '1992-09-11 15:05:52', '1990-11-22 22:18:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '2010-07-17', 6, 'Officiis odit voluptatem eum n', 'Rodrigueztown', '299', '1987-03-28 01:25:27', '1986-04-24 23:08:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '1980-03-16', 6, 'Molestiae aut ut quod quas. Ex', 'North Kayceemouth', '888794', '1996-02-01 12:51:52', '2015-03-04 22:30:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '1992-03-08', 7, 'Explicabo ea autem est consequ', 'Stoneport', '46218', '1984-05-15 15:51:01', '1997-05-22 08:52:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '1998-08-28', 2, 'Ratione distinctio facilis qui', 'Lake Karlitown', '170242039', '2006-04-08 07:10:31', '2002-02-03 14:48:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '2007-04-16', 0, 'Tenetur qui vel unde ratione. ', 'Port Dashawn', '96949', '1973-10-14 03:13:56', '2001-06-02 07:41:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '2016-07-30', 6, 'Quam natus vel quas sunt cupid', 'Kunzestad', '931246', '2013-08-25 02:14:53', '1971-04-28 17:06:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '1994-11-17', 8, 'Et modi quas minus aspernatur ', 'Santinomouth', '43281516', '2002-11-15 23:06:11', '1976-03-20 10:50:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '2020-12-22', 6, 'Molestias dolorem sit sunt opt', 'Effertztown', '7620250', '1999-02-08 21:04:39', '2007-01-09 04:04:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '1989-01-11', 1, 'Voluptas nihil magnam vero vol', 'Dasiaton', '', '2013-03-04 18:50:04', '1973-09-28 08:23:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '1981-12-23', 0, 'Debitis voluptatem quis saepe ', 'Elainahaven', '1', '1974-04-21 19:31:17', '1986-06-04 05:25:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '1987-11-02', 6, 'Impedit quia et illo praesenti', 'New Hassiemouth', '933242', '1995-05-24 05:06:14', '1987-12-29 23:16:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '1999-07-02', 7, 'Voluptates vel quisquam qui pl', 'Arneburgh', '6564', '2014-09-05 07:16:41', '2013-04-24 21:24:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '1970-03-06', 5, 'Veritatis veniam fugiat nisi n', 'Lake Enid', '643', '1996-12-04 07:26:05', '2002-09-27 14:43:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '2001-02-28', 5, 'Modi deleniti quia rerum vel l', 'Lake Skye', '1138', '2002-05-28 19:29:12', '1997-04-27 13:36:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '2002-03-25', 0, 'Eius vel voluptates minus illu', 'Aglaefort', '4853', '1996-06-26 15:53:05', '2007-12-10 07:43:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '2001-08-02', 2, 'Voluptas doloribus est blandit', 'Strackefurt', '5975775', '1980-11-24 19:17:57', '1979-03-18 16:56:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '2010-12-15', 7, 'Ab non distinctio eum vitae et', 'Port Isac', '48882234', '1981-01-09 19:55:08', '2004-01-06 02:45:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '1993-04-09', 3, 'Cumque et et est et impedit. A', 'Grimesland', '12621', '1994-12-05 23:29:29', '1981-07-24 10:36:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '2013-01-30', 6, 'Et est autem asperiores beatae', 'Oscarfort', '4', '2009-06-15 21:49:38', '2011-10-07 22:49:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '1972-01-15', 6, 'Unde debitis in a quia est dol', 'South Ella', '25821520', '2014-03-14 21:27:54', '1990-12-21 11:21:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '1978-12-18', 7, 'Maiores soluta et similique cu', 'East Abbigail', '4', '1976-04-30 19:41:23', '1989-10-01 16:40:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '1976-08-15', 6, 'Quia qui dolor ipsa voluptatem', 'Boehmton', '16143', '2020-12-23 19:56:46', '1997-11-06 23:40:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '1975-02-11', 7, 'Commodi incidunt nostrum velit', 'Marysefurt', '348937', '2014-05-20 07:24:06', '2006-12-15 05:36:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '1996-06-24', 8, 'Sint suscipit quis est accusan', 'New Annabeltown', '4351617', '1986-02-06 17:37:07', '1993-04-06 15:39:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '1998-08-14', 4, 'Eveniet non non esse ipsam dol', 'South Dahliafort', '8264', '2006-06-25 15:49:19', '1998-05-28 20:14:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '1988-07-23', 6, 'Inventore explicabo vero cupid', 'North Jabaristad', '', '1990-05-23 17:57:07', '2009-11-13 19:05:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '1997-09-30', 6, 'Quisquam excepturi sapiente ut', 'Dollyfurt', '259', '2011-02-15 01:28:16', '1970-01-19 22:21:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '2015-03-10', 2, 'Nisi debitis sed reiciendis do', 'Port Conor', '553959', '1985-10-27 01:41:26', '1995-05-17 09:15:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '1999-04-03', 3, 'Nulla autem error aliquid quae', 'West Arvidfurt', '4', '2011-02-24 07:09:46', '1977-06-09 10:16:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '1996-12-29', 8, 'Dolorem nesciunt itaque qui id', 'Carolineport', '', '1979-07-10 03:43:44', '2005-03-07 23:24:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '1972-07-26', 2, 'Veritatis nesciunt neque sunt ', 'East Elouiseview', '6', '2018-06-22 09:57:09', '1993-02-24 05:40:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '2015-04-02', 0, 'Qui voluptates nulla omnis et ', 'West Camilaview', '8746', '2007-04-21 08:35:04', '2014-08-17 08:19:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '1985-03-30', 6, 'Aut voluptas deleniti vitae qu', 'Whiteland', '63172', '1994-09-05 01:01:41', '2015-08-14 06:28:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '2007-01-28', 3, 'Sit quis mollitia unde sed id ', 'North Justenchester', '4201616', '1973-12-20 20:53:11', '1975-11-09 00:50:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '1991-08-03', 6, 'Dolores delectus libero sit au', 'Gottliebview', '', '1974-07-27 17:20:02', '2002-04-03 06:50:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '2015-11-18', 5, 'Ut ut tempore eum deleniti sol', 'Revaburgh', '5253', '2016-09-22 00:53:44', '1992-12-03 08:05:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '1977-07-17', 9, 'Dolores dignissimos ea debitis', 'Denesikside', '977144', '2021-01-20 17:37:41', '1973-02-10 01:21:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '1983-07-23', 6, 'Facilis et adipisci aut non. C', 'New Henry', '', '1995-02-23 11:39:42', '2010-09-13 13:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '1995-03-21', 4, 'Aut expedita ipsa eligendi inc', 'North Sigridside', '3', '1988-06-25 03:58:29', '2018-03-28 08:24:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '2008-05-15', 2, 'Ratione nam et quod voluptate.', 'Bryceburgh', '364765422', '1971-03-29 12:37:09', '2016-02-26 05:40:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '1992-01-07', 3, 'Ut sit molestias voluptatem se', 'Konopelskiview', '3223', '1973-07-20 10:29:33', '1990-04-15 06:26:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '1976-01-05', 2, 'Numquam porro consequatur ut e', 'Schmitttown', '215174', '1985-02-18 15:44:02', '1991-01-12 03:15:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '1977-11-14', 0, 'Ipsam qui enim perferendis nob', 'East Barney', '36047', '1971-04-11 10:20:53', '2008-09-29 11:46:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '2012-08-28', 2, 'Aliquid natus provident incidu', 'East Audiestad', '1525', '2006-08-29 07:57:12', '1976-10-29 03:31:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '1994-07-31', 4, 'Eveniet voluptatum repellendus', 'Orlotown', '', '1992-03-31 18:07:59', '1985-02-19 20:44:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '1998-12-24', 9, 'Qui maxime adipisci est quaera', 'New Madieton', '4097', '1980-12-08 22:38:42', '1996-08-05 02:38:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '2014-01-23', 1, 'Et porro exercitationem id ips', 'Lake Eldaburgh', '26', '1993-03-13 22:42:50', '1977-02-28 19:59:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '2008-09-28', 3, 'Placeat quia distinctio ut. Se', 'Gibsonhaven', '7706', '1981-06-15 22:32:25', '1981-03-30 08:19:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '2000-07-29', 4, 'Impedit dolorem qui omnis aut.', 'Mullerfurt', '78270', '1981-03-29 12:34:42', '2012-09-08 07:19:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '1979-10-09', 3, 'Et repellendus eum ipsam eum. ', 'Shyannfort', '', '2018-06-29 22:36:43', '2008-07-28 11:37:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '2003-02-21', 3, 'Rerum deleniti quae porro aspe', 'New Marlen', '38', '1973-11-01 18:18:45', '2013-05-27 13:01:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '2007-07-23', 0, 'Nam corporis molestiae et volu', 'Rachellestad', '381644696', '2005-12-13 01:04:33', '1995-05-08 09:38:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1997-10-31', 2, 'Placeat mollitia et eaque est ', 'Pfannerstillton', '196989104', '2018-06-08 01:43:53', '2014-02-16 15:15:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '2017-01-25', 7, 'Modi ea neque dicta numquam ip', 'Port Zoey', '819557437', '1983-12-25 01:53:54', '1974-09-14 11:29:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1993-03-01', 0, 'Numquam officiis porro exercit', 'New Goldenport', '85523992', '1985-10-28 03:37:29', '1980-11-05 07:46:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '1987-01-12', 2, 'Atque eius repudiandae laborum', 'South Makaylaberg', '561116', '2007-09-10 13:53:07', '1970-08-31 15:03:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '2016-03-11', 4, 'Voluptatibus aut ut corporis. ', 'North Percyburgh', '4379', '2005-10-27 07:51:52', '2015-05-16 19:08:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '2020-11-13', 1, 'Laudantium nam nobis mollitia ', 'West Caroline', '36', '2007-11-30 20:21:03', '2001-03-12 22:21:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '1970-02-26', 5, 'Corrupti temporibus explicabo ', 'North Ardithshire', '', '1974-12-11 09:25:53', '1976-06-14 00:53:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '2015-01-08', 5, 'Hic ut eum non sit qui cumque ', 'Jennyferside', '86523797', '1999-01-31 11:21:11', '1979-05-09 02:29:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '1973-06-28', 2, 'Autem nesciunt occaecati quia ', 'Baileyfurt', '434734147', '1977-11-03 13:37:21', '1998-05-05 20:46:04');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Jerod', 'Langosh', 'blair.stiedemann@example.com', '1-508-680-5192', '1993-12-19 04:29:07', '1992-12-05 07:37:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Cordie', 'Waelchi', 'abartell@example.com', '(083)777-5771', '1989-04-03 21:44:33', '1971-01-30 02:34:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Mariela', 'Lindgren', 'farrell.jettie@example.com', '269-927-3089x574', '1987-01-09 09:23:25', '2008-04-24 06:08:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Lura', 'Leuschke', 'brakus.carolina@example.net', '+59(8)4891029581', '2016-02-01 20:31:30', '1981-12-10 12:09:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Jerome', 'Homenick', 'harmon58@example.com', '411.845.5032x68025', '2017-02-10 17:47:26', '1971-05-18 13:36:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Giovanna', 'Schroeder', 'hrunte@example.org', '00117236008', '1978-05-08 14:03:43', '2009-11-29 07:00:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Virginie', 'Hermann', 'jerrold.muller@example.com', '098-840-4947', '2005-02-27 20:29:44', '1979-11-24 07:22:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Candida', 'Lehner', 'van.runte@example.com', '903.592.1423x57289', '2015-12-26 12:41:32', '1971-03-08 11:59:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Cecelia', 'Ledner', 'ztromp@example.com', '(003)426-2292x807', '1999-04-26 13:26:43', '2004-11-29 05:45:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Meagan', 'Purdy', 'pmills@example.org', '190.590.8966', '2017-08-05 14:53:34', '1996-12-03 05:36:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Elenor', 'Morissette', 'xleuschke@example.org', '06366898613', '2012-09-20 01:58:03', '1990-12-04 20:03:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Damian', 'Reichel', 'omurazik@example.com', '024-923-7898', '2009-01-14 18:34:48', '1978-10-07 19:22:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Bernadette', 'Mann', 'jettie.nikolaus@example.net', '(706)714-2019x71295', '1986-09-22 07:08:43', '1989-10-02 06:19:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Marquis', 'Herzog', 'zsteuber@example.net', '753-986-7227', '1978-03-19 13:19:07', '2003-04-30 00:58:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Gerda', 'Wunsch', 'kutch.armand@example.net', '129.467.2237x51280', '1991-10-22 22:19:24', '2001-08-12 06:32:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Gerda', 'Larson', 'hortiz@example.net', '1-498-861-7053', '1991-03-29 06:28:18', '2019-08-16 10:01:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Else', 'Boyle', 'o\'keefe.alford@example.org', '(174)363-6626x6853', '2014-12-19 17:04:13', '1997-06-16 16:41:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Rosalinda', 'Larson', 'eric53@example.org', '357.868.6350x592', '1983-02-04 03:33:07', '2008-03-27 04:59:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Vida', 'Little', 'enrico86@example.net', '177.748.0687x845', '1992-04-12 23:21:12', '1977-04-27 18:13:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Noble', 'Schulist', 'oswaldo.collins@example.org', '972.390.9128x14548', '2003-01-28 09:31:02', '2019-06-04 07:56:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Pedro', 'Carroll', 'okuneva.liliane@example.com', '1-666-581-4686x62704', '1975-04-13 12:07:17', '1978-03-09 15:01:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Shane', 'Lynch', 'rutherford.jevon@example.net', '(667)716-0405', '1973-04-08 09:09:50', '1989-05-29 21:36:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Rhea', 'Rosenbaum', 'powlowski.guiseppe@example.net', '(190)469-5735x96617', '1972-03-20 10:55:15', '1994-02-12 21:48:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Forrest', 'Yundt', 'beaulah.johnston@example.org', '173.645.3735x5093', '1990-09-23 20:46:42', '2011-07-02 13:25:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Erika', 'Aufderhar', 'jameson.auer@example.com', '003-984-6314x16838', '2012-11-01 08:30:41', '1996-04-24 08:22:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Jakob', 'Willms', 'xgerhold@example.org', '057-719-3465x992', '2017-04-26 02:44:31', '1981-07-16 19:58:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Edmond', 'Blick', 'pollich.emmitt@example.com', '840-622-3584', '2021-02-05 17:13:31', '2014-01-02 08:51:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Della', 'Runte', 'reynolds.coty@example.net', '(477)374-0793x01311', '2010-02-18 20:09:02', '1982-04-08 12:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Dustin', 'Bechtelar', 'charlene96@example.net', '1-654-881-0790x8933', '1990-05-10 01:31:28', '1970-09-21 13:37:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Vicente', 'Fahey', 'brandy.lockman@example.com', '1-540-096-3392', '2010-03-09 09:36:15', '1994-03-11 05:43:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Abigail', 'Mayert', 'tevin66@example.com', '1-703-657-5562', '2011-04-22 00:12:59', '1982-12-01 10:21:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Arlie', 'O\'Connell', 'jaydon.konopelski@example.org', '(792)273-5359x4798', '1976-03-12 05:19:18', '1984-09-20 12:49:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Quinten', 'Langosh', 'ebert.justen@example.com', '05111828722', '1972-11-15 20:50:13', '2004-04-28 16:11:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Henri', 'Kautzer', 'uokuneva@example.net', '(091)025-8895x44199', '2002-08-15 00:12:15', '2012-02-26 18:40:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'April', 'Upton', 'nicolas.cristopher@example.com', '197.170.3336x160', '1993-12-12 04:08:36', '1982-03-23 02:17:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Jamaal', 'Weber', 'yundt.edison@example.net', '1-706-565-4220x706', '1992-12-11 13:14:22', '1984-11-04 14:08:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Sister', 'Champlin', 'anderson.jacky@example.org', '1-568-285-8041x90006', '1981-02-03 11:22:45', '1980-07-20 18:23:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Darrin', 'Luettgen', 'cruz39@example.com', '1-428-082-8052', '1997-07-29 03:35:39', '2008-07-15 22:37:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Abdullah', 'Schmeler', 'adaline17@example.org', '1-379-499-6427', '1999-03-24 00:04:58', '1975-05-22 23:12:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kay', 'Stiedemann', 'glenda58@example.com', '1-862-446-0006', '2009-01-07 00:55:48', '1979-01-23 11:15:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Mikayla', 'Zieme', 'tate.baumbach@example.net', '478-065-3454x541', '1982-01-05 11:13:43', '1984-09-21 19:26:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Ron', 'Kessler', 'zolson@example.com', '431-038-7095x473', '1982-06-19 07:18:30', '1997-10-30 10:08:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Anderson', 'Dicki', 'davon81@example.net', '03304417202', '1989-07-06 22:29:38', '2020-01-19 09:57:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Guy', 'Becker', 'kihn.noble@example.com', '+42(0)2910409150', '2001-12-01 14:26:46', '2004-07-14 21:31:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Abbie', 'Barrows', 'peter03@example.com', '(790)939-7205x9891', '1998-11-19 19:11:48', '2017-06-18 20:59:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Thora', 'Grady', 'gkris@example.net', '1-923-179-8527', '1981-10-30 11:30:48', '2010-07-15 15:39:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Clay', 'Crona', 'bernice02@example.org', '(090)959-3067x79010', '1990-05-01 18:51:21', '1997-01-05 01:28:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Rhianna', 'Altenwerth', 'leanne.hilpert@example.com', '747-075-4736', '1982-01-12 14:24:59', '1978-04-28 04:15:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Aletha', 'Prohaska', 'jromaguera@example.org', '914-671-7447', '2015-02-25 19:34:59', '1972-09-03 18:34:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Amelie', 'Kertzmann', 'mcormier@example.org', '(614)062-7775x230', '2002-01-19 08:05:53', '2008-05-04 23:10:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Clare', 'Roberts', 'schinner.gunner@example.org', '+12(5)1231387669', '1990-04-07 06:51:48', '2005-03-31 04:39:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Davin', 'Weissnat', 'billie.hackett@example.org', '(941)667-2922x865', '1971-03-16 10:38:59', '1975-11-20 01:48:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Jackie', 'O\'Connell', 'francis15@example.com', '1-794-682-7386x779', '2021-01-14 04:57:43', '1983-10-27 22:34:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Gilberto', 'Hauck', 'owunsch@example.com', '(100)813-5035x8215', '2018-05-30 00:33:39', '2003-05-23 14:02:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Viviane', 'Kuhic', 'liza.bins@example.org', '1-498-685-2289x889', '1998-06-08 22:17:29', '1985-03-15 23:59:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Emmy', 'Will', 'susie.ritchie@example.com', '+08(8)9678941025', '2001-04-06 14:47:43', '2017-07-20 16:42:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Mona', 'Zboncak', 'vicky16@example.net', '615.070.5510x0136', '2006-10-05 22:31:41', '1992-11-21 01:12:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Johnathon', 'Reichel', 'dconroy@example.org', '04358108773', '2004-06-06 07:52:06', '1995-01-05 08:27:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Zoila', 'Rippin', 'gleichner.garrison@example.net', '960.773.3203', '2013-01-29 22:31:34', '1998-05-17 11:30:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Wyman', 'Feest', 'sallie.christiansen@example.net', '014-133-6757', '1993-05-02 04:58:46', '1981-04-15 13:51:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Joesph', 'Bergstrom', 'vcremin@example.org', '(115)218-2322', '2017-04-21 06:45:49', '1992-06-06 22:33:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Samara', 'Lynch', 'quinten.collins@example.org', '984-050-4724', '2000-12-29 10:17:36', '2019-12-02 21:42:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Candice', 'Weissnat', 'ylabadie@example.com', '+13(0)3372312626', '2019-12-24 09:31:16', '2006-02-25 16:01:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Lyda', 'Gusikowski', 'luettgen.junius@example.com', '+89(3)8243822795', '2004-11-30 18:42:38', '1970-01-16 18:12:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Yasmine', 'Gibson', 'filiberto32@example.net', '803.291.0352', '1996-07-15 06:47:51', '1989-04-04 14:04:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Rhea', 'Bailey', 'qhuels@example.org', '1-844-757-5050x98358', '2004-05-23 12:15:03', '2014-02-08 01:53:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Nicolas', 'Schuppe', 'halvorson.naomie@example.org', '(672)052-9144x8680', '1975-02-24 03:46:06', '2020-08-05 05:13:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Alejandra', 'D\'Amore', 'qo\'keefe@example.com', '013.305.8420', '2019-10-07 01:50:21', '2009-02-10 04:05:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Gina', 'Lubowitz', 'blick.aurore@example.org', '04397086925', '1990-03-18 00:53:04', '1973-12-10 12:47:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Elton', 'Ruecker', 'eferry@example.org', '(792)436-9414x58032', '1994-06-09 20:54:22', '1995-10-12 00:27:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Brianne', 'Sanford', 'mthompson@example.com', '1-404-518-1898', '2009-10-08 05:37:00', '1975-01-04 11:01:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Meaghan', 'Zulauf', 'ondricka.sydney@example.com', '062.235.8346x64638', '1993-03-30 13:48:00', '1986-12-13 05:25:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Ryan', 'Huels', 'ugerhold@example.com', '1-979-906-8991', '1983-12-14 05:48:14', '2004-08-12 20:57:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Xavier', 'Strosin', 'rowe.mertie@example.org', '037-747-6804', '1977-08-23 15:51:15', '1991-12-18 04:02:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Julianne', 'Rolfson', 'emmet23@example.com', '(288)845-8573', '2009-11-17 05:48:49', '2002-10-20 02:39:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Justyn', 'VonRueden', 'norwood.rippin@example.net', '655.287.4805x4932', '1979-11-17 12:16:59', '2021-02-23 04:56:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Leila', 'Will', 'd\'amore.silas@example.org', '(757)382-0441', '2018-11-09 18:45:26', '2009-07-03 13:38:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Eula', 'Gibson', 'gleason.brayan@example.net', '(304)289-6126x878', '2012-07-28 05:53:20', '1988-03-07 13:13:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Judd', 'Langworth', 'minnie64@example.org', '039.768.6868x66615', '2007-04-22 09:14:08', '2005-02-22 00:29:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Horacio', 'Witting', 'wflatley@example.com', '978-620-8410x85123', '1977-11-26 18:19:36', '2001-04-20 19:23:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Barbara', 'Steuber', 'qkutch@example.com', '997-790-7763x3643', '1987-09-05 06:42:32', '1972-05-11 14:30:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Georgiana', 'Rowe', 'darwin.legros@example.net', '(766)697-5334', '1984-02-21 15:46:53', '1983-08-24 04:13:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Dane', 'Hand', 'vmclaughlin@example.org', '(981)687-4475x37900', '2009-10-03 01:30:22', '1970-05-24 20:34:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Torrey', 'Yost', 'earline.reichert@example.net', '040.172.0783x572', '1994-06-13 00:50:03', '2020-09-06 04:08:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Guiseppe', 'Koelpin', 'gislason.isidro@example.com', '06134042738', '2019-02-12 19:49:17', '2006-08-22 19:58:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Hailie', 'Watsica', 'emmet.hoeger@example.com', '194-719-4368x837', '1980-11-22 18:31:27', '2005-07-16 16:17:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Orlo', 'Stroman', 'smoore@example.net', '846-580-9207', '1974-01-29 21:53:57', '2002-09-05 14:25:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Kaycee', 'Harvey', 'jschmitt@example.net', '+20(7)2389020006', '1972-09-20 06:49:07', '1975-01-31 06:05:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Baron', 'Barrows', 'o\'kon.broderick@example.com', '426-136-6572x862', '1991-05-16 04:43:39', '1993-07-26 04:13:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Berneice', 'Kiehn', 'sheila.hermiston@example.org', '351.010.7493x593', '1991-02-27 04:18:16', '2009-01-16 19:56:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Freddy', 'Denesik', 'bergstrom.rosanna@example.com', '305-861-3456x6476', '1987-07-15 03:07:18', '1975-01-19 10:45:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Fritz', 'Hyatt', 'adams.adella@example.org', '+18(6)4760266298', '2015-03-19 04:31:28', '1991-03-15 22:35:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Chad', 'Wintheiser', 'jonathon95@example.net', '00142200242', '1996-08-12 20:25:55', '2017-05-15 00:24:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Abner', 'Schaefer', 'patrick79@example.com', '(878)836-1505x152', '2006-02-18 06:09:50', '2002-04-02 01:25:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Cale', 'Baumbach', 'goodwin.aniya@example.net', '301-961-8961', '1981-06-10 19:05:56', '2017-06-27 14:50:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Vern', 'Stiedemann', 'fatima60@example.com', '635-811-1675x243', '2009-02-01 04:00:02', '1981-12-17 09:08:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jean', 'Boyle', 'dante.donnelly@example.com', '01612835163', '1993-12-12 17:54:24', '1992-05-14 10:20:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Lavon', 'Leffler', 'yost.mateo@example.org', '(556)856-3724', '1989-06-26 15:55:26', '2007-07-21 10:53:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Julian', 'Ledner', 'oral20@example.org', '+93(6)2522323577', '1999-05-08 18:00:53', '2012-10-27 19:08:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Dock', 'Runolfsdottir', 'cordelia41@example.org', '109.506.5782', '1972-04-19 08:05:11', '1977-08-02 12:08:13');


