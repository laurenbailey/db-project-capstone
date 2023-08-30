Insert Into menuitems(MenuItemID, ItemName, Type, Price) values
(1, 'Chips and Salsa', 'Appetizers', 2),
(2, 'Queso', 'Appetizers', 4),
(3, 'Guacomole', 'Appetizers', 5.95),
(4, 'Chicken Burrito', 'Burritos', 7.40),
(5, 'Bean and Cheese Burrito', 'Burritos', 8.41),
(6, 'Chicken Enchilada', 'Enchilada', 7),
(7, 'Shrimp Enchilada', 'Enchilda', 9),
(8, 'Steak Tacos', 'Tacos', 10),
(9, 'Shrimp Tacos', 'Tacos', 9),
(10, 'Al Pastor Tacos', 'Tacos', 12),
(11, 'Jarritos', 'Beverages', 4),
(12, 'Margarita', 'Beverages', 7),
(13, 'Churros', 'Desserts', 4),
(14, 'Popsicle', 'Desserts', 2.50);


Insert into Menu(MenuID, Cuisine, MenuName, MenuItemID) values
(1, 'Mexican', 'Appetizers', 1),
(2, 'Mexican', 'Appetizers', 2),
(3, 'Mexican', 'Appetizers', 3),
(4, 'Mexican', 'Burritos', 4),
(5, 'Mexican', 'Burritos', 5),
(6, 'Mexican', 'Enchilada', 6),
(7, 'Mexican', 'Enchilada', 7),
(8, 'Mexican', 'Tacos', 8),
(9, 'Mexican', 'Tacos', 9),
(10, 'Mexican', 'Tacos', 10),
(11, 'Mexican', 'Beverages', 11),
(12, 'Mexican', 'Beverages', 12),
(13, 'Mexican', 'Desserts', 13),
(14, 'Mexican', 'Desserts', 14);

Insert into customers(CustomerID, FullName, PhoneNumber, Email) values
(1, 'Hannah Marley', 1704562154, 'hannahm@gmail.com'),
(2, 'John Moss', 1704123654, 'johnmoss@gmail.com'),
(3, 'Laura Han', 1064512514, 'laurah2@gmail.com'),
(4, 'September Bailey', 1785421548, 'septemberb@gmail.com'),
(5, 'Jacob Lee', 1785423958, 'leejacob@gmail.com'),
(6, 'Mark Hope', 1704521548, 'markhope2@gmail.com'),
(7, 'Madison Moon', 1064523584, 'madisonm@gmail.com'),
(8, 'Cooper Long', 1785423568, 'longcoop@gmail.com'),
(9, 'Harper Song', 1704521598, 'harper8@gmail.com'),
(10, 'Vannesa Man', 1065421895, 'vannessam@gmail.com');

Insert into Staff(StaffID, StaffName, Role, Salary) values
(1, 'Will Hughes', 'Chef', 28000),
(2, 'Sam Wright', 'Chef', 27000),
(3, 'Martha Kong', 'Waiter', 14000),
(4, 'Mike Home', 'Waiter', 14000),
(5, 'Samantha Hu', 'Manager', 80000),
(6, 'Matthew Blue', 'Host', 62000);

Insert into deliverystatus(StatusID, Date, Status) values
(1, 20230506, 'Delivered'),
(2, 20230204, 'Canceled'),
(3, 20230704, 'Delivered'),
(4, 20230829, 'In Transit'),
(5, 20230105, 'Canceled');

Insert into Bookings(BookingID, Date, TableNumber, BookingTime, CustomerID, StaffID) values
(1, 20230412, 4, '18:00:00', 5, 3),
(2, 20230108, 1, '15:30:00', 8, 5),
(3, 20230512, 2, '20:00:00', 1, 4),
(4, 20230604, 1, '19:00:00', 7, 3),
(5, 20230820, 3, '18:30:00', 5, 6);

Insert into Orders(OrderID, OrderDate, Cost, StatusID, MenuID, Quantity, StaffID, CustomerID) values
(1, 20230704, 14, 3,6, 2, 1, 10),
(2, 20230506, 12, 1, 2, 3, 2, 7),
(3, 20230105, 9, 5, 9, 1, 1, 1),
(4, 20230829, 42.05, 4, 5, 5, 2, 5),
(5, 20230204, 40, 2, 8, 4, 1, 2);