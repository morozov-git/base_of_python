-- Практическое задание по теме “Транзакции, переменные, представления”
USE shop_L9;


-- 	1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
	INSERT INTO sample.users (id, name)
		SELECT id, name FROM shop_L9.users 
			WHERE shop_L9.users.id = 1;
	SAVEPOINT before_del_user;
	DELETE FROM shop_L9.users WHERE shop_L9.users.id = 1;
-- ROLLBACK TO SAVEPOINT before_del_user;	-- включить если нужно оставить запись с ID=1
COMMIT;
ROLLBACK TO SAVEPOINT before_del_user;

-- 	2. Создайте представление, которое выводит название name товарной позиции из таблицы 
-- products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW products_catalogs AS
	SELECT products.name AS goods_name, catalogs.name AS catalog_id, products.price
  	FROM products
    	JOIN catalogs
  	ON products.catalog_id = catalogs.id;

-- 	3. (по желанию) Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые 
-- календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
-- если дата присутствует в исходном таблице и 0, если она отсутствует.

  
  
SELECT * FROM products
-- обновляем данные в колонке created_at в таблице products   
UPDATE products SET created_at = timestamp(('2018-08-31') - INTERVAL FLOOR( RAND( ) * 30) DAY)
WHERE id = FLOOR(RAND( ) * 4)   
    
SELECT created_at, DAY(created_at), MONTH(created_at) FROM products;
       
  
-- создаем таблицу с датами за август 2018г
WITH RECURSIVE month_tbl as (
    select '2018-08-01' as august_date
  UNION
    SELECT DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) FROM month_tbl WHERE DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) <= '2018-08-31'
)
select * FROM month_tbl;


-- Проверяем дходит ли дата created_at из таблицы products в таблицу с датами за август 2018г
SELECT 
	august_18.august_date AS august_date,
	(SELECT EXISTS(SELECT * FROM products WHERE created_at = august_date)) AS is_exist
FROM
	(WITH RECURSIVE month_tbl as (
    	SELECT '2018-08-01' as august_date
  		UNION
    	SELECT DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) 
    		FROM month_tbl 
    			WHERE DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) <= '2018-08-31'
    	)
	SELECT * FROM month_tbl) AS august_18;



-- 	4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, 
-- который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

-- копируем таблицу products для 4-го задания
DROP TABLE IF EXISTS products_del_date;
CREATE TABLE products_del_date AS SELECT * FROM products p ;
SELECT * FROM products_del_date;


SELECT name, created_at FROM products_del_date ORDER BY created_at DESC LIMIT 5;

-- выбираем данные которые нужно оставить в таблице products_del_date
SELECT * FROM products_del_date ORDER BY created_at DESC LIMIT 5;

-- формируем временную таблицу с нужными данными
CREATE TEMPORARY TABLE not_del_tbl AS SELECT * FROM products_del_date ORDER BY created_at DESC LIMIT 5;
SELECT * FROM not_del_tbl;

-- удаляем из таблицы products_del_date все что не вошло в выбранный список
DELETE FROM products_del_date 
	WHERE created_at NOT IN (SELECT created_at FROM not_del_tbl);

SELECT * FROM products_del_date;


-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)

-- 	1. Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
-- второму пользователю shop — любые операции в пределах базы данных shop.


-- 	2.(по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, 
-- содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username 
-- таблицы accounts, предоставляющий доступ к столбца id и name. Создайте пользователя user_read, 
-- который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.




-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 	1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от 
-- текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 
--  должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN
	SET @t = TIME(NOW());
	IF (@t BETWEEN '00:00:00' AND '06:00:00') THEN
		RETURN 'Доброй ночи';
	ELSEIF (@t BETWEEN '06:00:00' AND '12:00:00') THEN
		RETURN 'Доброе утро';
	ELSEIF (@t BETWEEN '12:00:00' AND '18:00:00') THEN
		RETURN 'Добрый день';
	ELSEIF (@t BETWEEN '18:00:00' AND '00:00:00') THEN
		RETURN 'Доброе вечер';
	ELSE
	RETURN CONCAT('Доброй ночи ', TIME(NOW()));
	END IF;
END//
DELIMITER ;


-- тестовый вариант
DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN
	SET @t = TIME(NOW());
	IF (@t BETWEEN '13:40:00' AND '13:40:10') THEN
		RETURN 'Доброй ночи';
	ELSEIF (@t BETWEEN '13:40:10' AND '13:40:20') THEN
		RETURN 'Доброе утро';
	ELSEIF (@t BETWEEN '13:40:20' AND '13:40:30') THEN
		RETURN 'Добрый день';
	ELSEIF (@t BETWEEN '13:40:30' AND '13:40:40') THEN
		RETURN 'Доброе вечер';
	ELSE
	RETURN CONCAT('Доброй ночи ', TIME(NOW()));
	END IF;
END//
DELIMITER ;


-- в таком виде не работает(двойное условие не выполняется)
DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN
	SET @t = TIME(NOW());
	IF ('00:00:00' < @t < '06:00:00') THEN
		RETURN 'Доброй ночи';
	ELSEIF (('06:00:00'< @t < '12:00:00')) THEN
		RETURN 'Доброе утро';
	ELSEIF (('12:00:00'< @t < '18:00:00')) THEN
		RETURN 'Добрый день';
	ELSEIF (('18:00:00'< @t < '00:00:00')) THEN
		RETURN 'Доброе вечер';
	ELSE
	RETURN CONCAT('Доброй ночи ', TIME(NOW()));
	END IF;
END//
DELIMITER ;




-- 	2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное 
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля 
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.


-- Создаем триггер на добавление записей в таблицу products
DROP TRIGGER IF EXISTS products_insert;
DELIMITER //
CREATE TRIGGER products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  	IF (NEW.name IS NUll AND NEW.description IS NULL) THEN
	 	SIGNAL SQLSTATE "45000"
	 	SET MESSAGE_TEXT = "Error adding product! Name or description must be defined(NOT NULL)";
	END IF; 
END//
DELIMITER ;

-- Создаем триггер на обновление записей в таблице products
DROP TRIGGER IF EXISTS products_update;
DELIMITER //
CREATE TRIGGER products_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  	IF (NEW.name IS NUll AND NEW.description IS NULL) THEN
	 	SIGNAL SQLSTATE "45000"
	 	SET MESSAGE_TEXT = "Error adding product! Name or description must be defined(NOT NULL)";
	END IF; 
END//
DELIMITER ;


-- Проверяем работу триггеров
SELECT * FROM products p 

INSERT INTO products
  (description, price, catalog_id)
VALUES
  ('Материнская плата MSI B350M, Socket 1151, DDR4, mATX', 4560.00, 2);

INSERT INTO products
  (price, catalog_id)
VALUES
  (4560.00, 2);
 
INSERT INTO products
  (name, price, catalog_id)
VALUES
  ('MSI B350M',4560.00, 2); 
 
 

-- 	3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

 
DROP FUNCTION IF EXISTS fibonacci;
DELIMITER //
CREATE FUNCTION fibonacci (value INT)
RETURNS INT DETERMINISTIC
BEGIN
	SET @n = value;
	SET @a = 0;
	SET @b = 0;
	SET @f = 0;
	WHILE @n > 0 DO
		SET @f = @a + @b + 1;
		SET @a = @b - 1;
		SET @b = @f;
		SET @n = @n - 1;
	END WHILE;
RETURN @f;
END//
DELIMITER ;


 
 
