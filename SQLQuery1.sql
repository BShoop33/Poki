--Exercise 1
/*
SELECT gr.Name
FROM Grade gr
*/

--Exercise 2
/*
SELECT e.Name
FROM PoemEmotion pe
LEFT OUTER JOIN Emotion e ON e.Id = pe.Id
WHERE e.Name != 'NULL'
*/

--Exercise 3 
/*
SELECT COUNT(DISTINCT p.Title)
FROM  Poem p
*/

--Exercise 4
/*
SELECT TOP (76) a.Name
FROM  Author a
ORDER BY a.Name
*/

--Exercise 5
/*
SELECT TOP (76) a.Name, g.Name
FROM  Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
ORDER BY a.Name
*/

--Exercise 6
/*
SELECT TOP (76) a.Name, g.Name, ge.Name
FROM  Author a
LEFT JOIN Grade g ON a.GradeId = g.Id
LEFT JOIN Gender ge ON a.GenderId = ge.Id
ORDER BY a.Name
*/

--Exercise 7
/*
SELECT SUM(WordCount)
FROM POEM
*/

--Exercise 8
/*
SELECT TOP 1 MIN(CharCount), Title
FROM Poem
GROUP BY Title
ORDER BY MIN(CharCount)
*/

--Exercise 9
/*
SELECT COUNT(GradeId)
FROM Author
WHERE GradeId = 3
*/

--Exercise  10
/*
SELECT COUNT(GradeId)
FROM Author
WHERE GradeId = 3 OR GradeId = 2 OR GradeId = 1
*/

--Exercise 11
/*
SELECT COUNT(DISTINCT Title)
FROM Poem p
LEFT JOIN Author a ON a.Id = p.AuthorId
WHERE a.GradeId = 4
*/

--Exercise 12
/*
SELECT a.GradeId, COUNT(DISTINCT p.Title)
FROM Poem p
LEFT JOIN Author a ON a.Id = p.AuthorId
GROUP BY a.GradeId
ORDER BY a.GradeId
*/

--Exercise 13
/*
SELECT a.GradeId, COUNT(DISTINCT p.Title), COUNT(DISTINCT a.Name)
FROM Poem p
LEFT JOIN Author a ON a.Id = p.AuthorId
GROUP BY a.GradeId
ORDER BY a.GradeId
*/

--Exercise 14
/*
SELECT TOP 1 p.Title
FROM Poem p
GROUP BY p.WordCount, p.Title
ORDER BY p.WordCount DESC
*/

--Exercise 15
/*
SELECT  TOP 10 a.Id, COUNT(p.Title)
FROM Poem p
LEFT JOIN Author a ON a.ID = p.AuthorId
GROUP BY a.Id
ORDER BY COUNT(p.Title) DESC
*/

--Exercise 16
/*
SELECT COUNT(DISTINCT pe.PoemId)
FROM PoemEmotion pe
WHERE EmotionId = 3
*/

--Exercise 17
/*
SELECT COUNT(p.Title)
FROM Poem p 
LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
WHERE pe.PoemId IS NULL
*/

--Exercise 18
SELECT TOP 1 pe.EmotionId, COUNT(p.Title)
FROM PoemEmotion pe
LEFT JOIN Poem p ON p.Id = pe.PoemId
GROUP BY pe.EmotionId
ORDER BY pe.Emotionid