--Сделать выборку продуктов по холодильникам, модель которых начинается на A

SELECT Products.Name
FROM Fridges_Products INNER JOIN Products ON Products.Id = Fridges_Products.ProductId
					  INNER JOIN Fridges ON Fridges.Id = Fridges_Products.FridgeId
					  INNER JOIN FridgeModels ON Fridges.FridgeModelId = FridgeModels.Id
WHERE FridgeModels.Name LIKE 'A%';