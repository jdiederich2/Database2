SELECT s.LName, s.FName, c.CourseTitle, r.Grade
FROM (students AS s INNER JOIN roster AS r ON s.StudentID = r.StudentID)
INNER JOIN course AS c ON r.CourseID = c.CourseID
ORDER BY s.LName, s.FName;