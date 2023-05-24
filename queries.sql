-- Multi-Table Sorgu Pratiği

-- Tüm ürünler(product) için veritabanındaki ProductName ve CategoryName'i listeleyin. (77 kayıt göstermeli)
SELECT CategoryName, ProductName FROM Product JOIN Category ON CategoryId = Category.Id;
-- 9 Ağustos 2012 öncesi verilmiş tüm siparişleri(order) için sipariş id'si (Id) ve gönderici şirket adını(CompanyName)'i listeleyin. (429 kayıt göstermeli)
SELECT Id as order_id, CompanyName FROM [Order] JOIN [Shipper] ON ShipVia = Shipper.Id WHERE OrderDate < '2012-08-09';
-- Id'si 10251 olan siparişte verilen tüm ürünlerin(product) sayısını ve adını listeleyin. ProdcutName'e göre sıralayın. (3 kayıt göstermeli)
SELECT ProductName, Quantity FROM Product JOIN OrderDetail ON Product.Id = ProductId WHERE OrderId = 10251 GROUP BY ProductName;
-- Her sipariş için OrderId, Müşteri'nin adını(Company Name) ve çalışanın soyadını(employee's LastName). Her sütun başlığı doğru bir şekilde isimlendirilmeli. (16.789 kayıt göstermeli)
SELECT Id as order_id, CompanyName, LastName FROM [Order] JOIN [Customer] ON CustomerId = Customer.Id JOIN [Employee] ON EmployeeId = Employee.Id;