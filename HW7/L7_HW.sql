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










/*
SELECT
	COUNT(DISTINCT id) AS 'Total orders', 
	COUNT(DISTINCT user_id) AS 'Users' 
FROM orders;


SELECT DISTINCT user_id AS 'Users' FROM orders;

	
SELECT COUNT(user_id) AS 'Total orders' FROM orders;

FROM orders;
/*



-- UPDATE orders SET user_id = FLOOR(1 + RAND() * 6) WHERE 1 < user_id < 5; 
  
 




















/*

INSERT INTO storehouses_products
  (storehouse_id, product_id , value)
VALUES
  ('1', '1', 0),
  ('1', '2', 2500),
  ('1', '3', 0),
  ('1', '4', 30),
  ('1', '5', 500),
  ('1', '6', 1),
  ('1', '7', 10);
  

 UPDATE friendship SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);
/*



















