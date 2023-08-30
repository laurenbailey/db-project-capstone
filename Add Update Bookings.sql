-- creating procedure AddBooking
delimiter //
create procedure AddBooking(in booking_id int, in booking_date date, in table_number int, in customer_id int)
	begin
    select BookingID into booking_id from bookings where bookingID = booking_id;
    select bookings.date into booking_date from bookings where bookings.date = booking_date;
    select TableNumber into table_number from bookings where TableNumber = table_number;
    select CustomerID into customer_id from bookings where CustomerID = customer_id;
    insert into bookings(BookingID, date, TableNumber, BookingTime, CustomerID, StaffID) values
    (booking_id, booking_date, table_number, null, customer_id, 0);
    select("New Booking Added") as Confirmation;
    end //
delimiter ;
call AddBooking(9, "2022-12-30", 4, 3);

-- creating procedure UpdateBooking
delimiter //
create procedure UpdateBooking(in booking_id int, in booking_date date)
	begin
    select BookingID into booking_id from bookings where BookingID = booking_id;
    select bookings.date into booking_date from bookings where bookings.date = booking_date;
    update Bookings set bookings.date = booking_date where BookingID = booking_id;
    select concat("Booking ", booking_id, " updated") as Confirmation;
    end //
delimiter ;
call UpdateBooking(9, "2022-12-17");

-- Creating procedure CancelBooking
delimiter //
create procedure CancelBooking(in booking_id int)
	begin
    select BookingID into booking_id from bookings where BookingID = booking_id;
    delete from bookings where BookingID = booking_id;
    select concat("Booking ", booking_id, " cancelled") as Confirmation;
    end //
delimiter ;
call CancelBooking(9);