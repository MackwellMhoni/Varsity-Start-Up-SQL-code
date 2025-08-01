-- create database
CREATE DATABASE TheRideYouRent_ST10091335;

-- use to use the database
USE TheRideYouRent_ST10091335;

--creating the lookup tables "CarMake" and "CarBodyType"
CREATE TABLE CarMakee
(
CarMake varchar(45) NOT NULL PRIMARY KEY 
);

CREATE TABLE CarBodyType
(
BodyType varchar(45) NOT NULL PRIMARY KEY
);

-- created table called Car
CREATE TABLE Car
(
CarNo varchar(45) NOT NULL PRIMARY KEY,
CarMake varchar(45),
Model varchar(45),
BodyType varchar(45),
Kilometres int,
ServiceKm int,
Available varchar(45)
);

drop table Car;

-- created table called inespector
CREATE TABLE Inspector
(
Inspector_No varchar(45) NOT NULL PRIMARY KEY,
"Name" varchar(45),
Email varchar(45),
Mobile int
);


-- created table called Driver
CREATE TABLE Driver
(
DriverName varchar(45) NOT NULL PRIMARY KEY,
"Address" varchar(300),
Email varchar(45),
D_Mobile int
);


--created table called Rental
CREATE TABLE Rental 
(
CarNo varchar(45) NOT NULL,
Inspector_No varchar(45) NOT NULL,
DriverName varchar(45) NOT NULL,
RentalFee int,
StartDate int,
EndDate int,
);

-- created table called ReturnC..C for car
CREATE TABLE "Return"
(
CarNo varchar(45) NOT NULL, 
Inspector_No varchar(45) NOT NULL,
DriverName varchar(45) NOT NULL,
ReturnDate int,
ElapsedDate int,
Fine int,
);


--Populating the table car...
INSERT INTO Car (CarNo, CarMake, Model, BodyType, Kilometres,ServiceKm, Available)
VALUES( 'HYU001', 'Hyundai', 'Grand i10 1.0 Motion', 'HatchBack' , 1500, 15000, 'yes'),
      ( 'HYU002', 'Hyunda', 'i20 1.2 Fluid', 'HatchBack' , 3000, 5000, 'yes'),
      ( 'BMW001', 'BMW', '320d 1.2', 'Sedan' , 20000, 50000, 'yes'),
	  ( 'BMW002', 'BMW', '240d 1.4', 'Sedan' , 9500, 15000, 'yes'),
	  ( 'TOY001', 'Toyota', 'Corolla 1.0', 'Sedan' , 15000, 50000, 'yes'),
	  ( 'TOY002', 'Toyota', 'Avanza', 'SUV' , 98000, 15000, 'yes'),
	  ( 'MER001', 'Mercedes Benz', 'c180', 'Sedan' , 5200, 15000, 'yes'),
	  ( 'MER002', 'Mercedes Benz', 'A200', 'Sedan' , 4080, 15000, 'yes'),
	  ( 'FOR001', 'Ford', 'Fiesta 1.0', 'Sedan' , 7600, 15000, 'yes');

--Populating the table Inspector...
INSERT INTO Inspector(Inspector_No, "Name",Email,Mobile)
VALUES('I101', 'Bud Barnes', 'bud@therideyourent.com', 0821585359),
      ('I102', 'Tracy Reeves', 'tracy@therideyourent.com', 0822889988),
	  ('I103', 'Sandra Godwin', 'sandra@therideyourent.com', 0837695468),
	  ('I104', 'Shannon Burke', 'shannon@therideyourent.com', 0836802514);

--populating the table Driver...
INSERT INTO Driver(DriverName,"Address",Email , D_Mobile)
VALUES('Gabrielle Clarke', '917 Huevel St Botshabelo Free State 9781', 'gorix10987@macauvpn.com', 0837113269),
      ('Geoffrey Franklin', '1114 Dorp St Paarl Western Cape 7655', 'noceti8743@drlatvia.com', 0847728052),
	  ('Fawn Cooke ', '2158 Prospect St Garsfontein Gauteng 0042', 'yegifav388@enamelme.com', 0821966584),
	  ('Darlene Peters', '2529 St.John Street Somerset West Western Cape 7110', 'mayeka4267@macauvpn.com', 0841221244),
	  ('Vita Soto', '1474 Wolmarans St Sundra Mpumalanga 2200', 'wegogo55107@drlatvia.com', 0844567924),
	  ('Opal Rehbein', '697 Thutlwa St Letaba Limpopo 0870', 'yiyow34505@enpaypal.com', 0826864938),
	  ('Vernon Hodgson', '1935 Thutlwa St Letsitele Limpopo 0885', 'gifeh11935@enamelme.com', 0855991446),
	  ('Crispin Wheatly', '330 Sandown Rd Cape Town Western Cape 8018', 'likon78255@macauvpn.com', 0838347945),
	  ('Melanie Cunningham', '616 Loop St Atlantis Western Cape 7350', 'sehapeb835@macauvpn.com', 0827329001),
	  ('Kevin Peay', '814 Daffodil Dr Elliotdale Eastern Cape 5118', 'cajic53991@enpaypal.com', 0832077149);

