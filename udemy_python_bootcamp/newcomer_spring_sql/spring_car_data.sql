SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE Car;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Car (code,model,series,generation,price,fuel_type) 
VALUES 
('MN', 'POMELO', '����', 0, 3512, '����'),
('MN', 'POMELO', '����', 1, 4079, '����'),
('QU', 'FRENZY', 'SUV', 0, 4443, 'LPG'),
('QU', 'FRENZY', 'SUV', 1, 5589, 'LPG'),
('NW', 'PITCH', '����', 0, 5352, '����'),
('NW', 'PITCH', '����', 1, 5473, '����'),
('DO', 'CHIVE', '����', 0, 3652, '����'),
('DO', 'CHIVE', '����', 1, 3445, '����'),
('DO', 'CHIVE', '����', 2, 5542, '����'),
('HO', 'TRIBE', '����', 0, 5203, 'LPG'),
('HO', 'TRIBE', '����', 1, 4465, 'LPG'),
('EJ', 'CASTANET', '����', 0, 5154, 'CNG'),
('EJ', 'CASTANET', '����', 1, 5070, 'CNG'),
('EJ', 'CASTANET', '����', 2, 5401, 'CNG');