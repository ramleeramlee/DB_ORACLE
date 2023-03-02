CREATE TABLE PRODUCT3(	
"ID" VARCHAR2(200),
"NAME" VARCHAR2(200),
"CONTENT" VARCHAR2(200),
"PRICE" NUMBER(38,0),
"COMPANY" VARCHAR2(200),
"IMG" VARCHAR2(200)
)

INSERT INTO PRODUCT3 VALUES ('100','food1','fun food1','1000','c100','1.png')

INSERT INTO PRODUCT3 VALUES ('101','food2','fun food2','2000','c200','2.png')

INSERT INTO PRODUCT3 VALUES ('102','food3','fun food3','3000','c300','3.png')

INSERT INTO PRODUCT3 VALUES ('103','food4','fun food4','4000','c100','4.png')

INSERT INTO PRODUCT3 VALUES ('104','food5','fun food5','5000','c200','5.png')

INSERT INTO PRODUCT3 VALUES ('105','food6','fun food6','6000','c300','6.png')

INSERT INTO PRODUCT3 VALUES ('106','food7','fun food7','7000','c100','7.png')

INSERT INTO PRODUCT3 VALUES ('107','food8','fun food8','8000','c200','8.png')

INSERT INTO PRODUCT3 VALUES ('108','food9','fun food9','9000','c300','9.png')

INSERT INTO PRODUCT3 VALUES ('109','food10','fun food10','10000','c100','10.png')

SELECT * FROM PRODUCT3
ORDER BY PRICE DESC

SELECT * FROM PRODUCT3

SELECT NAME, CONTENT, PRICE FROM PRODUCT3
ORDER BY COMPANY 

SELECT DISTINCT COMPANY FROM PRODUCT3 

SELECT PRICE * 5 AS "PRICE5" FROM PRODUCT3

SELECT NAME, COMPANY FROM PRODUCT3
WHERE PRICE = 5000

SELECT NAME, PRICE, COMPANY FROM PRODUCT3
WHERE PRICE BETWEEN 3000 AND 6000

SELECT * FROM PRODUCT3 

SELECT COMPANY, NAME FROM PRODUCT3
WHERE NOT COMPANY = 'c100'

SELECT NAME, PRICE FROM PRODUCT3
WHERE COMPANY = 'c100' OR COMPANY = 'c200'

SELECT * FROM PRODUCT3 
WHERE NAME LIKE '%4'

SELECT * FROM PRODUCT3 
WHERE CONTENT LIKE '%food%'

UPDATE PRODUCT3 SET CONTENT = '품절' WHERE PRICE = 5000

UPDATE PRODUCT3 SET IMG = '0.png', PRICE = '10000' WHERE ID = '100' OR ID = '102'

DELETE FROM PRODUCT3 WHERE COMPANY = 'c100'

DELETE FROM PRODUCT3

SELECT * FROM PRODUCT3



















)