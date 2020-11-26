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
SELECT COUNT(DISTINCT p.Title)
FROM  Poem p