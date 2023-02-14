CREATE TABLE Client(
   Client_ID int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   First_Name VARCHAR(50) NOT NULL,
   Last_Name VARCHAR(50) NOT NULL,
   Email VARCHAR(50) NOT NULL,
   User_password VARCHAR(50) NOT NULL,
   Phone INT(10)
);

CREATE TABLE Announces(
   Announce_ID int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   Client_ID int,
   Title VARCHAR(30) NOT NULL,
   Price INT(20) NOT NULL,
   Publication_date DATE NOT NULL,
   last_modification_date DATE NOT NULL,
   Type VARCHAR(25) NOT NULL,
   Category VARCHAR(15) NOT NULL,
   Country VARCHAR(15) NOT NULL,
   Region VARCHAR(50) NOT NULL,
   Code_Postal INT(20) NOT NULL,
   House_Number VARCHAR(10) NOT NULL,
   House_Floor VARCHAR(10) NOT NULL,
   FOREIGN KEY(Client_ID) REFERENCES Client(Client_ID)
);

CREATE TABLE Images(
   Image_ID int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
   Announce_ID int ,
   Image_Path VARCHAR(1000),
   Image_Type VARCHAR(50),
   FOREIGN KEY(Announce_ID) REFERENCES Announces(Announce_ID)
);