SELECT items.ItemID, VendCompany, VendCity, ItemPrice
FROM items
LEFT JOIN vendor ON items.VendID = vendor.VendID
ORDER BY VendCity, VendCompany, ItemID;