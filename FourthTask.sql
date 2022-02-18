SELECT Fridges.OwnerName, Products.Name, SUM(Fridges_Products.FridgeId)
FROM Fridges_Products INNER JOIN Fridges ON Fridges.Id = Fridges_Products.FridgeId
					  INNER JOIN Products ON Products.Id = Fridges_Products.ProductId
GROUP BY Fridges.OwnerName, Products.Name;
