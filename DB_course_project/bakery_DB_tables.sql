-- Создаем БД для ремесленной пекарни

-- Создаем БД
DROP DATABASE IF EXISTS bakery;
CREATE DATABASE bakery;

USE bakery;

-- Создаём таблицу покупателей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор покупателя", 
	name VARCHAR(100) NOT NULL COMMENT "Имя покупателя",
	login VARCHAR(100) NOT NULL COMMENT "Логин покупателя",
	phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Покупатели";  


-- Создаём таблицу профилей покупателей
CREATE TABLE profiles (
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на покупателя", 
	first_name VARCHAR(100) NOT NULL COMMENT "Имя покупателя",
	last_name VARCHAR(100) NOT NULL COMMENT "Фамилия покупателя",
	phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
	email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
	current_discount INT UNSIGNED DEFAULT 0 COMMENT "Текущая скидка в %",
	address_1 TEXT COMMENT "Адрес доставки 1",
	address_2 TEXT COMMENT "Адрес доставки 2",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
) COMMENT "Профили покупателей"; 


-- Создаём таблицу для каталога продукции
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Идентификатор",
  name VARCHAR(255) COMMENT "Название раздела",
UNIQUE unique_name(name(10))
) COMMENT "Каталог продукции";


-- Создаём таблицу продукции
DROP TABLE IF EXISTS products;
CREATE TABLE products (
 	id SERIAL PRIMARY KEY  COMMENT "Идентификатор",
	name VARCHAR(255) COMMENT "Название товара",
	price DECIMAL (11,1) COMMENT "Цена",
	catalog_id INT UNSIGNED  COMMENT "Ссылка на каталог",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
KEY index_of_catalog_id (catalog_id),
FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
) COMMENT "Товары и Цена";


-- Создаём таблицу описания продукции
DROP TABLE IF EXISTS descr_prod;
CREATE TABLE descr_prod (
	products_id BIGINT UNSIGNED NOT NULL PRIMARY KEY COMMENT "Ссылка на товар",
	description TEXT COMMENT "Описание",
	contain TEXT COMMENT "Состав",
	weight DECIMAL (15) COMMENT "Вес-Объем",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
 	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
-- PRIMARY KEY (products_id) COMMENT "первичный ключ",
FOREIGN KEY (products_id) REFERENCES products(id)
) COMMENT "Описание продукции";


-- Создаём таблицу media продукции
DROP TABLE IF EXISTS prod_media;
CREATE TABLE prod_media (
	id SERIAL NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор",
	product_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на товар",
	file VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
	size INT NOT NULL COMMENT "Размер файла",
	-- metadata JSON COMMENT "Метаданные файла",
	-- media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип файла",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
FOREIGN KEY (product_id) REFERENCES products(id)
  -- FOREIGN KEY (media_type_id) REFERENCES media_types(id)
) COMMENT "Медиафайлы";


-- Создаём таблицу статус-заказов
DROP TABLE IF EXISTS order_status;
CREATE TABLE order_status (
	id INT PRIMARY KEY COMMENT "Идентификатор",
	order_status VARCHAR(255) NOT NULL UNIQUE COMMENT "Статус заказа"
) COMMENT "Статус заказа";

-- Создаём таблицу типов доставки
DROP TABLE IF EXISTS delivery_type;
CREATE TABLE delivery_type (
	id INT PRIMARY KEY COMMENT "Идентификатор",
	delivery_type VARCHAR(255) NOT NULL UNIQUE COMMENT "Вид доставки",
	delivery_price DECIMAL (11,1) COMMENT "Цена доставки"
) COMMENT "Тип доставки";

-- Создаём таблицу статус оплаты
DROP TABLE IF EXISTS payment_status;
CREATE TABLE payment_status (
	id INT PRIMARY KEY COMMENT "Идентификатор",
	payment_status VARCHAR(255) NOT NULL UNIQUE COMMENT "Статус/Вид оплаты"
) COMMENT "Статус оплаты";


