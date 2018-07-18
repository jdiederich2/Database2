SELECT ts.Title, e.EmpLname, te.DateCompleted, i.InstLname
From trnsession AS ts, employee AS e, trainedemployee AS te, instructor AS i
WHERE ts.SessionID = te.SessionID 
AND ts.InstructorID = i.InstructorID
AND te.EmpID = e.EmpID
ORDER BY ts.Title, e.EmpLname

