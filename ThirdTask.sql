--В каком году выпустили холодильник с наибольшей вместимостью (сумма всех продуктов больше всего)

SELECT TOP 1 FridgeModels.ProductionYear,SUM(Fridges_Products.ProductQuantity) AS AmountOfProducts
FROM Fridges_Products INNER JOIN Fridges ON Fridges.Id = Fridges_Products.FridgeId
					  INNER JOIN FridgeModels ON Fridges.FridgeModelId = FridgeModels.Id
GROUP BY FridgeModels.ProductionYear
ORDER BY AmountOfProducts DESC;