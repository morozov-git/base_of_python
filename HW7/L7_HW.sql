-- Практическое задание по теме «Сложные запросы»


-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.


-- Наполняем таблицы данными

SELECT * FROM orders o;
TRUNCATE orders ;
INSERT IGNORE INTO orders SET user_id = FLOOR(1 + RAND() * 6); 


SELECT name FROM users;
SELECT DISTINCT user_id AS 'Users ID', COUNT(id) AS 'Total order' FROM orders GROUP BY user_id ;

-- Выводим ID и Имя пользователя, которые сделали бы один заказ
SELECT id AS 'User ID', name AS 'Name' 
	FROM users 
	WHERE id IN (SELECT DISTINCT user_id AS 'Users' FROM orders GROUP BY user_id);

-- Выводим ID пользователя и количество заказов
SELECT user_id, COUNT(id) AS 'Total order' FROM orders GROUP BY user_id;


-- Выводим ID пользователя, Имя пользователя и количество заказов
SELECT 
	user_id AS 'User ID', 
	(SELECT name FROM users WHERE id = user_id) AS 'Name', 
	COUNT(id) AS 'Total orders' 
FROM orders GROUP BY user_id;



-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT * FROM catalogs c ;
SELECT * FROM products p ;

SELECT id, name AS Name, (SELECT name FROM catalogs WHERE id = catalog_id) AS 'Catalog ID' FROM products p;




-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов 
-- cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.



-- создаем и наполняем таблицы рейсов и городов 

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_city VARCHAR(255) COMMENT 'Откуда',
  to_city VARCHAR(255) COMMENT 'Куда'
) COMMENT = 'Рейсы';


INSERT INTO flights VALUES
  (NULL, 'moscow', 'omsk'),
  (NULL, 'novgorod', 'kazan'),
  (NULL, 'irkutsk', 'moscow'),
  (NULL, 'omsk', 'irkutsk'),
  (NULL, 'moscow', 'kazan');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  eng_city VARCHAR(255) COMMENT 'Название на английском',
  rus_city VARCHAR(255) COMMENT 'Название на русском'
) COMMENT = 'Города';


INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');

 
-- Выводим список рейсов на русском языке
SELECT * FROM cities ;

SELECT 
	(SELECT rus_city FROM cities WHERE eng_city = from_city) AS 'From City', 
	(SELECT rus_city FROM cities WHERE eng_city = to_city) AS 'To City' 
FROM flights ;
 

 