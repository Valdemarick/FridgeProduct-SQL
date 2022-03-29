--¬ыбрать все продукты и им€ владельца из холодильника, в котором больше всего наименований продуктов. »менно наименований, не количества

SELECT TOP 1 Fridges.OwnerName, COUNT(*) AS CountOfProductName
FROM Fridges_Products INNER JOIN Fridges ON Fridges_Products.FridgeId = Fridges.Id
GROUP BY Fridges.OwnerName
ORDER BY COUNT(*) DESC;