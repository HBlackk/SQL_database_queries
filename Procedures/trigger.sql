CREATE TRIGGER Cancel_Trigger ON Booking AFTER DELETE
AS	
	declare @booking_ID int;
	declare @staff_ID int;
	declare @firstname varchar(25);
	declare @surname varchar(25);
	declare @staff_email varchar(50);
	declare @action varchar(100);

	select @booking_ID = d.booking_ID FROM DELETED d;
	select @staff_ID = d.staff_ID FROM DELETED d;
	select @firstname = d.firstname FROM DELETED d;
	select @surname = d.surname FROM DELETED d;
	select @staff_email = d.staff_email FROM DELETED d;
	set @action = 'DELETED';

	SELECT * FROM Booking 
	inner join 
	StaffBooking on Booking.booking_ID = StaffBooking.booking_ID
	inner join 
	Staff on StaffBooking.staff_ID = Staff.staff_ID


	

