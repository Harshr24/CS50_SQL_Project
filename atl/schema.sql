-- Creating Passengers table

CREATE TABLE Passengers (ID INTEGER PRIMARY KEY AUTOINCREMENT, FirstName TEXT NOT NULL, LastName TEXT NOT NULL, Age INTEGER NOT NULL);
-- Creating Airlines table
CREATE TABLE Airlines (ID INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT NOT NULL, Concourse TEXT NOT NULL);

-- Creating Flights table
CREATE TABLE Flights (ID INTEGER PRIMARY KEY AUTOINCREMENT, FlightNumber TEXT NOT NULL, AirlineID INTEGER NOT NULL, DepartureAirportCode TEXT NOT NULL, ArrivalAirportCode TEXT NOT NULL, ExpectedDepartureDateTime TEXT NOT NULL, ExpectedArrivalDateTime TEXT NOT NULL, FOREIGN KEY (AirlineID) REFERENCES Airlines (ID));

-- Creating CheckIns table
CREATE TABLE CheckIns (ID INTEGER PRIMARY KEY AUTOINCREMENT, PassengerID INTEGER NOT NULL, FlightID INTEGER NOT NULL, CheckInDateTime TEXT NOT NULL, FOREIGN KEY (PassengerID) REFERENCES Passengers (ID), FOREIGN KEY (FlightID) REFERENCES Flights (ID));

-- Inserting sample data
BEGIN TRANSACTION;

-- Inserting airlines
INSERT INTO Airlines (Name, Concourse) VALUES ('Delta', 'A');
INSERT INTO Airlines (Name, Concourse) VALUES ('Delta', 'B');
INSERT INTO Airlines (Name, Concourse) VALUES ('Delta', 'C');
INSERT INTO Airlines (Name, Concourse) VALUES ('Delta', 'D');
INSERT INTO Airlines (Name, Concourse) VALUES ('Delta', 'T');

-- Inserting passengers
INSERT INTO Passengers (FirstName, LastName, Age) VALUES ('Amelia', 'Earhart', 39);

-- Inserting flights
INSERT INTO Flights (FlightNumber, AirlineID, DepartureAirportCode, ArrivalAirportCode, ExpectedDepartureDateTime, ExpectedArrivalDateTime) VALUES ('300', 1, 'ATL', 'BOS', '2023-08-03 18:46:00', '2023-08-03 21:09:00');

-- Inserting check-ins
INSERT INTO CheckIns (PassengerID, FlightID, CheckInDateTime) VALUES (1, 1, '2023-08-03 15:03:00');
COMMIT;
