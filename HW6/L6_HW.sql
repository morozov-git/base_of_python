-- Примеры на основе базы данных vk
USE vk_L6;

-- Получаем данные пользователя
SELECT * FROM users WHERE id = 9;

SELECT first_name, last_name, 'city', 'main_photo' FROM users WHERE id = 9;
SELECT * FROM profiles p WHERE user_id = 9;

SELECT
  first_name,
  last_name,
  (SELECT city FROM city WHERE id = 
    (SELECT city_id FROM profiles WHERE user_id = 9)) AS city,
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id = 9)
  ) AS file_path
  FROM users
    WHERE id = 9;  

-- Дорабатывем условия    
SELECT
  first_name,
  last_name,
  (SELECT city FROM city WHERE id = 
    (SELECT city_id FROM profiles WHERE user_id = users.id)) AS city,
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id = users.id)
  ) AS file_path
  FROM users
    WHERE id = 9;          

-- Получаем фотографии пользователя
SELECT user_id, filename FROM media
  WHERE user_id = 9
    AND media_type_id = (
      SELECT id FROM media_types WHERE name = 'image'
    );
    
SELECT * FROM media_types;

-- Выбираем историю по добавлению фотографий пользователем
SELECT CONCAT(
  'Пользователь ', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = media.user_id),
  ' добавил фото ', 
  filename, ' ', 
  created_at) AS news 
    FROM media 
    WHERE user_id = 9 AND media_type_id = (
        SELECT id FROM media_types WHERE name = 'photo'
);

-- проверяем и обновляем данные в таблице media
SELECT * FROM media WHERE user_id = 9
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);

-- Найдём кому принадлежат 10 самых больших медиафайлов
SELECT user_id, filename, size 
  FROM media 
  ORDER BY size DESC
  LIMIT 10;
  
 -- Выбираем друзей пользователя с двух сторон отношения дружбы
(SELECT friend_id FROM friendships WHERE user_id = 9)
UNION
(SELECT user_id FROM friendships WHERE friend_id = 9);

-- Выбираем только друзей с активным статусом
SELECT * FROM friendship_statuses;

(SELECT friend_id 
  FROM friendships 
  WHERE user_id = 9 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    ))
UNION
(SELECT user_id 
  FROM friendships 
  WHERE friend_id = 9 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    ));


-- Выбираем медиафайлы друзей
SELECT * FROM media

SELECT user_id, filename FROM media WHERE user_id IN (
(SELECT friend_id 
  FROM friendships 
  WHERE user_id = 9 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    ))
UNION
(SELECT user_id 
  FROM friendships 
  WHERE friend_id = 9 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    ))
   );



-- Определяем пользователей, общее занимаемое место медиафайлов которых 
-- превышает 100МБ
SELECT user_id, SUM(size) AS total
  FROM media
  GROUP BY user_id
  HAVING total > 100000000;
  
-- С итогами  
SELECT user_id, SUM(size) AS total
  FROM media
  GROUP BY user_id WITH ROLLUP
  HAVING total > 100000000;  
    
-- Выбираем сообщения от пользователя и к пользователю
SELECT from_user_id, to_user_id, body, is_delivered, created_at 
  FROM messages
    WHERE from_user_id = 9 OR to_user_id = 9
    ORDER BY created_at DESC;
    
    
-- Сообщения со статусом
SELECT from_user_id, 
  to_user_id, 
  body, 
  IF(is_delivered, 'delivered', 'not delivered') AS status 
    FROM messages
      WHERE (from_user_id = 9 OR to_user_id = 9)
    ORDER BY created_at DESC;
    
-- Поиск пользователя по шаблонам имени  
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  WHERE first_name LIKE 'M%';
  
-- Используем регулярные выражения
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  WHERE last_name RLIKE '^K.*r$';
  
 
 

 


-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. Агрегация данных”
-- Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:

 
 
 
-- 	1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или 
-- улучшения (JOIN пока не применять).
 
-- Изучил запросы с урока, подкорректировал названия полей для своей Б.Д. и данные в ней для пользователя ID=9 
 
-- 	2. Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.


 -- Корректируем таблицу сообщений
 UPDATE messages SET 
  from_user_id = FLOOR(1 + RAND() * 8),
  to_user_id = FLOOR(1 + RAND() * 8);
 
 UPDATE IGNORE friendships SET 
  user_id = FLOOR(1 + RAND() * 8);
 UPDATE IGNORE friendships SET 
  friend_id = FLOOR(1 + RAND() * 8);
 UPDATE IGNORE friendships SET friend_id = friend_id + 1 WHERE user_id = friend_id;
 
 

-- Количество сообщений отправленных и полученных пользователем ID=8

