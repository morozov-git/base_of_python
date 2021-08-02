-- Практическое задание по теме “Оптимизация запросов”
-- 	1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, 
-- идентификатор первичного ключа и содержимое поля name.



-- Создаем таблицу logs для users, catalogs, products
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name_table varchar(255) DEFAULT NULL COMMENT 'название таблицы',
  id_from_table int NOT NULL COMMENT 'id записи в таблице',
  name_from_table varchar(255) DEFAULT NULL COMMENT 'содержимое поля name из таблицы',
  crreated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=ARCHIVE COMMENT='таблица logs для users, catalogs, products';

-- создаем триггер для users
DROP TRIGGER IF EXISTS users_log;
DELIMITER //
CREATE TRIGGER users_log AFTER INSERT ON users FOR EACH ROW BEGIN
  	INSERT INTO logs (name_table, id_from_table, name_from_table)
  		SELECT
  			'users' AS name_table,
  			NEW.id AS id_from_table,
  			NEW.name AS name_from_table;
END;
DELIMITER ;

-- проверяем работу триггера для users
INSERT INTO users (name, birthday_at) VALUES 
	('Василий','1978-11-05'),
	('Нина','1982-12-12'),
	('Алексей','1965-02-20'),
	('София','1997-01-14'),
	('Ирина','1998-04-18'),
	('Михаил','1982-07-29');

-- создаем триггер для products
DROP TRIGGER IF EXISTS products_log;
DELIMITER //
CREATE TRIGGER products_log AFTER INSERT ON products FOR EACH ROW BEGIN
  	INSERT INTO logs (name_table, id_from_table, name_from_table)
  		SELECT
  			'products' AS name_table,
  			NEW.id AS id_from_table,
  			NEW.name AS name_from_table;
END;
DELIMITER ;

-- проверяем работу триггера для products
INSERT INTO products(name, description, price, catalog_id) VALUES 
	('Intel Core i3-8900','Процессор для настольных пк, основанных на платформе Intel.',7900.00,1),
	('Intel Core i5-7450','Процессор для настольных пк, основанных на платформе Intel.',14700.00,1),
	('AMD FX-8323E','Процессор для настольных пк, основанных на платформе AMD.',5680.00,1),
	('AMD FX-843220','Процессор для настольных пк, основанных на платформе AMD.',7150.00,1),
	('ASUS MAXIMUS HERO','Материнская плата ASUSMAXIMUS HERO, Z390, Socket 1151-V2, DDR4, ATX',19810.00,2),
	('Gigabyte H315 S2H','Материнская плата Gigabyte H315 S2H, H310, Socket 1151-V2, DDR4, mATX',5090.00,2),
	('MSI B280M PRO','Материнская плата MSI B250MPRO, B250, Socket 1151, DDR4, mATX',5260.00,2);



-- создаем триггер для catalogs
DROP TRIGGER IF EXISTS catalogs_log;
DELIMITER //
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs FOR EACH ROW BEGIN
  	INSERT INTO logs (name_table, id_from_table, name_from_table)
  		SELECT
  			'catalogs' AS name_table,
  			NEW.id AS id_from_table,
  			NEW.name AS name_from_table;
END;
DELIMITER ;

-- проверяем работу триггера для catalogs
INSERT INTO catalogs(name) VALUES 
	('Мониторы'),
	('Принтеры'),
	('Клавиатуры');




-- 	2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

-- заздаем таблицу users_test для экспериментов
DROP TABLE IF EXISTS users_test;
CREATE TABLE users_test (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) COMMENT='Покупатели_тест';

-- заполняем таблицу users-test случайными последовательностями из 6 символов
INSERT INTO users_test SET name = (SELECT concat(
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1),
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1),
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1),
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1),
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1),
			substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', rand()*26+1, 1)
		));
             
            
SELECT * FROM users_test ;          
            
-- создаем объединенный запрос на выборку записей из таблицы users-test 
-- (количество записей из table1 умножается на количество записей из table2, 
-- далее умножается на teble3 и т.д. получаем 10**6)
 SELECT table1.name FROM
	users_test AS table1
	JOIN 
	users_test AS table2
	JOIN 
	users_test AS table3
	JOIN 
	users_test AS table4
	JOIN 
	users_test AS table5
	JOIN 
	users_test AS table6;


-- создаем тестовую таблицу для заполнения миллионом записей
DROP TABLE IF EXISTS users_test2;
CREATE TABLE users_test2 (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) COMMENT='Покупатели_тест';

-- добавляем миллион записей в тестовую таблицу users_test2 
 INSERT INTO
  users_test2(name) -- для добавления записей в таблицу users заменить users_test2(name) на users(name)
 SELECT table1.name FROM
	users_test AS table1
	JOIN 
	users_test AS table2
	JOIN 
	users_test AS table3
	JOIN 
	users_test AS table4
	JOIN 
	users_test AS table5
	JOIN 
	users_test AS table6;

-- проверяем результат
SELECT id, name FROM users_test2 ORDER BY id DESC LIMIT 10;  

      
