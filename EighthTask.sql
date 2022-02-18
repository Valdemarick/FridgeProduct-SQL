SELECT Fridges.Id, FridgeModels.Name AS ModelName, FridgeModels.ProductionYear, SUM(Fridges_Products.ProductQuantity) AS SumOfProducts
FROM Fridges_Products INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
					  INNER JOIN FridgeModels ON Fridges.FridgeModelId = FridgeModels.Id
GROUP BY Fridges.Id, FridgeModels.Name, FridgeModels.ProductionYear
ORDER BY SumOfProducts DESC;