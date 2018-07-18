SELECT 
	i.InstLname, e.EmpFname, e.EmpLname, ts.SessionDate, te.DateCompleted
FROM 
	trainedemployees AS te,
    trnsession AS ts,
    instructor AS i,
    employee AS e
WHERE
	te.EmpID = e.EmpID AND
    te.SessionID = ts.SessionID AND
    ts.InstructorID = i.InstructorID AND
    i.InstLname = 'Cramm'
ORDER BY e.EmpLname, e.EmpFname, te.DateCompleted