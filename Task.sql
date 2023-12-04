SELECT Name_products, Name_category
FROM   dbo.Categories INNER JOIN
             dbo.ProductInformation ON dbo.Categories.id_category = dbo.ProductInformation.id_Categories INNER JOIN
             dbo.Products ON dbo.ProductInformation.id_Products = dbo.Products.id_Product