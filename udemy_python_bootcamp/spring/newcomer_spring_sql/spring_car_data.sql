SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE car;
SET FOREIGN_KEY_CHECKS = 1;
INSERT INTO car (code,model,series,generation,price,fuel_type)
VALUES 
('NE', 'IONIQ 5', 'SUV', 1, 5001, '전기'),
('CE', 'IONIQ 6', '세단', 1, 5200, '전기'),
('AX', '캐스퍼', 'SUV', 1, 1375, '가솔린'),
('LX', '팰리세이드 F/L', 'SUV', 1, 3867, '가솔린'),
('OS PE', '코나 N', 'SUV', 4, 3418, '가솔린'),
('CN7_N', '아반떼 N', '세단', 7, 3212, '가솔린'),
('US4', '스타리아', '벤', 1, 2596, '디젤'),
('OS', '코나 F/L', 'SUV', 1, 2144, '가솔린'),
('NQ5', '기아 스포티지', 'SUV', 5, 2474, '가솔린'),
('GL3 HV', '기아 K8 하이브리드', '세단', 1, 3738, '하이브리드');