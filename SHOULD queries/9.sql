SELECT s.staff_ID FROM Staff s

left join StaffBooking sb on s.staff_ID = sb.staff_ID

left join Booking b on sb.booking_ID = b.booking_ID

WHERE sb.staff_ID IN (select staff_ID from Staff)

GROUP BY booking_date, is_permanent, s.staff_ID

HAVING (booking_date BETWEEN '2018-05-11' AND '2018-05-12') AND is_permanent = '0';
































