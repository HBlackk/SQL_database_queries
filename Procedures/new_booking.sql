create procedure pr_NewBooking
  @booking_ID int, @booking_date date, @duration int, @start_time varchar(6), @contact_fname varchar(25),
  @contact_sname varchar(25), @contact_tel varchar(25), @contact_email varchar(50), @repeat_event bit, @no_of_trucks int, @no_of_staff int
as
INSERT INTO Booking (booking_ID, booking_date, duration, start_time, contact_fname, contact_sname, contact_tel, contact_email, repeat_event, no_of_trucks, no_of_staff)
VALUES (@booking_ID, @booking_date, @duration, @start_time, @contact_fname, @contact_sname, @contact_tel, @contact_email, @repeat_event, @no_of_trucks, @no_of_staff)
Return


EXEC pr_NewBooking
  '103', '2019-05-12', 2, '0930', 'Amy', 'Luther', '07635542174', 'al@aol.com', 0, 1, 3
