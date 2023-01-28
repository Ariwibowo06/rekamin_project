SELECT consumers.CustomerID,consumers.FirstName,consumers.CustomerCity,consumers.CustomerState,orders.Date,orders.ProdNumber,orders.Quantity,product.ProdName,product.Category,product.Price,category.CategoryName,category.CategoryAbbreviation
FROM (((consumers
INNER JOIN orders ON consumers.CustomerID = orders.CustomerID)
INNER JOIN product ON orders.ProdNumber = product.ProdNumber)
INNER JOIN category ON product.Category = category.CategoryID);