SELECT e.EmpLname, ts.Title, i.InstLname
FROM
	employee AS e,
    trnsession AS ts,
    trainedemployees AS te,
    instructor AS i
WHERE
	te.EmpID = e.EmpID AND
    ts.SessionID = te.SessionID AND
    ts.InstructorID = i.InstructorID AND
    ts.Subject = 'SQL'
ORDER BY e.EmpLname, ts.Title