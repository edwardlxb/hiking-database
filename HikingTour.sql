/*Matthew Kiyoi, Xinbo Lu, Abel Morales
Populating hiking tour 
*/

INSERT INTO TOUR_TYPE(TourTypeName,TourTypeDescr)
       Values ('Day hike', 'Leaves early, back around 6pm'), ('2 day hike', 'camping'), ('1 week hike', 'for academic purpose')
      
INSERT INTO RESERVATION(ReservationName, ReservationDate, ReservationNumPeople)
       VALUES ('Phone', '2017-02-06', 20), ('Phone', '2017-03-09', 10), ('email', '2017-06-12', 40)
      
INSERT INTO RESERVATION_TYPE(ReservationTypeName,ReservationTypeDescr)
Values('single', 'reserve for one person'),
       ('small Group', 'reserve for 1-5 people'),
       ('big Group', 'Reserve for 6 - 10 people')

INSERT INTO PHONE_TYPE(PhoneTypeName,PhoneTypeDescr)
Values ('Home, the phone number to your house'),
       ('cell','personal phone number '),
       ('work', 'your work phone number')

INSERT INTO CUSTOMER (CustomerFname,CustomerLname, CustomerDOB)
SELECT TOP 100000 (CustomerFname, CustomerLname,DateOfBirth)
FROM CUSTOMER_BUILD
WHERE CustomerID > 100000

INSERT INTO POSITION(PositionName, PositionDescr)
VALUES('Team Lead', 'Leading the team'),
       ('Clerk', 'money related issues'),
       ('Gear assistant', 'getting gears for customers')

INSERT INTO EMPLOYEE(EmployeeLName, EmployeeMName, EmployeeDOB, EmployeeFName)
VALUES('Lee', 'C', '1991-08-01', 'John'),
       ('Perry', 'D', '1992-07-20', 'Ed'),
       ('Kerry', 'A', '1993-07-19', 'Josh')

INSERT INTO ADDRESS(AddressNumber, AddressStreet, AddressCity,AddressState, AddressZip)
VALUES('4550', '11th St', 'Seattle', 'Washington', '98111'),
       ('1120', '120th St', 'Seattle', 'Washington', '98102'),
       ('4322', '1st Ave', 'New York', 'New York', '12032')

INSERT INTO JOB (JobName, JobDescr, BeginDate, EndDate, JobPay)
VALUES ('Manager', 'Manage trips', '2017-01-01', '2017-04-20', 2000),
       ('HR', 'human resource', '2017-02-02', NULL, 5000),
       ('HR assistant', '2016-09-20', NULL, 3000)

INSERT INTO TOUR(TourName, TourPrice, TourDuration, TourBeginDate, TourEndDate)
VALUES('Bus Tour', 300, '12 hours', '2017-07-21', '2017-07-22'),
       ('Real hiker', 600, '36 hours', '2017-06-03', '2017-06-06'),
       ('Lazy tour', 200, '4 hours', '2017-08-01', '2017-08-01')

INSERT INTO TOUR_TYPE (TourTypeName, TourTypeDescr)
VALUES ('Single Day Tour', 'Tour includes 1-2 short hikes, lunch, and scenic views of the Washington Landscape all in one day.'),
       ('Multi Day Tour', 'Tour includes 2-8 hikes over the span of 2-6 days. Meals provided.'),
       ('Family Hiking Tour', 'Tour includes 1-2 hikes. Built for family fun and adventure.')
INSERT INTO ADDRESS_TYPE (AddressTypeName, AddressTypeDescr)
VALUES ('Office Headquarters', 'Where tours are sent out from. Managers AND Secretaries work here.'),
       ('HIke Location', 'Location of specific hike which a person works at')

INSERT INTO CONDITION(ConditionName, ConditionDescr)
VALUES('Snow', 'If there is snow covered'),
       ('Lake', 'If there is a lake'),
       ('River', 'if there is a rive')

