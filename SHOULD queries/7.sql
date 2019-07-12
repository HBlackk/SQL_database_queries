USE hb618_204
SELECT DISTINCT Staff.staff_ID, firstname, surname, is_supervisor, hygiene_level FROM Staff 
inner join StaffBooking on Staff.staff_ID = StaffBooking.staff_ID
WHERE is_supervisor = '1';



