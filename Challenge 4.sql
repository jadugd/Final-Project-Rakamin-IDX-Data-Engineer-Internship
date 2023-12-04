
create procedure summary_status_order(@status INT) as
BEGIN
select a.OrderID, b.CustomerName, c.ProductName, a.Quantity, d.StatusOrder
from FactSalesOrder a
join DimCustomer b on b.CustomerID = a.CustomerID
join DimProduct c on c.ProductID = a.ProductID
join DimStatusOrder d on d.StatusID = a.StatusID
WHERE a.StatusID = @status
END

exec dbo.summary_status_order 4