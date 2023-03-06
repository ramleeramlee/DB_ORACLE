CREATE TABLE student_information(
	학생번호 number(38,0) PRIMARY KEY,
	학생이름 VARCHAR2(100),
	주소 VARCHAR2(100),
	학과 VARCHAR2(100)
)

INSERT INTO student_information VALUES ('501', '박지성', '영국 멘체스터', '컴퓨터과')

INSERT INTO student_information VALUES ('401', '김연아', '대한민국 서울', '체육학과')

SELECT * FROM student_information


CREATE TABLE department(
	학과 VARCHAR2(100) PRIMARY KEY,
	학과사무실 VARCHAR2(100)
)

INSERT INTO department VALUES ('컴퓨터과', '공학관101')

INSERT INTO department VALUES ('체육학과', '체육관101')

SELECT * FROM STUDENT_INFORMATION si , DEPARTMENT d 
WHERE si.학과 = d.학과 


CREATE TABLE subject2(
	강좌이름 VARCHAR2(100) PRIMARY KEY,
	강의실 VARCHAR2(100)
)

INSERT INTO subject2 VALUES ('데이터베이스', '공학관 110')

INSERT INTO subject2 VALUES ('스포츠경영학', '체육관 103')


CREATE TABLE record(
	학생번호 number(38,0),
	강좌이름 VARCHAR2(100),
	성적 number(38,0)
)

INSERT INTO record VALUES ('501', '데이터베이스', '3.5')

INSERT INTO record VALUES ('401', '데이터베이스', '4.0')

SELECT * FROM RECORD

SELECT * FROM SUBJECT2 s, "RECORD" r  
WHERE s.강좌이름  = r.강좌이름 

SELECT * FROM STUDENT_INFORMATION si , "RECORD" r  
WHERE si.학생번호  = r.학생번호 

SELECT * FROM STUDENT_INFORMATION si 
LEFT OUTER JOIN "RECORD" r 
ON si.학생번호 = r.학생번호 

SELECT si.학생번호, si.학생이름, si.주소, si.학과, d.학과사무실, s.강좌이름, s.강의실, r.성적
FROM STUDENT_INFORMATION si
INNER JOIN department ON d.학과 = si.학과 
INNER JOIN "RECORD" r ON r.학생번호 = si.학생번호
INNER JOIN SUBJECT2 s ON s.강좌이름 = r.강좌이름 