(SELECT COUNT(from_user_id) AS total, from_user_id AS 'User ID' 
	FROM messages m WHERE to_user_id = 8 GROUP BY from_user_id ORDER BY total)
UNION ALL
(SELECT COUNT(to_user_id) AS total, to_user_id AS 'User ID'  
	FROM messages m WHERE from_user_id = 8 GROUP BY to_user_id ORDER BY total)
ORDER BY total DESC;

-- Друзья у пользователя ID=8

((SELECT friend_id 
  FROM friendships 
  WHERE user_id = 8 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    ))
UNION ALL
(SELECT user_id 
  FROM friendships 
  WHERE friend_id = 8 AND status_id = (
      SELECT id FROM friendship_statuses WHERE name = 'Confirmed'
    )));



-- ID пользователя который больше всего общался с пользователем ID=8 и количество сообщений    
    

(SELECT from_user_id AS 'User ID', COUNT(from_user_id) AS total FROM messages m 
 	WHERE to_user_id = 8 
 		AND from_user_id IN (
 				(SELECT friend_id FROM friendships 
 					WHERE user_id = 8 
 					AND status_id = (SELECT id FROM friendship_statuses 
 					WHERE name = 'Confirmed'))
				UNION ALL
				(SELECT user_id FROM friendships 
					WHERE friend_id = 8 
					AND status_id = (SELECT id FROM friendship_statuses 
					WHERE name = 'Confirmed'))
 				) 
  	GROUP BY from_user_id)
UNION
(SELECT to_user_id AS 'User ID', COUNT(to_user_id) AS total FROM messages m 
	WHERE from_user_id = 8 
		AND to_user_id IN (
 				(SELECT friend_id FROM friendships 
 					WHERE user_id = 8 
 					AND status_id = (SELECT id FROM friendship_statuses 
 					WHERE name = 'Confirmed'))
				UNION ALL
				(SELECT user_id FROM friendships 
					WHERE friend_id = 8 
					AND status_id = (SELECT id FROM friendship_statuses 
					WHERE name = 'Confirmed'))
 				)
 	GROUP BY to_user_id) 
 ORDER BY total DESC LIMIT 1;
 
    

-- 	3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- находим 10 самых молодыйх пользователей
SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age FROM profiles p ORDER BY age LIMIT 10;

-- корректируем таблицу likes
UPDATE likes SET target_id = FLOOR(1 + RAND() * 4);
UPDATE likes SET user_id = FLOOR(1 + RAND() * 20);

-- считаем общее количество лайков
SELECT user_id, COUNT(id) AS total_likes FROM likes GROUP BY user_id WITH ROLLUP 


-- список самых молодых пользователей и их количество лайков
CREATE VIEW sum_likes AS
SELECT 
	user_id, 
	TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age, 
	(SELECT COUNT(id) AS total_likes FROM likes WHERE likes.user_id = p.user_id GROUP BY user_id ) AS likes
FROM profiles p ORDER BY age  LIMIT 10;

-- вычисляем общее количество лайков у 10 самых молодых полизователей
SELECT SUM(likes) FROM sum_likes;


-- 	4. Определить кто больше поставил лайков (всего) - мужчины или женщины?

CREATE VIEW gender_likes AS
SELECT 
	user_id,
	gender,
	(SELECT COUNT(id) AS total_likes FROM likes WHERE likes.user_id = p.user_id  GROUP BY user_id ) AS likes
FROM profiles p WHERE p.gender = 'M'
UNION ALL
SELECT 
	user_id,
	gender,
	(SELECT COUNT(id) AS total_likes FROM likes WHERE likes.user_id = p.user_id  GROUP BY user_id ) AS likes
FROM profiles p WHERE p.gender = 'F';


SELECT SUM(likes) AS sum_likes, 'M' AS gender FROM gender_likes WHERE gender = 'M'
UNION 
SELECT SUM(likes) AS sum_likes, 'F' AS gender FROM gender_likes WHERE gender = 'F'


-- 	5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- находим общцю активность пользователей из media, likes и messages
CREATE VIEW user_activity AS
(SELECT COUNT(id) AS total, user_id FROM media GROUP BY user_id)
UNION ALL
(SELECT COUNT(id) AS total, user_id FROM likes GROUP BY user_id) 
UNION ALL
(SELECT COUNT(from_user_id) AS total, from_user_id AS user_id
	FROM messages m GROUP BY from_user_id ORDER BY total)
UNION ALL
(SELECT COUNT(to_user_id) AS total, to_user_id AS user_id 
	FROM messages m GROUP BY to_user_id ORDER BY total)
ORDER BY user_id;

-- выводим общую сумму для 10 самых активных пользователей
SELECT user_id, SUM(total) AS sum_activity FROM user_activity GROUP BY user_id ORDER BY sum_activity DESC LIMIT 10;


