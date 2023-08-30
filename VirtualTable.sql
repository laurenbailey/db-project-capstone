## Creating virtual table
Create view OrdersView AS select OrderID, Quantity, Cost from Orders Where quantity > 2;
Select * from OrdersView;

select customers.customerID, customers.FullName, orders.OrderID, orders.Cost, menu.MenuName, menuitems.ItemName, menuitems.Type
FROM customers inner join orders on customers.CustomerID = orders.CustomerID inner join menu on orders.MenuID = menu.MenuID inner join menuitems
on menu.MenuItemID = menuitems.MenuItemID
where orders.Cost > 150 order by orders.Cost asc;

select MenuName from Menu where MenuItemID = any (select quantity from orders where Quantity > 2);