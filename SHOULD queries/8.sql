SELECT DISTINCT e.Event_ID, Event_Name, alcohol_event, s.staff_ID, firstname, surname, alcohol_license FROM Event e

inner join Booking b on e.Event_ID = b.event_ID

inner join StaffBooking sb on b.booking_ID = sb.booking_ID

inner join Staff s on sb.staff_ID = s.staff_ID

WHERE alcohol_event = '1' AND alcohol_license = '1';
