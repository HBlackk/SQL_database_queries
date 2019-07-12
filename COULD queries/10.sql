SELECT Staff.staff_ID, firstname, surname, is_supervisor, staff_hours, salary, hourly_wages FROM Staff 
inner join StaffBooking on Staff.staff_ID = StaffBooking.staff_ID

WHERE booking_ID = '359';
