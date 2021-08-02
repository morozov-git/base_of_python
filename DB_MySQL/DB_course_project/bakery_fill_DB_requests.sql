-- Запросы в БД bakery


-- Обновляем ссылку на файл в таблице prod_media
UPDATE prod_media SET file = CONCAT(
	  file, 
	 (SELECT LEFT(UUID(), 8)),
	'.jpeg');


-- Выбираем новые заказы для подготовки и отправки
SELECT * FROM orders o WHERE order_status_id = 1;


-- Находим имя, фамилию и телефон покупателей, которые создали заказ
SELECT p.first_name AS 'First name', p.last_name AS 'Last name', p.phone AS 'Phone', os.order_status AS 'Order status' 
	FROM profiles p
		JOIN orders o
			ON o.user_id = p.user_id
		JOIN order_status os
			ON o.order_status_id = os.id 
	WHERE os.order_status = 'Новый';


-- Выводим список товаров для сборки и отправки новых заказов
SELECT order_id AS '# Заказа', 
		(SELECT p.name FROM products p WHERE p.id = product_id) AS ' Название товара', 
		total AS 'Количество'
	FROM orders_products op 
	WHERE order_id IN 
		(SELECT id FROM orders o WHERE order_status_id = 1); 

	
-- создаем представление со списком заказанных товаров, их количеством и общим весом 
-- для срочной подготовки и контроля выполнения 
-- заказов сервисом Яндекс Еда выбираем только заказы в работе(все кроме отменен и выполнен)	
DROP VIEW IF EXISTS Products_for_all_Yandex_ordes; 	
CREATE VIEW Products_for_all_Yandex_ordes AS
	SELECT op.order_id AS '№ Заказа',
			c.name AS 'Каталог',
			p.name AS 'Название товара',
			op.total AS 'Количество',
			(op.total * dp.weight / 1000) AS 'Вес товара, КГ',
			os.order_status AS 'Статус заказ',
			dt.delivery_name AS 'Тип Доставки'
	FROM orders_products op 
		JOIN
			products p ON op.product_id = p.id 
		JOIN 
			orders o ON o.id = op.order_id 
		JOIN 
			delivery_type dt ON dt.id = o.delivery_type_id 
		JOIN
			order_status os ON os.id = o.order_status_id 
		JOIN 
			catalogs c ON c.id = p.catalog_id 
		JOIN 
			descr_prod dp ON dp.products_id = p.id 
	WHERE (o.order_status_id != 0 AND o.order_status_id != 6) AND o.delivery_type_id = 4
	ORDER BY o.order_status_id
	GROUP BY op.order_id;


-- Общий вес товаров в текущих заказах Яндекс
	SELECT op.order_id AS '№ Заказа',
			SUM((op.total * dp.weight / 1000))  AS 'Вес Заказа, КГ',
			os.order_status AS 'Статус заказ',
			dt.delivery_name AS 'Тип Доставки'
	FROM orders_products op 
		JOIN 
			orders o ON o.id = op.order_id 
		JOIN 
			delivery_type dt ON dt.id = o.delivery_type_id 
		JOIN
			order_status os ON os.id = o.order_status_id 
		JOIN 
			descr_prod dp ON dp.products_id = op.product_id 
	WHERE (o.order_status_id != 0 AND o.order_status_id != 6) AND o.delivery_type_id = 4
	GROUP BY op.order_id	
	ORDER BY o.order_status_id;


-- Создаем представление с информацией о покупателях и текужих заказах
DROP VIEW IF EXISTS all_current_ordes; 	
CREATE VIEW all_current_ordes AS
	SELECT o.id AS 'Номер заказа',
		os.order_status AS 'Статус заказа',
		p.first_name AS 'First name', 
		p.last_name AS 'Last name', 
		p.phone AS 'Phone',
		(SELECT  dt.delivery_name 
				FROM delivery_type dt 
			WHERE dt.id =  o.delivery_type_id) AS 'Тип доставки'
	FROM profiles p
		JOIN orders o
			ON o.user_id = p.user_id
		JOIN order_status os
			ON o.order_status_id = os.id 
	WHERE os.order_status != 'Отменен' AND os.order_status != 'Выполнен'
	ORDER BY o.order_status_id;



-- Создаем триггер для архивирования товаров
DROP TRIGGER IF EXISTS products_log;
DELIMITER //
CREATE TRIGGER products_log AFTER INSERT ON products FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, product_id, product_name, price, catalog_id)
  		SELECT
  			'products' AS name_table,
  			NEW.id AS product_id,
  			NEW.name AS product_name,
  			NEW.price AS price,
  			NEW.catalog_id AS catalog_id
  		;
END;
DELIMITER ;

-- Создаем триггер для архивирования описания товаров
DROP TRIGGER IF EXISTS descr_prod_log;
DELIMITER //
CREATE TRIGGER descr_prod_log AFTER INSERT ON descr_prod FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, product_id, file)
  		SELECT
  			'descr_prod' AS name_table,
  			NEW.products_id AS product_id,
  			NEW.description AS description,
  			NEW.contain AS contain,
  			NEW.weight AS weight
  		;
END;
DELIMITER ;

-- Создаем триггер для архивирования медиа товаров
DROP TRIGGER IF EXISTS prod_media_log;
DELIMITER //
CREATE TRIGGER prod_media_log AFTER INSERT ON prod_media FOR EACH ROW BEGIN
  	INSERT INTO products_archive (name_table, prod_media_id, product_id, file)
  		SELECT
  			'prod_media' AS name_table,
  			NEW.id AS prod_media_id ,
  			NEW.product_id AS product_id,
  			NEW.file AS file
  		;
END;
DELIMITER ;

-- Создаем триггер для архивирования таблицы profiles
DROP TRIGGER IF EXISTS profiles_log;
DELIMITER //
CREATE TRIGGER profiles_log AFTER INSERT ON profiles FOR EACH ROW BEGIN
  	INSERT INTO users_archive (name_table, user_id, first_name, last_name, phone, 
  		email, current_discount, address_1, address_2)
	  		SELECT
	  			'profiles' AS name_table,
	  			NEW.user_id AS user_id,
	  			NEW.first_name AS first_name,
	  			NEW.last_name AS last_name,
	  			NEW.phone AS phone,
	  			NEW.email AS email,
	  			NEW.current_discount AS current_discount,
	  			NEW.address_1 AS address_1,
	  			NEW.address_2 AS address_2 
	  		;
END;
DELIMITER ;

-- Создаем триггер для архивирования таблицы users
DROP TRIGGER IF EXISTS users_log;
DELIMITER //
CREATE TRIGGER users_log AFTER INSERT ON users FOR EACH ROW BEGIN
  	INSERT INTO users_archive (name_table, user_id, login, first_name, phone)
  		SELECT
  			'users' AS name_table,
  			NEW.id AS user_id,
  			NEW.login AS login,
  			NEW.name AS first_name,
  			NEW.phone AS phone 
  		;
END;
DELIMITER ;





