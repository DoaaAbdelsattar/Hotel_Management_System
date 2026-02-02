-- --1
SELECT 
    g.F_name + ' ' + g.L_name AS GuestName,
    r.Number AS RoomNumber,
    rt.Type_NameR AS RoomType,
    b.Check_In_Date,
    b.Check_Out_Date,
    DATEDIFF(DAY, b.Check_In_Date, b.Check_Out_Date) AS StayDuration,
    rt.PricePerNight,
    (rt.PricePerNight * DATEDIFF(DAY, b.Check_In_Date, b.Check_Out_Date)) AS TotalBookingAmount,
    p.Payment_Method,
    b.Status AS BookingStatus
FROM Booking b
JOIN Guest g ON b.G_ID = g.G_ID
JOIN Room r ON b.R_ID = r.R_ID
JOIN RoomType rt ON r.RoomType_ID = rt.RoomType_ID
LEFT JOIN Payment p ON b.B_ID = p.B_ID
ORDER BY b.Check_In_Date;


--2
SELECT 
    rt.Type_NameR AS Room_Type,
    SUM(p.Amount) AS Total_Revenue
FROM Payment p
JOIN Booking b ON p.B_ID = b.B_ID
JOIN Room r ON b.R_ID = r.R_ID
JOIN RoomType rt ON r.RoomType_ID = rt.RoomType_ID
GROUP BY rt.Type_NameR
ORDER BY Total_Revenue DESC;


--3
SELECT 
    rt.Type_NameR AS Room_Type,
    AVG(DATEDIFF(DAY, b.Check_In_Date, b.Check_Out_Date)) AS Avg_Stay_Nights
FROM Booking b
JOIN Room r ON b.R_ID = r.R_ID
JOIN RoomType rt ON r.RoomType_ID = rt.RoomType_ID
GROUP BY rt.Type_NameR
ORDER BY Avg_Stay_Nights DESC;


--4

SELECT b.B_ID, g.F_name, g.L_name, r.Number AS RoomNumber, b.Check_In_Date
FROM Booking b
JOIN Guest g ON b.G_ID = g.G_ID
JOIN Room r ON b.R_ID = r.R_ID
WHERE b.Status = 'Upcoming';


--5
SELECT TOP 5 
    g.F_name + ' ' + g.L_name AS GuestName,
    SUM(p.Amount) AS TotalPaid
FROM Payment p
JOIN Booking b ON p.B_ID = b.B_ID
JOIN Guest g ON b.G_ID = g.G_ID
GROUP BY g.F_name, g.L_name
ORDER BY TotalPaid DESC;



--6
SELECT 
    s.F_name + ' ' + s.L_name AS StaffName,
    s.Role,
    s.ShiftName,
    COUNT(r.R_ID) AS RoomsResponsible
FROM Staff_Shift s
LEFT JOIN Room r ON r.Staff_ID_FK = s.StaffShift_ID
GROUP BY s.F_name, s.L_name, s.Role, s.ShiftName
ORDER BY RoomsResponsible DESC;


--7
SELECT 
    g.F_name + ' ' + g.L_name AS GuestName,
    gp.Phone
FROM Guest g
LEFT JOIN GuestPhones gp ON g.G_ID = gp.G_ID
ORDER BY g.F_name, g.L_name;


--8
SELECT 
    b.B_ID AS BookingID,
    g.F_name + ' ' + g.L_name AS GuestName,
    r.Number AS RoomNumber,
    b.Meal_Plan
FROM Booking b
JOIN Guest g ON b.G_ID = g.G_ID
JOIN Room r ON b.R_ID = r.R_ID
ORDER BY b.B_ID;


--9
SELECT 
    Meal_Plan,
    COUNT(*) AS NumberOfBookings
FROM Booking
GROUP BY Meal_Plan;


--10

SELECT 
    YEAR(b.Check_In_Date) AS Year,
    MONTH(b.Check_In_Date) AS Month,
    COUNT(b.B_ID) AS NumberOfBookings,
    SUM(rt.PricePerNight * DATEDIFF(DAY, b.Check_In_Date, b.Check_Out_Date)) AS TotalRevenue
FROM Booking b
JOIN Room r ON b.R_ID = r.R_ID
JOIN RoomType rt ON r.RoomType_ID = rt.RoomType_ID
GROUP BY YEAR(b.Check_In_Date), MONTH(b.Check_In_Date)
ORDER BY Year, Month;
