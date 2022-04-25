INSERT INTO cars (id, car_make, car_type) VALUES (1, 'Ford','Fuel');
INSERT INTO cars (id, car_make, car_type) VALUES (2, 'Ford','Hybrid');
INSERT INTO cars (id, car_make, car_type) VALUES (3, 'Toyota','Electric');
INSERT INTO cars (id, car_make, car_type) VALUES (4, 'VW','Fuel');

INSERT INTO parts (id, part_name, part_price) VALUES (1, 'Fuel Filter', 100);
INSERT INTO parts (id, part_name, part_price) VALUES (2, 'Electric Motor', 500);
INSERT INTO parts (id, part_name, part_price) VALUES (3, 'Electric Battery', 200);
INSERT INTO parts (id, part_name, part_price) VALUES (4, 'Oil', 50);
INSERT INTO parts (id, part_name, part_price) VALUES (5, 'Transformer', 200);
INSERT INTO parts (id, part_name, part_price) VALUES (6, 'Fuel Gasket', 50);

INSERT INTO car_parts (car_id, part_id) VALUES (1, 1);
INSERT INTO car_parts (car_id, part_id) VALUES (1, 4);
INSERT INTO car_parts (car_id, part_id) VALUES (2, 3);
INSERT INTO car_parts (car_id, part_id) VALUES (2, 2);
INSERT INTO car_parts (car_id, part_id) VALUES (3, 5);
INSERT INTO car_parts (car_id, part_id) VALUES (4, 6);

