# 테스트 DB 생성
DROP DATABASE IF EXISTS acc_app_2024_04__test;
CREATE DATABASE acc_app_2024_04__test;
USE acc_app_2024_04__test;


# 개발 DB 생성
DROP DATABASE IF EXISTS acc_app_2024_04__dev;
CREATE DATABASE acc_app_2024_04__dev;
USE acc_app_2024_04__dev;

SHOW TABLES

SELECT * FROM `member`

SELECT * FROM song

SELECT * FROM product

SELECT * FROM cart_item

SELECT * FROM cash_log

SELECT * FROM order_item

SELECT * FROM product_order

SELECT * FROM `order`

SELECT * FROM rebate_order_item


SELECT order_item_id, pay_price, refund_price, wholesale_price, pg_fee,
       CASE
           WHEN pay_price = refund_price
               THEN 0
           ELSE wholesale_price - pg_fee
           END AS rebate_price
FROM `rebate_order_item`;