-- Создаём таблицу заказов
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на покупателя",
	payment_status_id INT NOT NULL COMMENT "Ссылка на статус оплаты",
	delivery_type_id INT NOT NULL COMMENT "Ссылка на тип доставки",
	order_status_id INT NOT NULL COMMENT "Ссылка на статус заказа",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
KEY index_of_user_id(user_id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (payment_status_id) REFERENCES payment_status(id),
FOREIGN KEY (delivery_type_id) REFERENCES delivery_type(id),
FOREIGN KEY (order_status_id) REFERENCES order_status(id)
) COMMENT 'Заказы';


-- Создаём таблицу состав-заказа
DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id INT PRIMARY KEY COMMENT "Идентификатор",
	order_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на заказ",
	product_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на товар",
	total INT UNSIGNED DEFAULT 1 COMMENT "Количество заказанных товарных позиций",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES products(id)
) COMMENT "Состав заказа";


-- Создаём таблицу комментариев
DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	user_id BIGINT UNSIGNED COMMENT "Ссылка на покупателя",
	order_id BIGINT UNSIGNED COMMENT "Ссылка на заказ",
	product_id BIGINT UNSIGNED COMMENT "Ссылка на товар",
	body TEXT NOT NULL COMMENT "Текст сообщения",
	rating INT UNSIGNED COMMENT "Оценка",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES products(id)
) COMMENT "Комментарии-Оценки-Пожелания";


-- Создаём таблицу скидок
DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
	user_id BIGINT UNSIGNED COMMENT "Ссылка на покупателя",
	product_id BIGINT UNSIGNED COMMENT "Ссылка на товар",
	discount FLOAT UNSIGNED COMMENT "Величина скидки",
	finished_at DATE COMMENT "Срок действия",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  COMMENT "Время обновления строки",
KEY index_of_user_id(user_id),
KEY index_of_product_id(product_id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (product_id) REFERENCES products(id) 
) COMMENT "Скидки";


-- Создаём таблицу архивную таблицу для товаров
DROP TABLE IF EXISTS products_archive;
CREATE TABLE products_archive (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name_table VARCHAR(255) DEFAULT NULL COMMENT 'название таблицы',
	catalog_id INT UNSIGNED NOT NULL COMMENT "Ссылка на каталог",
	catalog_name VARCHAR(255) COMMENT "Название раздела",
	product_id INT UNSIGNED NOT NULL COMMENT "Ссылка на товар",
	product_name VARCHAR(255) COMMENT "Название товара",
	description TEXT COMMENT "Описание товара",
	contain TEXT COMMENT "Состав товара",
	weight DECIMAL (15) COMMENT "Вес-Объем товара",
	price DECIMAL (11,1) COMMENT "Цена",
	prod_media_id INT UNSIGNED COMMENT "Ссылка на media",
	file VARCHAR(255) NOT NULL COMMENT "Путь к файлу",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) ENGINE=ARCHIVE COMMENT "Архивная таблица для товаров";




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






-- Создаём таблицу архивную таблицу для покупателей
DROP TABLE IF EXISTS users_archive;
CREATE TABLE users_archive (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
	name_table VARCHAR(255) COMMENT 'название таблицы',
	user_id INT NOT NULL COMMENT "ID покупателя",
	login VARCHAR(255) COMMENT "login покупателя",
	first_name VARCHAR(255) COMMENT "Имя покупателя",
	last_name VARCHAR(255) COMMENT "фамилия товара",
	phone VARCHAR(100) COMMENT "Телефон",
	email VARCHAR(100) COMMENT "Почта",
	current_discount INT UNSIGNED DEFAULT 0 COMMENT "Текущая скидка в %",
	address_1 TEXT COMMENT "Адрес доставки 1",
	address_2 TEXT COMMENT "Адрес доставки 2",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) ENGINE=ARCHIVE COMMENT "Архивная таблица для товаров";

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

