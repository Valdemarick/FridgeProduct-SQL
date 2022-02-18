SELECT TOP 1 Fridges.OwnerName, COUNT(*) AS CountOfProductName
FROM Fridges_Products INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
GROUP BY Fridges.OwnerName
ORDER BY COUNT(*) DESC;