INSERT INTO CONDITION_TYPE (ConditionTypeName, ConditionTypeDescr)
VALUES ('Weather', 'Weather conditions'),
       ('Temperature', 'How hot/cold will it be at the hike'),
       ('Trail Condition', 'Condition of the trail')

INSERT INTO RESERVATION_TYPE (ReservationTypeName, ReservationTypeDescr)
VALUES ('Individual', 'Single person booking a tour.'),
       ('Family', 'Family booking a tour.'),
       ('Corporate', 'Company/Corporation booking a tour.'),
       ('Frequent', 'Regular returning customer. Books at least 2 times a month.')

INSERT INTO CUSTOMER (CustomerFName, CustomerLName, CustomerDOB)
VALUES ('Matthew', 'Kiyoi', '12/26/1999'),
       ('Abel', 'Morales', '1/15/1990'), ('Xinbo', 'Lu', '5/1/1980'),
       ('Rachel', 'Paresa', '8/13/2010'),
       ('Nathaniel', 'Leung', '3/16/2017'),
       ('Kevin', 'Wu', '11/11/2011')

INSERT INTO CUSTOMER_MEASUREABLE(CustomerMeasuableAmount)
VALUES(20), (30), (40)

INSERT INTO RELATIONSHIP (RelationshipName, RelationshipDescr)
VALUES ('Sibling', 'Brother OR sister'),
       ('Friend', 'Known person associated     WITH this individual'),
       ('Parent', 'Responsible adult IN charge of child'),
       ('Spouse', 'Husband OR Wife who cares about the other'),
       ('Grandparent', 'Like parents but more willing to let kids have fun')

INSERT INTO CONTACT (ContactFName, ContactLName, ContactAddress, ContactEmail)
VALUES ('John', 'Doe', '7845 Los Caneros Ave', 'JohnDoeGotLost@aol.com'),
       ('Jane', 'Doe', '123 ABCDEFG Street', 'JaneDoeKnowsLetters@mail.com'),
       ('Bob', 'Li', '456 SevenEightNine Lane', 'BobTheBuilder@hotmail.com')
      
INSERT INTO PHONE (PhoneNumber, PhoneAreaCode)
VALUES ('8973424', '206'), ('12345678', '206'), ('51930432', '206')

INSERT INTO PHONE_TYPE (PhoneTypeName, PhoneTypeDescr)
VALUES ('Cell', 'No one has home phones anymore'),
       ('Home', 'People who own homes have these'),
       ('Work', 'People who work have these')

--Job related tables: POSITION, POSITION_TYPE, EMPLOYEE, EMPLOYEE_TYPE, ADDRESS, ADDRESS_TYPE, JOB.
--MANUFACTURER, GEAR, GEAR_TYPE, TERRAIN, HIKE, DIFFICULTY
INSERT INTO POSITION(PositionName, PositionDescr)
VALUES('Team Lead', 'Leading the team'),
       ('Clerk', 'money related issues'),
       ('Gear assistant', 'getting gears for customers')

INSERT INTO POSITION_TYPE(PositionTypeName,PositionTypeDescr)
Values('Hike coordinator','In charge of planning the tours'),
       ('Safety instructor','In charge to give safety classes'),
       ('Finance','In charge of payments and help customers to pay')

INSERT INTO EMPLOYEE(EmployeeLName, EmployeeDOB, EmployeeFName)
SELECT TOP 100000 (CustomerLName,
        DateOfBirth,
        CustomerFName)
FROM CUSTOMER_BUILD
WHERE CustomerID > 3000

INSERT INTO EMPLOYEE_TYPE(EmployeeTypeName,EmployeeTypeDesc)
Values('Full Time','works 40 plus hours '), ('Part-time','works less than 25 hours '), ('Volunteer','Works small amount of hours for free')

INSERT INTO ADDRESS(AddressNumber, AddressStreet, AddressCity,AddressState, AddressZip)
SELECT TOP 100000 (CustomerAddress,
        CustomerCity,
        CustomerState,
        CustomerZip)
FROM CUSTOMER_BUILD
WHERE CustomerID > 2000

