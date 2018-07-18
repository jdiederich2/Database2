-- Produce Order/Invoices
SELECT o.OrdID, o.OrdDate, c.CustFName, c.CustLName, c.CustAddr, c.CustCity, c.CustState, c.CustZip,
o.ShipToCustFName, o.ShipToCustLName, o.ShipToCustAddr, o.ShipToCustCity, o.ShipToCustState, o.ShipToCustZip,
o.PaidDate, o.ShipDate, 
p.ProdID, p.ProdName, ol.ProdQty, ol.UnitPrice

FROM (((customer AS c
	 
	RIGHT JOIN orders AS o ON c.CustID = o.CustID)
    LEFT Join orderline AS ol ON o.OrdID = ol.OrdID)
    LEFT JOIN product AS p ON ol.ProdID = p.ProdID)
	WHERE o.OrdID in (100500, 100422, 100555)
	ORDER BY o.OrdID, p.ProdID;

