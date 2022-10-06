
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS order_car;
DROP TABLE IF EXISTS option;
DROP TABLE IF EXISTS car_option;
DROP TABLE IF EXISTS order_option;
SET FOREIGN_KEY_CHECKS = 1;

-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- Car Table Create SQL
CREATE TABLE Car
(
    `id`          INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '자동차 id. ex) auto increment', 
    `code`        VARCHAR(30)     NULL        COMMENT '자동차 코드. ex) NE', 
    `model`       VARCHAR(30)     NULL        COMMENT '자동차 모델. ex) 아이오닉5', 
    `series`      VARCHAR(30)     NULL        COMMENT '자동차 시리즈. ex) SUV 5 doors', 
    `generation`  VARCHAR(30)     NULL        COMMENT '자동차 세대. ex) 5세대', 
    `price`       INT UNSIGNED    NULL        COMMENT '자동차 가격. ex) x,xxx만원', 
    `fuel_type`   VARCHAR(30)     NULL        COMMENT '자동차 연료 타입. ex) 가솔린', 
     PRIMARY KEY (id)
);

ALTER TABLE Car COMMENT '차량 정보 테이블';


-- User Table Create SQL
CREATE TABLE User
(
    `id`               INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '고객 고유키', 
    `user_id`          VARCHAR(300)    NULL        COMMENT '고객 id', 
    `crd`              VARCHAR(72)     NULL        COMMENT '고객 패스워드', 
    `name`             VARCHAR(300)    NULL        COMMENT '고객 이름', 
    `address`          VARCHAR(300)    NULL        COMMENT '고객 주소', 
    `phone`            CHAR(15)        NULL        COMMENT '고객 전화번호', 
    `deleted`          BIT             NULL        COMMENT '고객 탈퇴여부', 
    `email`            VARCHAR(320)    NULL        COMMENT '고객 이메일', 
    `resident_number`  CHAR(13)        NULL        COMMENT '고객 주민번호', 
    `role`             VARCHAR(10)     NULL        COMMENT '유저 role', 
     PRIMARY KEY (id)
);

ALTER TABLE User COMMENT '고객 정보 테이블';


-- Order_Car Table Create SQL
CREATE TABLE Order_Car
(
    `id`            INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '주문 id', 
    `customer_id`   INT UNSIGNED    NOT NULL    COMMENT '주문 고객 고유키', 
    `car_id`        INT UNSIGNED    NOT NULL    COMMENT '주문 자동차 id', 
    `address`       VARCHAR(300)    NULL        COMMENT '주문 수령지 주소', 
    `requestmsg`    VARCHAR(300)    NULL        COMMENT '메세지', 
    `status`        TINYINT         NULL        COMMENT '주문 상태. ex) 0 배송중, 1 배송완료, 2 환불', 
    `price`         INT UNSIGNED    NULL        COMMENT '주문 총 가격', 
    `order_time`    DATETIME        NULL        COMMENT '주문 시간', 
    `release_time`  DATETIME        NULL        COMMENT '출고 시간', 
     PRIMARY KEY (id)
);

ALTER TABLE Order_Car
    ADD CONSTRAINT FK_Order_Car_customer_id_User_id FOREIGN KEY (customer_id)
        REFERENCES User (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Order_Car
    ADD CONSTRAINT FK_Order_Car_car_id_Car_id FOREIGN KEY (car_id)
        REFERENCES Car (id) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- Option Table Create SQL
CREATE TABLE Option
(
    `id`     INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '옵션 id', 
    `name`   VARCHAR(45)     NULL        COMMENT '옵션 이름', 
    `price`  VARCHAR(45)     NULL        COMMENT '가격', 
     PRIMARY KEY (id)
);


-- Car_Option Table Create SQL
CREATE TABLE Car_Option
(
    `option_id`  INT UNSIGNED    NOT NULL    COMMENT '옵션 id', 
    `car_id`     INT UNSIGNED    NOT NULL    COMMENT '옵션 자동차 id', 
     PRIMARY KEY (option_id, car_id)
);

ALTER TABLE Car_Option
    ADD CONSTRAINT FK_Car_Option_car_id_Car_id FOREIGN KEY (car_id)
        REFERENCES Car (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Car_Option
    ADD CONSTRAINT FK_Car_Option_option_id_Option_id FOREIGN KEY (option_id)
        REFERENCES Option (id) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- Order_Option Table Create SQL
CREATE TABLE Order_Option
(
    `order_id`   INT UNSIGNED    NOT NULL    COMMENT '주문 id', 
    `option_id`  INT UNSIGNED    NOT NULL    COMMENT '세부 주문의 옵션 id', 
    `car_id`     INT UNSIGNED    NOT NULL    COMMENT '세부 주문의 자동차 id', 
     PRIMARY KEY (order_id, option_id, car_id)
);

ALTER TABLE Order_Option
    ADD CONSTRAINT FK_Order_Option_car_id_Car_id FOREIGN KEY (car_id)
        REFERENCES Car (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Order_Option
    ADD CONSTRAINT FK_Order_Option_option_id_Option_id FOREIGN KEY (option_id)
        REFERENCES Option (id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Order_Option
    ADD CONSTRAINT FK_Order_Option_order_id_Order_Car_id FOREIGN KEY (order_id)
        REFERENCES Order_Car (id) ON DELETE RESTRICT ON UPDATE RESTRICT;








ALTER TABLE User RENAME TO user;
ALTER TABLE Order_Car RENAME TO order_car;
ALTER TABLE Car RENAME TO car;
ALTER TABLE Order_Option RENAME TO order_option;
ALTER TABLE Option RENAME TO option;
ALTER TABLE Car_Option RENAME TO car_option;


