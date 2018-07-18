-- Specify the database to use.
-- If you don't have boardgames yet, right click in your schemas pane to the
--   left and create a new schema.
USE gifthorse;

-- Display a Product Catalog
SELECT * FROM gifthorse.product;


-- Produce a list of items that make up each product
SELECT b.ProdID, ProdName, items.ItemID, ItemDesc, UnitOfMeasure, ItemQty
FROM basketcontents AS b, items, product
WHERE b.ItemID = items.ItemID
AND b.ProdID = product.ProdID
ORDER BY ProdID, ItemID;


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


-- Track the items that make up products and company that supply them
SELECT items.ItemID, VendCompany, VendCity, ItemPrice
FROM items
LEFT JOIN vendor ON items.VendID = vendor.VendID
ORDER BY VendCity, VendCompany, ItemID;

