SELECT DISTINCT Staff.staff_ID, (staff_hours * hourly_wages)- ((staff_hours * hourly_wages) * 20 / 100)
FROM Staff
inner join
StaffBooking on Staff.staff_ID = StaffBooking.staff_ID
inner join 
Booking on StaffBooking.booking_ID = Booking.booking_ID

WHERE is_permanent = '0' AND booking_date BETWEEN '2018-05-01' AND '2018-06-01';

