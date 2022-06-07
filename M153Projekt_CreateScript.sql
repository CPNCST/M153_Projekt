create database M153;
go

use M153;
go 

create table Strasse ( 
	StrassenID INTEGER NOT NULL PRIMARY KEY IDENTITY(1, 1),
	Strassenname VARCHAR(100), 
	StrassenLimite INTEGER
);
go

create table Stadt ( 
	StadtID INTEGER PRIMARY KEY NOT NULL IDENTITY(1, 1), 
	StadtName VARCHAR(50), 
	fk_StrassenID INTEGER FOREIGN KEY REFERENCES Strasse(StrassenID)
);
go

create table Bussen (
	BusseID INTEGER PRIMARY KEY NOT NULL IDENTITY(1, 1), 
	Menge FLOAT
);
go

create table Messung ( 
	MessungsID INTEGER PRIMARY KEY NOT NULL IDENTITY(1, 1), 
	Messungsname VARCHAR(50), 
	Messungsmenge INTEGER, 
	Messungszeit DATETIME, 
	Busse FLOAT, 
	fk_StadtID INTEGER FOREIGN KEY REFERENCES Stadt(StadtID), 
	fk_BusseID INTEGER FOREIGN KEY REFERENCES Bussen(BusseID)
);
go