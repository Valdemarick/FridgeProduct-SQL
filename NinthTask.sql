--вывести список холодильников, где содержаться продукты, количество которых больше, чем кол-во по умолчанию

SELECT Fridges.Id
FROM Fridges_Products INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
					  INNER JOIN Products ON Fridges_Products.ProductId = Products.Id
WHERE Fridges_Products.ProductQuantity > Products.Quantity;