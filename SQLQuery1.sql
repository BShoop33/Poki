﻿--Exercise 1
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
SELECT COUNT(GradeId)
FROM Author
WHERE GradeId = 3

