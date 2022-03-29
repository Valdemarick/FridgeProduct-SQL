--вывести все продукты для холодильника в id 2 (или выбрать определенный Guid)


SELECT Products.Name
FROM Fridges_Products INNER JOIN Products ON Fridges_Products.ProductId = Products.Id
WHERE Fridges_Products.FridgeId = '311986A3-2A5B-4AEE-991F-03868BA0529C';