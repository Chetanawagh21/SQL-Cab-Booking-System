CREATE DATABASE cab_booking;

USE CabBooking3;

                                             -- Customer Table -- 

CREATE TABLE Customers
(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100),
Phone VARCHAR(15),
Email VARCHAR(100),
City VARCHAR(50)
);
                                             -- Driver Table --
CREATE TABLE Drivers
(
DriverID INT PRIMARY KEY,
DriverName VARCHAR(100),
Phone VARCHAR(15),
Rating DECIMAL(2,1)
);

                                       -- Cab Table --
                                       
CREATE TABLE Cabs
(
CabID INT PRIMARY KEY,
CabNumber VARCHAR(20) UNIQUE,
VehicleType VARCHAR(20),
DriverID INT,
FOREIGN KEY (DriverID) REFERENCES Drivers3(DriverID)
);                    
                                     -- Booking Table --      

CREATE TABLE Bookings
(
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    DriverID INT,
    CabID INT,
    BookingDate DATE,
    PickupLocation VARCHAR(100),
    DropLocation VARCHAR(100),
    Fare DECIMAL(8,2),
    Status VARCHAR(20),

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (CabID) REFERENCES Cabs(CabID)
);
                                  --  Trip Details --
CREATE TABLE TripDetails
(
    TripID INT PRIMARY KEY,
    BookingID INT,
    StartTime DATETIME,
    EndTime DATETIME,
    Distance DECIMAL(6,2),

    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
							-- Feedback Table --
CREATE TABLE Feedback3
(
    FeedbackID INT PRIMARY KEY,
    BookingID INT,
    CustomerRating DECIMAL(2,1),
    Comments VARCHAR(255),

    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);
                        -- Insert Data into Custermors --
                        
INSERT INTO Customers (CustomerID, CustomerName, Phone, Email, City)
VALUES
(101, 'Chetana patil', '9876543210', 'chetana@gmail.com', 'Pune'),
(102, 'Chirayu Wagh ', '9876543211', 'chirayu@gmail.com', 'Mumbai'),
(103, 'Karan Patil', '9876543212', 'karan@gmail.com', 'Nashik'),
(104, 'Unnti patil', '9876543213', 'unnti@gmail.com', 'Nagpur'),
(105, 'Rohit Mehta', '9876543214', 'rohit@gmail.com', 'Pune'),
(106, 'Neha patil', '9876543215', 'neha@gmail.com', 'Thane'),
(107, 'Kiran pawar', '9876543216', 'karan@gmail.com', 'Aurangabad'),
(108, 'Pooja Desai', '9876543217', 'pooja@gmail.com', 'Kolhapur'),
(109, 'Vikas Yadav', '9876543218', 'vikas@gmail.com', 'Solapur'),
(110, 'Anjali More', '9876543219', 'anjali@gmail.com', 'Satara');

SELECT * FROM Customers;
 
						-- Insert Data into Driver Tables --
INSERT INTO Drivers (DriverID, DriverName, Phone, Rating)
VALUES
(201, 'Ramesh Patil', '9876500001', 4.8),
(202, 'Suresh Pawar', '9876500002', 4.5),
(203, 'Mahesh Jadhav', '9876500003', 3.9),
(204, 'Ganesh More', '9876500004', 4.2),
(205, 'Vijay Shinde', '9876500005', 4.7),
(206, 'Ajay Wagh', '9876500006', 3.8),
(207, 'Nilesh Patil', '9876500007', 4.1),
(208, 'Prakash Deshmukh', '9876500008', 4.9),
(209, 'Santosh Chaudhary', '9876500009', 3.5),
(210, 'Kunal Patil', '9876500010', 4.6);

SELECT * FROM Drivers;
 
 	                      -- Insert Data into Cabs Tables --
                          
INSERT INTO Cabs (CabID, CabNumber, VehicleType, DriverID)
VALUES
(301, 'MH12AB1234', 'Sedan', 201),
(302, 'MH14CD5678', 'SUV', 202),
(303, 'MH15EF9012', 'Mini', 203),
(304, 'MH16GH3456', 'Sedan', 204),
(305, 'MH17IJ7890', 'SUV', 205),
(306, 'MH18KL2345', 'Hatchback', 206),
(307, 'MH19MN6789', 'Sedan', 207),
(308, 'MH20OP1234', 'Mini', 208),
(309, 'MH21QR5678', 'SUV', 209),
(310, 'MH22ST9012', 'Sedan', 210);

SELECT * FROM Cabs;
         
                           -- Insert Data into Boobking Table --
                           
INSERT INTO Bookings
(BookingID, CustomerID, DriverID, CabID, BookingDate, PickupLocation, DropLocation, Fare, Status)
VALUES
(401,101,201,301,'2026-06-01','Pune Station','Hinjewadi',350.50,'Completed'),
(402,102,202,302,'2026-06-02','Shivaji Nagar','Airport',450.00,'Completed'),
(403,103,203,303,'2026-06-03','Baner','Wakad',180.00,'Cancelled'),
(404,104,204,304,'2026-06-04','Kothrud','Swargate',220.50,'Completed'),
(405,105,205,305,'2026-06-05','Hadapsar','Magarpatta',150.00,'Completed'),
(406,106,206,306,'2026-06-06','Pimpri','Nigdi',120.00,'Ongoing'),
(407,107,207,307,'2026-06-07','Aundh','University',260.00,'Completed'),
(408,108,208,308,'2026-06-08','Wakad','Baner',175.50,'Cancelled'),
(409,109,209,309,'2026-06-09','Chinchwad','Akurdi',140.00,'Completed'),
(410,110,210,310,'2026-06-10','Deccan','Katraj',390.00,'Completed');

SELECT * FROM Bookings; 
  
						-- Insert Data into TripDetails --
				
INSERT INTO TripDetails
(TripID, BookingID, StartTime, EndTime, Distance)
VALUES
(501,401,'2026-06-01 09:00:00','2026-06-01 09:35:00',18.50),
(502,402,'2026-06-02 10:15:00','2026-06-02 10:55:00',22.00),
(503,403,'2026-06-03 11:00:00','2026-06-03 11:10:00',5.00),
(504,404,'2026-06-04 08:30:00','2026-06-04 08:55:00',12.75),
(505,405,'2026-06-05 07:45:00','2026-06-05 08:10:00',10.20),
(506,406,'2026-06-06 02:00:00','2026-06-06 02:20:00',8.50),
(507,407,'2026-06-07 04:00:00','2026-06-07 04:45:00',25.60),
(508,408,'2026-06-08 06:10:00','2026-06-08 06:20:00',4.50),
(509,409,'2026-06-09 09:30:00','2026-06-09 09:50:00',9.80),
(510,410,'2026-06-10 05:15:00','2026-06-10 06:00:00',20.30);   
   
SELECT * FROM TripDetails; 

                        -- Insert Data into Feedback Table --
                        
INSERT INTO Feedback
(FeedbackID, BookingID, CustomerRating, Comments)
VALUES
(601,401,4.8,'Excellent Service'),
(602,402,4.5,'Driver was polite'),
(603,403,2.5,'Trip Cancelled'),
(604,404,4.2,'Good Experience'),
(605,405,5.0,'Very Comfortable Ride'),
(606,406,3.8,'Average Service'),
(607,407,4.7,'Clean Cab'),
(608,408,2.8,'Driver Cancelled'),
(609,409,4.3,'Nice Ride'),
(610,410,4.9,'Highly Recommended');

SELECT*FROM Feedback;
 
                       -- Customer and Booking Analysics --
                       
-- Customers who have completed the most bookings --
SELECT
    CustomerID,
    COUNT(*) AS TotalBookings
FROM Bookings
WHERE Status = 'Completed'
GROUP BY CustomerID
ORDER BY TotalBookings DESC;

-- customers who have canceled more than 30% of their total bookings --

SELECT
    CustomerID,
    COUNT(*) AS TotalBookings,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS CancelledBookings,
    ROUND(
        (SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0) / COUNT(*),
        2
    ) AS CancelPercentage
FROM Bookings
GROUP BY CustomerID
HAVING CancelPercentage > 30;

-- Determine the busiest day of the week for bookings --

SELECT
    DAYNAME(BookingDate) AS Day,
    COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY DAYNAME(BookingDate)
ORDER BY TotalBookings DESC;

SHOW TABLES;  

                    -- drivers who have received an average rating below 3.0 --  
                    
SELECT
    d.DriverID,
    d.DriverName,
    AVG(f.CustomerRating) AS AverageRating
FROM drivers d
JOIN bookings b
ON d.DriverID = b.DriverID
JOIN feedback f
ON b.BookingID = f.BookingID
GROUP BY d.DriverID, d.DriverName
HAVING AVG(f.CustomerRating) < 3;
    
                  -- drivers with a high percentage of canceled trips --
  
SELECT
    d.DriverID,
    d.DriverName,
    COUNT(b.BookingID) AS TotalTrips,
    SUM(CASE
            WHEN b.Status = 'Cancelled' THEN 1
            ELSE 0
        END) AS CancelledTrips,
    ROUND(
        SUM(CASE
                WHEN b.Status = 'Cancelled' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(b.BookingID), 2
    ) AS CancelPercentage
FROM drivers d
JOIN bookings b
ON d.DriverID = b.DriverID
GROUP BY d.DriverID, d.DriverName
ORDER BY CancelPercentage DESC;    
  
                -- Total revenue generated by completed bookings --  
                 
SELECT
    SUM(Fare) AS TotalRevenue
FROM bookings
WHERE Status = 'Completed';    
  
			 -- Top 3 Most Frequently Traveled Routes --       
               
SELECT
    PickupLocation,
    DropLocation,
    COUNT(*) AS TotalTrips
FROM bookings
GROUP BY PickupLocation, DropLocation
ORDER BY TotalTrips DESC
LIMIT 3;

                         -- Higher Rated Drivers More Trips Complete Karte Hai Kya --     
                           
SELECT
    d.DriverName,
    d.Rating,
    COUNT(b.BookingID) AS CompletedTrips
FROM drivers d
JOIN bookings b
ON d.DriverID = b.DriverID
WHERE b.Status='Completed'
GROUP BY d.DriverID, d.DriverName, d.Rating
ORDER BY d.Rating DESC;

				 -- Analyze Average Waiting Time for Different Pickup Locations --      
                  
SELECT
    b.PickupLocation,
    AVG(TIMESTAMPDIFF(MINUTE,
        t.StartTime,
        t.EndTime)) AS AvgMinutes
FROM bookings 
JOIN tripdetails t
ON b.BookingID = t.BookingID
GROUP BY b.PickupLocation;      

			-- Most Common Reasons for Trip Cancellations --   
            
SELECT
    Comments,
    COUNT(*) AS TotalCount
FROM feedback
GROUP BY Comments
ORDER BY TotalCount DESC;

          -- Find out whether shorter trips (low-distance) contribute significantly to revenue. Should the company encourage more short-distance rides --
          
SELECT
    SUM(b.Fare) AS RevenueFromShortTrips
FROM bookings b
JOIN tripdetails t
ON b.BookingID = t.BookingID
WHERE t.Distance < 10
AND b.Status='Completed';

         -- Compare Revenue of Sedan and SUV --  
         
SELECT
    c.VehicleType,
    SUM(b.Fare) AS TotalRevenue
FROM Bookings b
JOIN cabs c
ON b.CabID = c.CabID
WHERE b.Status='Completed'
GROUP BY c.VehicleType;

        -- Predict which customers are likely to stop using the service --

SELECT 
    CustomerID, COUNT(*) AS TotalRides
FROM
    bookings
GROUP BY CustomerID
HAVING COUNT(*) <= 1;

       -- Weekend vs Weekday Analysis --
SELECT
CASE
    WHEN DAYNAME(BookingDate) IN ('Saturday','Sunday')
    THEN 'Weekend'
    ELSE 'Weekday'
END AS BookingType,
COUNT(*) AS TotalBookings
FROM bookings
GROUP BY BookingType;


