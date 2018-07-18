SELECT i.InstFname, i.InstLname, ts.Title, ts.SessionDate
FROM instructor AS i, trnsession AS ts
WHERE i.InstructorID = ts.InstructorID
ORDER BY ts.SessionDate DESC;