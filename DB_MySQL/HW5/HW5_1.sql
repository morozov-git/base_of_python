-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
-- 		Заполните их текущими датой и временем.

SELECT * FROM users u;

UPDATE users SET created_at = (NOW()), updated_at = (NOW());

-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы 
-- 		типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- 		Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

ALTER TABLE users 
	MODIFY COLUMN created_at VARCHAR(255), 
	MODIFY COLUMN updated_at VARCHAR(255);

ALTER TABLE users 
	MODIFY COLUMN created_at DATETIME, 
	MODIFY COLUMN updated_at DATETIME;

SELECT * FROM users u;


-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые 
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо 
-- отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако нулевые запасы должны выводиться в конце, после всех записей.

SELECT * FROM storehouses_products sp ;
SELECT * FROM products p ;


TRUNCATE storehouses_products;


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
  

 
SELECT id, value FROM storehouses_products sp ORDER BY  IF(value > 0, 0, 1), value ;



-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий (may, august)

SELECT * FROM users u ;

-- обновляем таблицу и данные для текущей задачи
ALTER TABLE users MODIFY COLUMN birthday_at VARCHAR(255);

INSERT INTO users (id, name, birthday_at) VALUES
  (1, 'Геннадий', '1990-october-05'),
  (2, 'Наталья', '1984-november-12'),
  (3, 'Александр', '1985-may-20'),
  (4, 'Сергей', '1988-february-14'),
  (5, 'Иван', '1998-january-12'),
  (6, 'Мария', '1992-august-29')
  ON DUPLICATE KEY UPDATE birthday_at=VALUES(birthday_at);

SELECT * FROM users WHERE birthday_at RLIKE 'ma|au';



-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, 
-- заданном в списке IN.

SELECT * FROM catalogs c ;

SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);



-- Практическое задание теме «Агрегация данных»


-- 1. Подсчитайте средний возраст пользователей в таблице users.

SELECT * FROM users u ;

-- возвращаем таблицу к исходному варианту
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 

 SELECT id, name, TIMESTAMPDIFF(YEAR, birthday_at, NOW()) AS age FROM users;
 
 SELECT max(id) as max_id FROM users;

 SELECT SUM(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS sum_age FROM users;


 SELECT SUM(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))/max(id) AS average_age FROM users;
 

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.



SELECT * FROM users u ;


 SELECT name, birthday_at,  DAYOFWEEK(DATE_FORMAT(birthday_at, '2021.%m.%d')) AS day_week FROM users;


 SELECT name, birthday_at,  DATE_FORMAT(birthday_at, '2021-%m-%d') AS d_week FROM users;


 SELECT COUNT(*) AS total, DAYOFWEEK(DATE_FORMAT(birthday_at, '2021.%m.%d')) AS day_week FROM users GROUP BY day_week;




-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы. (1, 2, 3, 4, 5)


CREATE TABLE multiplication (
  id INT NOT NULL,
  value INT NOT NULL
);
INSERT INTO multiplication (id, value) VALUES 
	(1, 1), 
	(2, 2), 
	(3, 3), 
	(4, 4), 
	(5, 5);

SELECT * FROM multiplication m  ;

-- считем произведение чисел из столбца value через сумму логарифмов каждого числа

select exp(sum(log(value))) AS value_multiplication from multiplication m ;


