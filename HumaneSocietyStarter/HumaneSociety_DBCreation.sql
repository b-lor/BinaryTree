CREATE TABLE Categories (CategoryId INTEGER IDENTITY (1,1) PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE DietPlans(DietPlanId INTEGER IDENTITY (1,1) PRIMARY KEY, Name VARCHAR(50), FoodType VARCHAR(50), FoodAmountInCups INTEGER);
CREATE TABLE Animals (AnimalId INTEGER IDENTITY (1,1) PRIMARY KEY, Name VARCHAR(50), CategoryId INTEGER FOREIGN KEY REFERENCES Categories(CategoryId), Weight INTEGER, Age INTEGER, DietPlanId INTEGER FOREIGN KEY REFERENCES DietPlans(DietPlanId));
CREATE TABLE Rooms (RoomId INTEGER IDENTITY (1,1) PRIMARY KEY, RoomNumber INTEGER, AnimalId INTEGER FOREIGN KEY REFERENCES Animals(AnimalId));
CREATE TABLE Shots (ShotId INTEGER IDENTITY (1,1) PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE AnimalShots (AnimalId INTEGER FOREIGN KEY REFERENCES Animals(AnimalId), ShotId INTEGER FOREIGN KEY REFERENCES Shots(ShotId), DateReceived DATE, CONSTRAINT AnimalShotId PRIMARY KEY (AnimalId, ShotId));
CREATE TABLE USStates (USStateId INTEGER IDENTITY (1,1) PRIMARY KEY, Name VARCHAR(50), Abbreviation VARCHAR(2));
CREATE TABLE Addresses (AddressId INTEGER IDENTITY (1,1) PRIMARY KEY, AddressLine1 VARCHAR(50), AddressLine2 VARCHAR(50), Zipcode INTEGER, USStateId INTEGER FOREIGN KEY REFERENCES USStates(USStateId)); 
CREATE TABLE Clients (ClientId INTEGER IDENTITY (1,1) PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), UserName VARCHAR(50), Password VARCHAR(50), AddressId INTEGER FOREIGN KEY REFERENCES Addresses(AddressId), Email VARCHAR(50));
CREATE TABLE Adoptions(AdoptionId INTEGER IDENTITY (1,1) PRIMARY KEY, ClientId INTEGER FOREIGN KEY REFERENCES Clients(ClientId), AnimalId INTEGER FOREIGN KEY REFERENCES Animals(AnimalId));
CREATE TABLE Employees (EmployeeId INTEGER IDENTITY (1,1) PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), UserName VARCHAR(50), Password VARCHAR(50), EmployeeNumber INTEGER, Email VARCHAR(50));

INSERT INTO USStates Values('Alabama','AL');
INSERT INTO USStates Values('Alaska','AK');
INSERT INTO USStates Values('Arizona','AZ');
INSERT INTO USStates Values('Arkansas','AR');
INSERT INTO USStates Values('California','CA');
INSERT INTO USStates Values('Colorado','CO');
INSERT INTO USStates Values('Connecticut','CT');
INSERT INTO USStates Values('Delaware','DE');
INSERT INTO USStates Values('Florida','FL');
INSERT INTO USStates Values('Georgia','GA');
INSERT INTO USStates Values('Hawaii','HI');
INSERT INTO USStates Values('Idaho','ID');
INSERT INTO USStates Values('Illinois','IL');
INSERT INTO USStates Values('Indiana','IN');
INSERT INTO USStates Values('Iowa','IA');
INSERT INTO USStates Values('Kansas','KS');
INSERT INTO USStates Values('Kentucky','KY');
INSERT INTO USStates Values('Louisiana','LA');
INSERT INTO USStates Values('Maine','ME');
INSERT INTO USStates Values('Maryland','MD');
INSERT INTO USStates Values('Massachusetts','MA');
INSERT INTO USStates Values('Michigan','MI');
INSERT INTO USStates Values('Minnesota','MN');
INSERT INTO USStates Values('Mississippi','MS');
INSERT INTO USStates Values('Missouri','MO');
INSERT INTO USStates Values('Montana','MT');
INSERT INTO USStates Values('Nebraska','NE');
INSERT INTO USStates Values('Nevada','NV');
INSERT INTO USStates Values('New Hampshire','NH');
INSERT INTO USStates Values('New Jersey','NJ');
INSERT INTO USStates Values('New Mexico','NM');
INSERT INTO USStates Values('New York','NY');
INSERT INTO USStates Values('North Carolina','NC');
INSERT INTO USStates Values('North Dakota','ND');
INSERT INTO USStates Values('Ohio','OH');
INSERT INTO USStates Values('Oklahoma','OK');
INSERT INTO USStates Values('Oregon','OR');
INSERT INTO USStates Values('Pennsylvania','PA');
INSERT INTO USStates Values('Rhode Island','RI');
INSERT INTO USStates Values('South Carolina','SC');
INSERT INTO USStates Values('South Dakota','SD');
INSERT INTO USStates Values('Tennessee','TN');
INSERT INTO USStates Values('Texas','TX');
INSERT INTO USStates Values('Utah','UT');
INSERT INTO USStates Values('Vermont','VT');
INSERT INTO USStates Values('Virginia','VA');
INSERT INTO USStates Values('Washington','WA');
INSERT INTO USStates Values('West Virgina','WV');
INSERT INTO USStates Values('Wisconsin','WI');
INSERT INTO USStates Values('Wyoming','WY');

ALTER TABLE Animals ADD Demeanor VARCHAR(50);
ALTER TABLE Animals ADD KidFriendly BIT;
ALTER TABLE Animals ADD PetFriendly BIT;
ALTER TABLE Animals ADD Gender VARCHAR(50);
ALTER TABLE Animals ADD AdoptionStatus VARCHAR(50);
ALTER TABLE Animals ADD EmployeeId INTEGER FOREIGN KEY REFERENCES Employees(EmployeeId);

ALTER TABLE Adoptions ADD ApprovalStatus VARCHAR(50);
ALTER TABLE Adoptions ADD AdoptionFee INTEGER;
ALTER TABLE Adoptions ADD PaymentCollected BIT;