-- JOIN하는 이유? 검색을 하고 싶은데 항목들이 여러개의 테이블에 흩어져있는 경우
-- 테이블을 모아서(합해서) 검색

SELECT * FROM MEMBER m , BBS b 
WHERE M.ID = B.WRITER -- INNER JOIN = 두 테이블 간의 교집합

SELECT B."no", TITLE, NAME FROM MEMBER m , BBS b 
WHERE M.ID = B.WRITER 


-----INNER JOIN : 테이블간 공통된 값만 추출
-- 하나 이상 동일한 컬럼이 있어야 한다

SELECT E.EMPNO, E.ENAME, E.JOB, D.DEPTNO, D.LOC  
FROM EMP e , DEPT d 
WHERE E.DEPTNO = D.DEPTNO 


------LEFT/RIGHT OUTER JOIN 
---- 한쪽은 다 보이게 하고 다른 한 쪽은 일치하는 것만

SELECT * 
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
ON (M.ID = B.WRITER)

SELECT * 
FROM "MEMBER" m 
RIGHT OUTER JOIN BBS b 
ON (M.ID = B.WRITER)

-- EMP테이블 정보는 다 보이게 하고, DEPT는 맞는 것만 오른쪽에 붙여주기
-- 무조건 먼저 위치해 있는 테이블이 왼쪽, 그 다음이 오른쪽
-- 여기서 LEFT라면 왼쪽 테이블 기준, RIGHT면 오른쪽 테이블 기준

SELECT *
FROM EMP e 
LEFT OUTER JOIN DEPT d 
ON (E.DEPTNO = D.DEPTNO)

-- DEPT테이블 정보는 다 보이게 하고, EMP는 맞는 것만 오른쪽에 붙여주기


SELECT *
FROM EMP e 
RIGHT OUTER JOIN DEPT d
ON (E.DEPTNO = D.DEPTNO)


------------------------------------------

SELECT *
FROM "MEMBER" m, BBS b 
WHERE B.WRITER = M.ID 

--> B.WRITER에 있는 값과 M.ID 에 있는 값 중 교집합은 ICE, APPLE

SELECT *
FROM "MEMBER" m 
LEFT OUTER JOIN BBS b 
ON (B.WRITER = M.ID)

--> 왼쪽이므로 MEMBER 기준으로 공통된 내역 + MEMBER 전부 출력된다 
-->> ICE, APPLE, KIWI (BEST는 출력되지 않는다)

SELECT *
FROM "MEMBER" m 
RIGHT OUTER JOIN BBS b 
ON (B.WRITER = M.ID)

--> 오른쪽이므로 BBS기준으로 공통된 내역 + BBS 전부 출력된다
-->> ICE, APPLE, BEST (KIWI는 출력되지 않는다)







