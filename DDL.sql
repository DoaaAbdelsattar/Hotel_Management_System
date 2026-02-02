CREATE TABLE Guest (
    G_ID INT IDENTITY(1,1) PRIMARY KEY,
    F_name VARCHAR(20) NOT NULL,
    L_name VARCHAR(20) NOT NULL,
    SSD VARCHAR(14) NOT NULL UNIQUE CHECK (LEN(SSD) = 14 AND SSD  LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    Email VARCHAR(50),
    Age INT CHECK (Age >= 16) 
);



CREATE TABLE GuestPhones (
    Phone VARCHAR(20) NOT NULL,
    G_ID INT NOT NULL,
    PRIMARY KEY (Phone, G_ID),
    FOREIGN KEY (G_ID) REFERENCES Guest(G_ID)
);
 

CREATE TABLE RoomType (
    RoomType_ID INT IDENTITY(1,1) PRIMARY KEY,
    Type_NameR VARCHAR(30) NOT NULL,
    PricePerNight DECIMAL(10,2) NOT NULL CHECK (PricePerNight > 0)
);


CREATE TABLE Staff_Shift (
    StaffShift_ID INT IDENTITY(1,1) PRIMARY KEY,
    F_name VARCHAR(20) NOT NULL,
    L_name VARCHAR(20) NOT NULL,
    Role VARCHAR(20)
        CHECK (Role IN ('Cleaner','Reception','Manager')),
    Phone VARCHAR(20) CHECK (Phone LIKE '01%'),
    Email VARCHAR(50),
    Salary INT CHECK (Salary > 0) NOT NULL,
    HireDate DATE,
    ShiftName VARCHAR(20) NOT NULL
        CHECK (ShiftName IN ('Morning','Evening','Night')),
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL
);

CREATE TABLE Room (
    R_ID INT IDENTITY(1,1) PRIMARY KEY,
    Number INT NOT NULL CHECK (Number > 0),
    Floor_Hotel INT NOT NULL CHECK (Floor_Hotel >= 0),
    Status VARCHAR(20) 
        CHECK (Status IN ('Available','Occupied','Cleaning')),
    RoomType_ID INT NOT NULL,
    Staff_ID_FK INT NOT NULL,
    FOREIGN KEY (RoomType_ID) REFERENCES RoomType(RoomType_ID),
    FOREIGN KEY (Staff_ID_FK) REFERENCES Staff_Shift(StaffShift_ID)
);


CREATE TABLE Booking (
    B_ID INT IDENTITY(1,1) PRIMARY KEY,
    G_ID INT NOT NULL,
    R_ID INT NOT NULL,
    Check_In_Date DATE NOT NULL,
    Check_Out_Date DATE NOT NULL,
    Booking_Date DATE NOT NULL,
    Meal_Plan VARCHAR(20)
        CHECK (Meal_Plan IN ('Breakfast','Half Board','Full Board','None')),
    Status VARCHAR(20)
        CHECK (Status IN ('Confirmed','Checked-in','Completed','Upcoming')),
    FOREIGN KEY (G_ID) REFERENCES Guest(G_ID),
    FOREIGN KEY (R_ID) REFERENCES Room(R_ID),
    CHECK (Check_In_Date < Check_Out_Date),
    CHECK (Booking_Date <= Check_In_Date)
);


CREATE TABLE Payment (
    Pay_ID INT IDENTITY(1,1) PRIMARY KEY,
    B_ID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount > 0),
    Payment_Date DATE,
    Payment_Method VARCHAR(20)
        CHECK (Payment_Method IN ('Cash','Credit Card','Online')),
    FOREIGN KEY (B_ID) REFERENCES Booking(B_ID)
);

