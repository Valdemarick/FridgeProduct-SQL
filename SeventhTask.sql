SELECT Fridges.Id, FridgeModels.Name, SUM(Fridges_Products.ProductQuantity) AS SumOfProducts
FROM Fridges_Products INNER JOIN Products ON Fridges_Products.ProductId = Products.Id
					  INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
					  INNER JOIN FridgeModels ON Fridges.FridgeModelId = FridgeModels.Id
GROUP BY Fridges.Id, FridgeModels.Name
ORDER BY SUM(Fridges_Products.ProductQuantity) DESC;