INSERT INTO ADDRESS_TYPE(AddressTypeName,AddressTypeDescr)
Values('Home','where you live'),
       ('work','where you work at'),
       ('School', 'Where you go to school')

INSERT INTO JOB (JobName, JobDescr, BeginDate, EndDate, JobPay)
VALUES ('Manager', 'Manage trips', '2017-01-01', '2017-04-20', 2000),
       ('HR', 'human resource', '2017-02-02', NULL, 5000),
       ('HR assistant', '2016-09-20', NULL, 3000)

INSERT INTO TERRAIN(TerrainName, TerrainDescr)
VALUES('Mt Rainier', '2hrs drive from Seattle'),
       ('UW', 'University of Washington'), ('Mt Baker', 'Another mountain near Seattle')
      
INSERT INTO HIKE(HikeName, HikeAddress, HikeAltitude,HikeDistance)
VALUES('To Rainier','Maryland 20712', '5000ft', '10miles'), ('To UW', '98105, Seattle', '200ft', '2miles'), ('To Baker', 'WA 98244', '4000ft', '7miles')

INSERT INTO DIFFICULTY (DifficultyName, DifficultyDescr)
VALUES ('Easy', 'For beginners'),
       ('Medium', 'For the average hiker'),
       ('Hard', 'For experienced hikes'),
       ('Insane', 'For the few dedicated extreme hikers AND our tour guides to prove their worth')
      
INSERT INTO MANUFACTURER(ManufacturerName, ManufacturerDescription)
VALUES('Northface', 'Good company'),
       ('Nike', 'Sport brank'),
       ('H&M', 'Cheap stuffs')

INSERT INTO GEAR(GearName, GearDescrption)
VALUES('Shoes', 'Hiking shoes'),
       ('Wind jacket', 'Keep warm'),
       ('Water bottle', 'hydration')

INSERT INTO GEAR_TYPE (GearTypeName, GearTypeDescr)
VALUES ('Water Bottle', 'Carries water AND is BPA free'),
       ('Shoes', 'Built sturdy for hiking up mountains IN ALL terrains'),
       ('Hiking Aides', 'Use increase stability AND easy of ascension'),
       ('Backpack', 'Used to store supplies AND tools need for backpacking'),
       ('Tent', 'Used for overnight hikes')


INSERT INTO Measurable (MeasurableName, MeasurableDescr)
VALUES (‘feet’,’measured by 12inches’),(‘yard’,’measured by 3 feet’),(‘mile’, ‘measured by 5280 feet’ )


USE HIKING_TOUR
GO

CREATE PROCEDURE usp_PopulateTour
@TourName VARCHAR (30),
@Duration INT,
@Price NUMERIC (6,2),
@Begin DATE,
@End DATE,
@TourTypeName VARCHAR(30)
AS

DECLARE @TourTypeID INTEGER

EXECUTE usp_GetTourTypeID
@TourTypeName = @TourTypeName,
@TourTypeID = @TourTypeID OUTPUT


