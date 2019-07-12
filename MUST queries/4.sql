SELECT Booking.booking_ID, truck_ID, booking_date FROM Booking 
inner join 
TruckBooking on Booking.booking_ID = TruckBooking.booking_ID
WHERE booking_date = '2018-05-11';
