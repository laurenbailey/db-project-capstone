-- inserting in Bookings (had to add staffID since mine includes it)
insert into Bookings(BookingID, Date, TableNumber, CustomerID, StaffID) values
(1, 20221010, 5, 1, 3),
(2, 20221112, 3, 3, 4),
(3, 20221011, 2, 2, 5),
(4, 20221013, 2, 1, 6);

Select * from Bookings;

-- creating stored procedure CheckBooking
delimiter //
create procedure CheckBooking(in booking_date date, in table_number int)
begin
select bookings.Date into booking_date from Bookings where date = booking_date;
insert into Bookings(bookingID, date, tableNumber, BookingTime, CustomerID, StaffID) values
(0, booking_date, table_number, null, 0, 0);
if table_number = null then select concat("Table ", table_number, " is available") as BookingStatus;
else select concat("Table ", table_number, " is already booked") as BookingStatus;
end if;
end //
delimiter ;
call CheckBooking("2022-11-12", 3);

-- creating stored procedure AddValidBooking
delimiter //
create procedure AddValidBooking(in booking_date date, in table_number int)
begin
set autocommit = 0;
start transaction;
select bookings.Date into booking_date from Bookings where bookings.Date = booking_date limit 1;
select tablenumber into table_number from bookings where TableNumber = table_number limit 1;
insert into bookings(BookingID, date, TableNumber, BookingTime, CustomerID, StaffID) values
	(-1, booking_date, table_number, null, 0, 0);
	if table_number = null then commit; select concat("Table ", table_number, " is available - booking confirmed") as BookingStatus;
	else rollback;
	select concat("Table ", table_number, " is alredy booked - booking cancelled") as BookingStatus;
	end if;
end //
delimiter ;
call AddValidBooking("2022-12-17", 6);