IF @TourTypeID IS NULL
BEGIN
	PRINT ('Cannot find TourType')
	RAISERROR ('TourTypeID is null, Check TourTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T1
INSERT INTO TOUR(TourPrice, TourDuration,TourBeginDate, TourEndDate, TourTypeID)
VALUES (@Price, @Duration, @Begin, @End, @TourTypeID)
IF @@ERROR <> 0
    ROLLBACK TRANSACTION T1
ELSE 
    COMMIT TRANSACTION T1
GO


-- Stored Procedure to insert into HIKE 
CREATE PROCEDURE usp_PopulateHike 
@HikeName VARCHAR(30),
@HikeAddress VARCHAR(30),
@HikeAltitude INTEGER,
@HikeDistance INTEGER,
@DifficultyName VARCHAR(30)
AS 

DECLARE @DifficultyID INT 

EXECUTE usp_GetDifficultyID
@DifficultyName = @DifficultyID,
@DifficultyID = @DifficultyID OUTPUT


IF @DifficultyID IS NULL
BEGIN
	PRINT ('Cannot find Difficulty')
	RAISERROR ('DifficultyID is null, Check DifficultyName spelling', 11, 1)
	RETURN	
END

BEGIN TRAN T2
INSERT INTO HIKE(HikeName, HikeAddress, HikeAltitude, HikeDistance, DifficultyID)
	VALUES (@HikeName, @HikeAddress, @HikeAltitude, @HikeDistance, @DifficultyID) 
IF @@ERROR <> 0
	ROLLBACK TRAN T2
ELSE
	COMMIT TRAN T2
GO


-- Stored Procedure to insert into RESERVATION
CREATE PROCEDURE usp_PopulateReservation
@ReservationName VARCHAR(30),
@ReservationDate DATE,
@ReservationNumPeople INT,
@TourName VARCHAR(30),
@TourBeginDate DATE,
@TourEndDate DATE,
@CustomerFName VARCHAR(30),
@CustomerLName VARCHAR(30),
@CustomerDOB DATE,
@ReservationTypeName VARCHAR(30)
AS

DECLARE 
@CustomerID INT,
@TourID INT,
@ReservationTypeID INT


EXECUTE usp_GetCustomerID
@CustomerFName = @CustomerFName,
@CustomerLName = @CustomerLName,
@CustomerDOB = @CustomerDOB,
@CustomerID = @CustomerID OUTPUT


EXECUTE usp_GetTourID
@TourName = @TourName,
@TourbeginDate = @TourbeginDate,
@TourEndDate = @TourEndDate,
@TourID = @TourID OUTPUT

EXECUTE usp_GetReservationTypeID
@ReservationTypeName = @ReservationTypeName,
@ReservationTypeID = @ReservationTypeID OUTPUT


IF @CustomerID IS NULL
BEGIN
	PRINT ('Cannot find Customer')
	RAISERROR ('CustomerID is null, Check CustomerFName, CustomerLName, CustomerDOB spelling', 11, 1)
	RETURN	
END
IF @TourID IS NULL
BEGIN
	PRINT ('Cannot find Tour')
	RAISERROR ('TourID is null, Check TourName spelling', 11, 1)
	RETURN	
END
IF @ReservationTypeID IS NULL
BEGIN
	PRINT ('Cannot find Reservation Type')
	RAISERROR ('ReservationTypeID is null, Check ReservationTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T3
INSERT INTO RESERVATION(ReservationName, ReservationDate, ReservationNumPeople, CustomerID, ReservationTypeID, TourID)
	VALUES (@ReservationName, @ReservationDate, @ReservationNumPeople, @CustomerID, @ReservationTypeID, @TourID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T3
ELSE
	COMMIT TRANSACTION T3
GO

-- Stored Procedure to insert into GEAR
CREATE PROCEDURE usp_PopulateGear
@GearName VARCHAR(30),
@GearDescr VARCHAR(500),
@Quatity INT,
@GearTypeName VARCHAR(30)
AS

DECLARE @GearTypeID INT

EXECUTE usp_GetGearTypeID
@GearTypeName = @GearTypeName,
@GearTypeID = @GearTypeID OUTPUT


IF @GearTypeID IS NULL
BEGIN
	PRINT ('Cannot find Gear Type')
	RAISERROR ('GearTypeID is null, Check GearTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T4
INSERT INTO GEAR(GearName, GearDescr, Quatity, GearTypeID)
	VALUES (@GearName, @GearDescr, @Quatity, @GearTypeID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T4
ELSE 
	COMMIT TRANSACTION T4
GO

-- Stored Procedure to insert into CONDITION
CREATE PROCEDURE usp_PopulateCondition
@ConditionName VARCHAR(30),
@ConditionDescr VARCHAR(500),
@ConditionTypeName VARCHAR(30)
AS

DECLARE @ConditionTypeID INTEGER

EXECUTE usp_GetConditionTypeID
@ConditionTypeName = @ConditionTypeName,
@ConditionTypeID = @ConditionTypeID OUTPUT


IF @ConditionTypeID IS NULL
BEGIN
	PRINT ('Cannot find Condition Type')
	RAISERROR ('ConditionTypeID is null, Check ConditionTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T5
INSERT INTO CONDITION(ConditionName, ConditionDescr, ConditionTypeID)
	VALUES (@ConditionName, @ConditionDescr, @ConditionTypeID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T5
ELSE 
	COMMIT TRANSACTION T5
GO

-- Stored Procedure to insert into POSITION
CREATE PROCEDURE usp_PopulatePosition
@PositionName VARCHAR(30),
@PositionDescr VARCHAR(500),
@PositionTypeName VARCHAR(30)
AS

DECLARE @PositionTypeID INTEGER

EXECUTE usp_GetPositionTypeID
@PositionTypeName = @PositionTypeName,
@PositionTypeID = @PositionTypeID OUTPUT


IF @PositionTypeID IS NULL
BEGIN
	PRINT ('Cannot find Position Type')
	RAISERROR ('PositionTypeID is null, Check PositionTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T6
INSERT INTO POSITION(PositionName, PositionDescr, PositionTypeID)
	VALUES (@PositionName, @PositionDescr, @PositionTypeID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T6
ELSE 
	COMMIT TRANSACTION T6
GO


-- Stored Procedure to insert into EMPLOYEE
CREATE PROCEDURE usp_PopulateEmployee
@EmployeeFName VARCHAR(30),
@EmployeeMName VARCHAR(30),
@EmployeeLName VARCHAR(30),
@EmployeeDOB DATE,
@EmployeeTypeName INT
AS

DECLARE @EmployeeTypeID INTEGER

EXECUTE usp_GetEmployeeTypeID
@EmployeeTypeName = @EmployeeTypeName,
@EmployeeTypeID = @EmployeeTypeID OUTPUT


IF @EmployeeTypeID IS NULL
BEGIN
	PRINT ('Cannot find Employee Type')
	RAISERROR ('EmployeeTypeID is null, Check EmployeeTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T7
INSERT INTO EMPLOYEE(EmployeeLName, EmployeeMName,EmployeeFName, EmployeeDOB, EmployeeTypeID)
	VALUES (@EmployeeLName, @EmployeeMName, @EmployeeFName,@EmployeeDOB, @EmployeeTypeID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T7
ELSE 
	COMMIT TRANSACTION T7
GO


-- Stored Procedure to insert into ADDRESS
CREATE PROCEDURE usp_PopulateAddress
@AddressNumber INTEGER,
@AddressStreet VARCHAR(30),
@AddressCity VARCHAR(30),
@AddressState VARCHAR(30),
@AddressZip INTEGER,
@AddressTypeName VARCHAR(30),
@EmployeeTypeID INT
AS

DECLARE @AddressTypeID INTEGER

EXECUTE usp_GetAddressTypeID
@AddressTypeName = @AddressTypeName,
@AddressTypeID = @AddressTypeID OUTPUT


IF @EmployeeTypeID IS NULL
BEGIN
	PRINT ('Cannot find Address Type')
	RAISERROR ('AddressTypeID is null, Check AddressTypeName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T8
INSERT INTO ADDRESS(AddressNumber, AddressStreet, AddressCity, AddressState, AddressZip, AddressTypeID)
	VALUES (@AddressNumber, @AddressStreet, @AddressCity, @AddressState, @AddressZip, @AddressTypeID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T8
ELSE 
	COMMIT TRANSACTION T8
GO


-- Stored Procedure to insert into JOB
CREATE PROCEDURE usp_PopulateJob
@JobName VARCHAR(30),
@JobnDescr VARCHAR(500),
@BeginDate DATE,
@EndDate DATE,
@JobPay NUMERIC(8,2),
@EmployeeLName VARCHAR (30),
@EmployeeFName VARCHAR (30),
@EmployeeMName VARCHAR (30),
@PositionName VARCHAR (60),
@AddressName VARCHAR (60),
@EmployID INT,
@PosID INT,
@AdrsID INT
AS

DECLARE 
@EmployeeID INTEGER,
@PositionID INTEGER,
@AddressID INTEGER


EXECUTE usp_GetEmployeeID
@EmployeeFName = @EmployeeFName,
@EmployeeLName = @EmployeeLName,
@EmployeeMName = @EmployeeMName,
@EmployeeID = @EmployeeID OUTPUT


EXECUTE usp_GetPositionID
@PositionName = @PositionName,
@PositionID = @PositionID OUTPUT


EXECUTE usp_GetAddressID
@AddressName = @AddressName,
@AddressID = @AddressID OUTPUT


IF @EmployeeID IS NULL
BEGIN
	PRINT ('Cannot find Employee')
	RAISERROR ('EmployeeID is null, Check EmployeeName spelling', 11, 1)
	RETURN	
END

IF @PositionID IS NULL
BEGIN
	PRINT ('Cannot find Position')
	RAISERROR ('PositionID is null, Check PositionName spelling', 11, 1)
	RETURN	
END

IF @AddressID IS NULL
BEGIN
	PRINT ('Cannot find Address')
	RAISERROR ('AddressID is null, Check AddressName spelling', 11, 1)
	RETURN	
END

BEGIN TRANSACTION T9
INSERT INTO JOB(JobName, JobnDescr, BeginDate, EndDate, JobPay, EmployeeID, PositionID, AddressID)
	VALUES (@JobName, @JobnDescr, @BeginDate, @EndDate, @JobPay, @EmployID, @PosID, @AdrsID)
IF @@ERROR <> 0
	ROLLBACK TRANSACTION T9
ELSE 
	COMMIT TRANSACTION T9
GO

/*
Stored Procedures to get the ID of all tables.

These procedures will be reused in the above stored procedures and anytime it is necessary
to get the ID for a table.
*/
/*
CREATE PROCEDURE usp_GetTourTypeID
@TourTypeName VARCHAR(30),
@TourTypeID INTEGER OUTPUT
AS
SET @TourTypeID = (SELECT TourTypeID
				   FROM TOUR_TYPE
				   WHERE TourTypeName = @TourTypeName)
GO

CREATE PROCEDURE usp_GetDifficultyID
@DifficultyName VARCHAR(30),
@DifficultyID INTEGER OUTPUT
AS
SET @DifficultyID = (SELECT DifficultyID 
					 FROM DIFFICULTY
					 WHERE DifficultyName = @DifficultyName)
GO

CREATE PROCEDURE usp_GetCustomerID
@CustomerFName VARCHAR(30),
@CustomerLName VARCHAR(30),
@CustomerDOB DATE,
@CustomerID INTEGER OUTPUT
AS
SET @CustomerID = (SELECT CustomerID
				   FROM CUSTOMER
				   WHERE CustomerFName = @CustomerFName
					AND CustomerLName = @CustomerLName
					AND CustomerDOB = @CustomerDOB)
GO

CREATE PROCEDURE usp_GetTourID
@TourName VARCHAR(30),
@TourbeginDate DATE,
@TourEndDate DATE,
@TourID INTEGER OUTPUT
AS
SET @TourID = (SELECT TourID
			   FROM TOUR 
			   WHERE TourName = @TourName
			   	AND TourBeginDate = @TourBeginDate
				AND TourEndDate = @TourEndDate)
GO

CREATE PROCEDURE usp_GetReservationTypeID
@ReservationTypeName VARCHAR(30),
@ReservationTypeID INTEGER OUTPUT
AS
SET @ReservationTypeID = (SELECT ReservationTypeID
						  FROM RESERVATION_TYPE
						  WHERE ReservationTypeName = @ReservationTypeName)
GO

CREATE PROCEDURE usp_GetGearTypeID
@GearTypeName VARCHAR(30),
@GearTypeID INTEGER OUTPUT
AS
SET @GearTypeID = (SELECT GearTypeID
				   FROM GEAR_TYPE
				   WHERE GearTypeName = @GearTypeName)
GO

CREATE PROCEDURE usp_GetConditionTypeID
@ConditionTypeName VARCHAR(30),
@ConditionTypeID INTEGER OUTPUT
AS
SET @ConditionTypeID = (SELECT ConditionTypeID
				   FROM CONDITION_TYPE
				   WHERE ConditionTypeName = @ConditionTypeName)
GO

CREATE PROCEDURE usp_GetPositionID
@PositionName VARCHAR(30),
@PositionID INTEGER OUTPUT
AS
SET @PositionID = (SELECT PositionID
				   FROM POSITION
				   WHERE PositionName = @PositionName)
GO

CREATE PROCEDURE usp_GetPositionTypeID
@PositionTypeName VARCHAR(30),
@PositionTypeID INTEGER OUTPUT
AS
SET @PositionTypeID = (SELECT PositionTypeID
				   FROM POSITION_TYPE
				   WHERE PositionTypeName = @PositionTypeName)
GO

CREATE PROCEDURE usp_GetEmployeeTypeID
@EmployeeTypeName VARCHAR(30),
@EmployeeTypeID INTEGER OUTPUT
AS
SET @EmployeeTypeID = (SELECT EmployeeTypeID
				   FROM EMPLOYEE_TYPE
				   WHERE EmployeeTypeName = @EmployeeTypeName)
GO

CREATE PROCEDURE usp_GetTerrainID
@TerrainName VARCHAR(30),
@TerrainID INTEGER OUTPUT
AS
SET @TerrainID = (SELECT TerrainID
				   FROM TERRAIN
				   WHERE TerrainName = @TerrainName)
GO

CREATE PROCEDURE usp_GetManufacturerID
@ManufacturerName VARCHAR(30),
@ManufacturerID INTEGER OUTPUT
AS
SET @ManufacturerID = (SELECT ManufacturerID
				   FROM MANUFACTURER
				   WHERE ManufacturerName = @ManufacturerName)
GO

CREATE PROCEDURE usp_GetManufacturerID
@ManufacturerName VARCHAR(30),
@ManufacturerID INTEGER OUTPUT
AS
SET @ManufacturerID = (SELECT ManufacturerID
				   FROM MANUFACTURER
				   WHERE ManufacturerName = @ManufacturerName)
GO

CREATE PROCEDURE usp_GetAddressID
@AddressStreet VARCHAR(60),
@AddressCity VARCHAR(60),
@AddressState VARCHAR (30),
@AddressZip INT,
@AddressID INTEGER OUTPUT
AS
SET @AddressID = (SELECT AddressID
				   FROM ADDRESS
				   WHERE AddressStreet = @AddressStreet
				   AND AddressCity = @AddressCity
				   AND AddressState = @AddressState
				   And AddressZip = @AddressZip
				   )
GO

CREATE PROCEDURE usp_GetAddressTypeID
@AddressTypeName VARCHAR(30),
@AddressTypeID INTEGER OUTPUT
AS
SET @AddressTypeID = (SELECT AddressTypeID
				   FROM ADDRESS_TYPE
				   WHERE AddressTypeName = @AddressTypeName)
GO

CREATE PROCEDURE usp_GetAddressTypeID
@AddressTypeName VARCHAR(30),
@AddressTypeID INTEGER OUTPUT
AS
SET @AddressTypeID = (SELECT AddressTypeID
				   FROM ADDRESS_TYPE
				   WHERE AddressTypeName = @AddressTypeName)
GO

CREATE PROCEDURE usp_GetEmployeeID
@EmployeeFName VARCHAR(30),
@EmployeeLName VARCHAR(30),
@EmployeeID INTEGER OUTPUT
AS
SET @EmployeeID = (SELECT EmployeeID
				   FROM EMPLOYEE
				   WHERE EmployeeFName = @EmployeeFName
				   AND EmployeeLName = @EmployeeLName
				   )
GO

CREATE PROCEDURE usp_GetEmployeeTypeID
@EmployeeTypeName VARCHAR(30),
@EmployeeTypeID INTEGER OUTPUT
AS
SET @EmployeeTypeID = (SELECT EmployeeTypeID
				   FROM EMPLOYEE_TYPE
				   WHERE EmployeeTypeName = @EmployeeTypeName)
GO
*/