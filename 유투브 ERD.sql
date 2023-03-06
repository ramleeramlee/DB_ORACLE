SELECT * FROM 유저

SELECT * FROM 영상

SELECT * FROM 댓글

INSERT INTO 유저 VALUES ('ice', 'ice', 'ice')

UPDATE 유저 SET 비번 = 'water' WHERE  아이디 = 'ice'

INSERT INTO 영상 VALUES ('3', '주말','데이트','apple')

SELECT * FROM 유저, 영상
WHERE 유저.아이디 = 영상.올린사람 

SELECT * FROM 유저, 댓글
WHERE 유저.아이디 = 댓글.아이디 

SELECT * FROM 영상, 댓글
WHERE 영상.올린사람  = 댓글.아이디 

SELECT * FROM 유저
LEFT OUTER JOIN 영상
ON 유저.아이디 = 영상.올린사람 









