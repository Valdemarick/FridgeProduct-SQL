SELECT Fridges.Id, Products.Name
FROM Fridges_Products INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
					  INNER JOIN Products ON Fridges_Products.ProductId = Products.Id
ORDER BY Fridges.Id;