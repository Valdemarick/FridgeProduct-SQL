--Сделать выборку холодильников, в которых есть продукты в количестве, меньшем чем количество по умолчанию

SELECT Fridges_Products.FridgeId
FROM Fridges_Products INNER JOIN Products ON Fridges_Products.ProductId = Products.Id
WHERE Fridges_Products.ProductQuantity < Products.Quantity