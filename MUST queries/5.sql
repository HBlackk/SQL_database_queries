SELECT Booking.booking_ID, booking_name, booking_date
FROM Booking inner join TruckBooking
on Booking.booking_ID = TruckBooking.booking_ID
WHERE truck_ID = 'YUM1';
