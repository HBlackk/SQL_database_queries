SELECT Truck.truck_ID FROM Truck 
inner join TruckBooking on TruckBooking.truck_ID = Truck.truck_ID

inner join Booking on TruckBooking.booking_ID = Booking.booking_ID

WHERE (Truck.truck_ID NOT IN (SELECT truck_ID FROM TruckBooking))
GROUP BY  Truck.truck_ID, booking_date
HAVING (Booking.booking_date BETWEEN '2018-05-01' AND '2018-06-01');