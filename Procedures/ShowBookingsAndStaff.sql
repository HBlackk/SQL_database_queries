create procedure pr_bookingsandstaff
(@booking_date date)
 as
 SELECT Booking.booking_ID, booking_date, booking_name, Staff.staff_ID, firstname, surname, is_supervisor 
 FROM Booking 
 inner join
 StaffBooking on Booking.booking_ID = StaffBooking.booking_ID
 inner join 
 Staff on Staff.staff_ID = StaffBooking.staff_ID
 WHERE booking_date BETWEEN @booking_date AND (select DATEADD(month, 1, @booking_date)) 
 RETURN

 /*EXEC pr_bookingsandstaff
	'2018-05-12'*/
