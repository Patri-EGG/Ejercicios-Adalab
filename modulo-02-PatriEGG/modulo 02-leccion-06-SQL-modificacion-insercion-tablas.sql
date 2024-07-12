CREATE TABLE t1 (a INTEGER, b CHAR(10));
RENAME TABLE t1 TO t2;
ALTER TABLE t2 MODIFY a TINYINT NOT NULL;
ALTER TABLE t2 MODIFY b CHAR(20);
ALTER TABLE t2 CHANGE b c TINYINT NOT NULL;
ALTER TABLE t2 ADD COLUMN d TIMESTAMP;
ALTER TABLE t2 DROP COLUMN c;
CREATE TABLE t3 LIKE t2;
DROP TABLE t2;
RENAME TABLE t3 TO t1;

CREATE TABLE IF NOT EXISTS customers_mod AS 
SELECT * FROM tienda.customers;

INSERT INTO customers_mod (
	customer_number,
	customer_name,
	contact_last_name,
	contact_first_name,
	phone,
	address_line1,
	address_line2,
	city,
	state,
	postal_code,
	country,
	sales_rep_employee_number,
	credit_limit
    
)
VALUES (
	 343,
    'Adalab',
    'Rodriguez',
    'Julia',
    '672986373',
    'Calle Falsa 123',
    'Puerta 42',
    'Madrid',
    'España',
    '28000',
    'España',
    15,
    20000000
);

INSERT INTO customers_mod (
	customer_number,
    customer_name,
    contact_last_name,
    contact_first_name,
    phone,
    address_line1,
    address_line2,
    city,
    state,
    postal_code,
    country,
    sales_rep_employee_number,
    credit_limit
) VALUES (
	 345,
    'La pegatina After',
    'Santiago',
    'Maricarmen',
    '00000000',
    'Travesía del rave',
    NULL,  
    'Palma de Mallorca',
    NULL,  
    '07005',
    'España',
    10,
    45673453
);
INSERT INTO customers_mod ( 
    customer_number,
    customer_name,
    contact_last_name,
    contact_first_name,
    phone,
    address_line1,
    city,
    postal_code,
    country
) VALUES 
    (635,'Gadgets y Cachivaches', 'Gómez', 'Pepe', '600100200', 'Calle del Árbol 12', 'Málaga', '26018', 'España'),
    (736,'Los Inventores S.A.', 'Torres', ' ', '610220330', 'Travesía de los Inventos 56', 'Granada', '22010', 'España'),
    (421,'Curioseando Tienda', 'Jiménez', 'Lucía', '622300400', 'Avenida del Progreso 123', 'Oviedo', '33012', 'España'),
    (132,'Chismes Modernos', 'Morales', ' ', '633400500', 'Plaza de la Tecnología 5', 'Cádiz', '11006', 'España'),
    (123,'Rincón Retro', 'Moreno', ' ', '644500600', 'Paseo de los Curiosos 78', 'Santander', '39004', 'España');

UPDATE customers_mod SET 
	address_line1 = 'Polígono Industrial de Son Castelló', 
    address_line2 = 'Nave 92', 
    city = 'Palma de Mallorca', 
    state = 'España',
    postal_code = '28163',
    country = 'España',
    sales_rep_employee_number = 25,
    credit_limit = 5000000
WHERE customer_name = 'La pegatina After';

CREATE TABLE customers_mod_destroy LIKE customers_mod;
INSERT INTO customers_mod_destroy SELECT * FROM customers_mod;

UPDATE customers_mod
SET address_line1 = 'Vamos',
    address_line2 = 'a',
    postal_code = 'fastidiar',
    country = 'la tabla :)';

TRUNCATE TABLE customers_mod;
INSERT INTO customers_mod SELECT * FROM customers_mod_destroy;

UPDATE customers_mod
SET sales_rep_employee_number = 2
WHERE customer_number IN (103, 112, 114, 119, 121, 124, 125, 128, 129, 131);

DELETE FROM customers_mod
WHERE contact_name IS NULL;

DELETE FROM customers_mod
ORDER BY credit_limit ASC
LIMIT 5;

DELETE FROM customers_mod;






















    
    
    
























