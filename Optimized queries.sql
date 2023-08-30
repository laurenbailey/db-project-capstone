-- Creating GetMaxQuantity procedure
create procedure GetMaxQuantity() select quantity from orders
order by quantity desc limit 1;
call GetMaxQuantity();

-- creating prepared statement GetOrderDetail
prepare GetOrderDetail from 'select OrderID, Quantity, Cost from Orders where CustomerID =?';
set @id = 1;
Execute GetOrderDetail using @id;

-- Creating procedure CancelOrder
delimiter //
create procedure CancelOrder (in order_id int)
begin
delete from orders where OrderID = order_id;
select concat("Order ", (order_id), " is cancelled") as Confirmation;
end //
delimiter ;
call CancelOrder(5);