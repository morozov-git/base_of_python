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
    select '2018-08-01' as august_date
  UNION
    SELECT DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) FROM month_tbl WHERE DATE_ADD(month_tbl.august_date, INTERVAL 1 DAY) <= '2018-08-31'
)
select * FROM month_tbl) AS august_18;



(по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
