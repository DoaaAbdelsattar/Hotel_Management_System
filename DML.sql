-- Guests
INSERT INTO Guest (F_name, L_name, SSD, Email, Age) VALUES
('Ahmed',    'Ali',       '10000000000001', 'ahmed.ali@example.com', 30),
('Mona',     'Hassan',    '10000000000002', 'mona.hassan@example.com', 25),
('Omar',     'Fathy',     '10000000000003', 'omar.fathy@example.com', 40),
('Sara',     'Ibrahim',   '10000000000004', 'sara.ibrahim@example.com', 28),
('Youssef',  'Nabil',     '10000000000005', 'youssef.nabil@example.com', 35),
('Nour',     'Yasser',    '10000000000006', 'nour.yasser@example.com', 22),
('Hana',     'Mostafa',   '10000000000007', 'hana.mostafa@example.com', 31),
('Karim',    'Mahmoud',   '10000000000008', 'karim.mahmoud@example.com', 27),
('Lina',     'Adel',      '10000000000009', 'lina.adel@example.com', 29),
('Tamer',    'Khaled',    '10000000000010', 'tamer.khaled@example.com', 26),
('Dalia',    'Salah',     '10000000000011', 'dalia.salah@example.com', 34),
('Ibrahim',  'Mostafa',   '10000000000012', 'ibrahim.mostafa@example.com', 45),
('Rana',     'Fouad',     '10000000000013', 'rana.fouad@example.com', 23),
('Mahmoud',  'Yousef',    '10000000000014', 'mahmoud.yousef@example.com', 38),
('Farah',    'Nader',     '10000000000015', 'farah.nader@example.com', 21);

-- Guest Phones
INSERT INTO GuestPhones (Phone, G_ID) VALUES
('01010000001', 1),
('01010000002', 1),
('01020000001', 2),
('01030000001', 3),
('01030000002', 3),
('01040000001', 4),
('01050000001', 5),
('01060000001', 6),
('01070000001', 7),
('01080000001', 8),
('01090000001', 9),
('01100000001', 10),
('01110000001', 11),
('01120000001', 12),
('01130000001', 13);

-- Room Types
INSERT INTO RoomType (Type_NameR, PricePerNight) VALUES
('Single',       450.00),
('Double',       650.00),
('Suite',        1200.00),
('Single',       950.00),
('Single',         1400.00),
('Double',        1300.00),
('Suite',       1600.00),
('Single',     800.00),
('Suite',    3500.00),
('Double',       700.00),
('Single',      350.00),
('Suite',    1800.00),
('Single',         750.00),
('Double',   850.00),
('Double', 5000.00);

-- Staff Shifts
INSERT INTO Staff_Shift (F_name, L_name, Role, Phone, Email, Salary, HireDate, ShiftName, StartTime, EndTime) VALUES
('Ali',    'Hussein',  'Cleaner',   '01011110001', 'ali.h@hotel.com',     4500, '2021-01-10', 'Morning', '08:00:00', '16:00:00'),
('Maha',   'Kamal',    'Reception', '01011110002', 'maha.k@hotel.com',    6200, '2021-02-15', 'Night',   '16:00:00', '00:00:00'),
('Omar',   'Said',     'Manager',   '01011110003', 'omar.s@hotel.com',   12000, '2020-05-10', 'Morning', '08:00:00', '16:00:00'),
('Dina',   'Mostafa',  'Reception', '01011110004', 'dina.m@hotel.com',    6800, '2022-03-10', 'Evening', '12:00:00', '20:00:00'),
('Tarek',  'Ali',      'Cleaner',   '01011110005', 'tarek.a@hotel.com',   4700, '2023-04-12', 'Night',   '16:00:00', '00:00:00'),
('Salma',  'Fouad',    'Reception', '01011110006', 'salma.f@hotel.com',   7000, '2022-11-01', 'Morning', '08:00:00', '16:00:00'),
('Yara',   'Sami',     'Manager',   '01011110007', 'yara.s@hotel.com',   11500, '2019-07-20', 'Evening', '12:00:00', '20:00:00'),
('Mostafa','Nagy',     'Cleaner',   '01011110008', 'mostafa.n@hotel.com', 4400, '2021-09-09', 'Morning', '08:00:00', '16:00:00'),
('Hana',   'Fathi',    'Reception', '01011110009', 'hana.f@hotel.com',    6500, '2020-04-04', 'Night',   '16:00:00', '00:00:00'),
('Ramy',   'Gamal',    'Manager',   '01011110010', 'ramy.g@hotel.com',    9300, '2018-12-12', 'Evening', '12:00:00', '20:00:00'),
('Mona',   'Zaki',     'Reception', '01011110011', 'mona.z@hotel.com',    6700, '2021-06-01', 'Morning', '08:00:00', '16:00:00'),
('Ihab',   'Adel',     'Cleaner',   '01011110012', 'ihab.a@hotel.com',    4200, '2023-01-20', 'Night',   '16:00:00', '00:00:00'),
('Salem',  'Yassin',   'Manager',   '01011110013', 'salem.y@hotel.com',  11800, '2017-08-15', 'Morning', '08:00:00', '16:00:00'),
('Rania',  'Khaled',   'Reception', '01011110014', 'rania.k@hotel.com',   6600, '2020-10-10', 'Evening', '12:00:00', '20:00:00'),
('Ziad',   'Hussein',  'Cleaner',   '01011110015', 'ziad.h@hotel.com',    4300, '2022-02-05', 'Morning', '08:00:00', '16:00:00');

