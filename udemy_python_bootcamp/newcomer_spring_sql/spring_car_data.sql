SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE Car;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO Car (code,model,series,generation,price,fuel_type) 
VALUES 
('MN', 'POMELO', '捻其', 0, 3512, '叼俩'),
('MN', 'POMELO', '捻其', 1, 4079, '叼俩'),
('QU', 'FRENZY', 'SUV', 0, 4443, 'LPG'),
('QU', 'FRENZY', 'SUV', 1, 5589, 'LPG'),
('NW', 'PITCH', '技窜', 0, 5352, '傈扁'),
('NW', 'PITCH', '技窜', 1, 5473, '傈扁'),
('DO', 'CHIVE', '捻其', 0, 3652, '叼俩'),
('DO', 'CHIVE', '捻其', 1, 3445, '叼俩'),
('DO', 'CHIVE', '捻其', 2, 5542, '叼俩'),
('HO', 'TRIBE', '技窜', 0, 5203, 'LPG'),
('HO', 'TRIBE', '技窜', 1, 4465, 'LPG'),
('EJ', 'CASTANET', '捻其', 0, 5154, 'CNG'),
('EJ', 'CASTANET', '捻其', 1, 5070, 'CNG'),
('EJ', 'CASTANET', '捻其', 2, 5401, 'CNG');