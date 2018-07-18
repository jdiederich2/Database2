

SELECT CustFName, CustLName, CustAddr, CustCity, CustState, CustZip
FROM customer
WHERE customer.CustID
	IN (select CustID from orders where OrdID = 100422)
    
UNION

SELECT CustFName, CustLName, CustAddr, CustCity, CustState, CustZip
FROM customer
WHERE CustID
	IN (select ShipToCustID from orders where OrdID = 100422);
    