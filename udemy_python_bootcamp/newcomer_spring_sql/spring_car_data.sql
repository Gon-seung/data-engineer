SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE car;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO car (code,model,series,generation,price,fuel_type)
VALUES 
('NE', 'IONIQ 5', 'SUV', 1, 5001, '����'),
('CE', 'IONIQ 6', '����', 1, 5200, '����'),
('AX', 'ĳ����', 'SUV', 1, 1375, '���ָ�'),
('LX', '�Ӹ����̵� F/L', 'SUV', 1, 3867, '���ָ�'),
('OS PE', '�ڳ� N', 'SUV', 4, 3418, '���ָ�'),
('CN7_N', '�ƹݶ� N', '����', 7, 3212, '���ָ�'),
('US4', '��Ÿ����', '��', 1, 2596, '����'),
('OS', '�ڳ� F/L', 'SUV', 1, 2144, '���ָ�'),
('NQ5', '��� ����Ƽ��', 'SUV', 5, 2474, '���ָ�'),
('GL3 HV', '��� K8 ���̺긮��', '����', 1, 3738, '���̺긮��');