-- Rooms
INSERT INTO Room (Number, Floor_Hotel, Status, RoomType_ID, Staff_ID_FK) VALUES
(101, 1, 'Available',  1, 1),
(102, 1, 'Occupied',   2, 2),
(103, 1, 'Available',  3, 3),
(104, 1, 'Cleaning',   4, 4),
(201, 2, 'Occupied',   5, 5),
(202, 2, 'Available',  6, 6),
(203, 2, 'Available',  7, 7),
(204, 2, 'Occupied',   8, 8),
(301, 3, 'Available',  9, 9),
(302, 3, 'Occupied',  10, 10),
(303, 3, 'Available', 11, 11),
(304, 3, 'Cleaning',  12, 12),
(401, 4, 'Occupied',  13, 13),
(402, 4, 'Available', 14, 14),
(403, 4, 'Available', 15, 15);

-- Bookings
INSERT INTO Booking (G_ID, R_ID, Check_In_Date, Check_Out_Date, Booking_Date, Meal_Plan, Status) VALUES
(1,  1, '2025-01-05', '2025-01-10', '2024-12-30', 'Breakfast',   'Confirmed'),
(2,  2, '2025-01-04', '2025-01-07', '2024-12-29', 'Half Board', 'Checked-in'),
(3,  3, '2025-01-08', '2025-01-12', '2024-12-28', 'Full Board', 'Confirmed'),
(4,  4, '2025-01-02', '2025-01-05', '2024-12-27', 'Breakfast',   'Completed'),
(5,  5, '2025-01-06', '2025-01-09', '2024-12-26', 'None',        'Confirmed'),
(6,  6, '2025-01-03', '2025-01-06', '2024-12-25', 'Half Board', 'Confirmed'),
(7,  7, '2025-01-11', '2025-01-15', '2024-12-24', 'Breakfast',   'Upcoming'),
(8,  8, '2025-01-09', '2025-01-13', '2024-12-23', 'None',        'Confirmed'),
(9,  9, '2025-01-04', '2025-01-08', '2024-12-22', 'Full Board', 'Checked-in'),
(10, 10, '2025-01-01', '2025-01-04', '2024-12-21', 'Breakfast',   'Completed'),
(11, 11, '2025-02-01', '2025-02-05', '2025-01-15', 'Breakfast',   'Confirmed'),
(12, 12, '2025-02-10', '2025-02-12', '2025-01-20', 'None',        'Upcoming'),
(13, 13, '2025-03-05', '2025-03-10', '2025-02-15', 'Full Board', 'Confirmed'),
(14, 14, '2025-03-12', '2025-03-15', '2025-02-20', 'Half Board', 'Confirmed'),
(15, 15, '2025-04-01', '2025-04-06', '2025-03-10', 'Breakfast',   'Upcoming');

-- Payments
INSERT INTO Payment (B_ID, Amount, Payment_Date, Payment_Method) VALUES
(1,  2250.00, '2025-01-05', 'Credit Card'),
(2,  1950.00, '2025-01-04', 'Cash'),
(3,  4800.00, '2025-01-08', 'Credit Card'),
(4,  1200.00, '2025-01-02', 'Cash'),
(5,  1600.00, '2025-01-06', 'Online'),
(6,  2100.00, '2025-01-03', 'Credit Card'),
(7,  4000.00, '2025-01-11', 'Cash'),
(8,  2400.00, '2025-01-09', 'Credit Card'),
(9,  3150.00, '2025-01-04', 'Cash'),
(10, 1000.00, '2025-01-01', 'Credit Card'),
(11, 2200.00, '2025-02-01', 'Online'),
(12, 1500.00, '2025-01-25', 'Online'), 
(13, 7200.00, '2025-03-06', 'Credit Card'),
(14, 2700.00, '2025-03-13', 'Cash'),
(15, 4500.00, '2025-04-02', 'Online');


ظ