--Populating the table Rental...
INSERT INTO Rental(CarNo, Inspector_No, DriverName, RentalFee, StartDate, EndDate)
VALUES( 'HYU001', 'Bud Barnes', 'Gabrielle Clarke', 5000 , 2021-08-30,2021-09-31),
      ( 'HYU002', 'Bud Barnes', 'Gabrielle Clarke', 5000, 2021-09-01,2021-09-10),
	  ( 'FOR001', 'Bud Barnes', 'Geoffrey Franklin', 6500, 2021-09-01,2021-09-10),
	  ( 'BMW002', 'Tracy Reeves', 'Vita Soto', 7000,2021-09-20,2021-09-25),
	  ( 'TOY002', 'Tracy Reeves', 'Darlene Peters', 5000 ,2021-10-03,2021-10-31),
	  ( 'MER001', 'Sandra Gordwin', 'Darlene Peters', 8000 ,2021-10-05,2021-10-15),
	  ( 'HYU002', 'Shannon Burke', 'Vernon Hodgson', 5000 ,2021-12-01,2022-02-10),
	  ( 'TOY002', 'Shannon Burke', 'Melanie Cunningham', 5000 ,2021-08-10,2021-08-31);

--Populating the table ReturnC which stands for Return Car...
INSERT INTO "Return"(CarNo, Inspector, DriverName, ReturnDate, ElapsedDate, Fine)
VALUES( 'HYU001', 'Bud Barnes', 'Gabrielle Clarke', 2021-08-31 , 0, 0),
      ( 'HYU002', 'Bud Barnes', 'Gabrielle Clarke', 2021-09-10, 0, 0),
	  ( 'FOR001', 'Bud Barnes', 'Geoffrey Franklin', 2021-09-10, 0, 0),
	  ( 'BMW002', 'Tracy Reeves', 'Vita Soto', 2021-09-30, 5, 2500),
	  ( 'TOY002', 'Tracy Reeves', 'Darlene Peters', 2021-09-31, 2, 1000),
	  ( 'MER001', 'Sandra Gordwin', 'Darlene Peters', 2021-10-15, 1, 500),
	  ( 'HYU002', 'Shannon Burke', 'Vernon Hodgson', 2022-02-10, 0, 0),
	  ( 'TOY002', 'Shannon Burke', 'Melanie Cunningham', 2021-08-31, 0, 0);



--POPULATING LOOKUP TABLES
Insert INTO CarMake(Description)
VALUES('Hyundai'),
      ('BMW'),
	  ('Mercedes Benz'),
	  ('Toyota'),
	  ('Ford');


Insert INTO CarBodyType(description)
VALUES('Hatchback'),
      ('Sedan'),
	  ('Coupe'),
	  ('SUV');


--this query returns all the rentals placed between the specified dates
SELECT * FROM Rental
WHERE StartDate BETWEEN 2021-10-30 AND 2021-08-01;

--this query selects the name and searches for all the rentals placed by Bud Barnes(Inspector)
SELECT * FROM Rental
WHERE Inspector = 'Bud Barnes';

--this query displays all the returns for the Toyota
SELECT * FROM "Return" 
WHERE CarNo = 'Toyota' ORDER BY CarNo;

--counts the number of rentals placed for the car make
SELECT COUNT(*) FROM Rental
WHERE CarNo = 'Hyundai';

--udating the model of the car
UPDATE Car SET CarMake = 'Ford'
WHERE CarNo = 'FOR001';

--does the displays 
SELECT Car.CarNo, Driver.DriverName, Rental.RentalFee, Rental.StartDate, Rental.EndDate, Car.Available FROM Car, Driver, Rental;

--distinct commnad being used 
SELECT DISTINCT CarMake FROM Car;

--determine the cars which will need to be serviced soon
SELECT CarNo, CarMake, Model, BodyType, Kilometres,ServiceKm, Available,
CASE WHEN ServiceKm - Kilometres <= 9000 THEN 'T' ELSE 'F'
END AS ServiceNeed
FROM Car;

--calculate the late fee for the return
SELECT Carno, DriverName, ReturnDate, GETDATE() AS 'Current Date',
DATEDIFF(DAY, ReturnDate, GETDATE()) AS 'ELAPSED DATE',
DATEDIFF(DAY, ReturnDate, GETDATE() * 500) AS 'Charged Fine'
FROM "Return" ORDER BY CarNo











