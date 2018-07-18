SELECT basketcontents.ProdID, ProdName, items.ItemID, ItemDesc, UnitOfMeasure, ItemQty
FROM basketcontents, items, product
WHERE basketcontents.ItemID = items.ItemID
AND basketcontents.ProdID = product.ProdID

/*LEFT JOIN items ON basketcontents.ItemID = items.ItemID*/
ORDER BY ProdID, ItemID;