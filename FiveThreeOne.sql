drop database FiveThreeOne;

create database FiveThreeOne;
use FiveThreeOne;

Create table cycle (
	`number` int(11) NOT NULL auto_increment,
	PRIMARY KEY(`number`)
);

Create Table movement (
	`ID` int(11) NOT NULL auto_increment,
	Name varchar(8),
	PRIMARY KEY(`ID`)
);

Create Table trainingmax(
	CycleID int(11) NOT NULL,
	MovementID int(11) NOT NULL,
	Weight DOUBLE NOT NULL,
	Notes TINYTEXT,
	UnitOfMeasure tinytext,
	FOREIGN KEY (MovementID) REFERENCES movement(ID),
	FOREIGN KEY (CycleID) REFERENCES cycle(`number`),
	PRIMARY KEY (CycleID, MovementID)
);

Create Table workout(
	CycleID int(11) NOT NULL,
	MovementID int(11) NOT NULL,
	`Date` Date,
	Week varchar(7) NOT NULL,
	WeightLifted DOUBLE NOT NULL,
	AmountOfReps tinyint NOT NULL,
	Estimated1RM DOUBLE,
	FOREIGN KEY (MovementID) REFERENCES movement(ID),
	FOREIGN KEY (CycleID) REFERENCES cycle(`number`),
	PRIMARY KEY (CycleID, MovementID, Week)
);

-- Movements
insert into movement (name) values ("Bench");
insert into movement (name) values ("Squat");
insert into movement (name) values ("Press");
insert into movement (name) values ("Deadlift");

-- Cycle 1
insert into cycle values ();

-- Cycle 1 training maxes
insert into trainingmax (cycleid, movementid, weight) values (1, 1, 220.5);
insert into trainingmax (cycleid, movementid, weight) values (1, 2, 256.5);
insert into trainingmax (cycleid, movementid, weight) values (1, 3, 144);
insert into trainingmax (cycleid, movementid, weight) values (1, 4, 315);

-- Cycle 1 workouts
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 1, STR_TO_DATE('07-11-2014', '%m-%d-%Y'), "3x5", 185.0, 10); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 2, STR_TO_DATE('07-14-2014', '%m-%d-%Y'), "3x5", 220.0, 10); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 3, STR_TO_DATE('07-16-2014', '%m-%d-%Y'), "3x5", 120.0, 6); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 4, STR_TO_DATE('07-18-2014', '%m-%d-%Y'), "3x5", 270.0, 9); 
	
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 1, STR_TO_DATE('07-21-2014', '%m-%d-%Y'), "3x3", 200.0, 7); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 2, STR_TO_DATE('07-23-2014', '%m-%d-%Y'), "3x3", 230.0, 10); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 3, STR_TO_DATE('07-25-2014', '%m-%d-%Y'), "3x3", 130.0, 5); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 4, STR_TO_DATE('07-28-2014', '%m-%d-%Y'), "3x3", 285.0, 10); 
	
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 1, STR_TO_DATE('07-31-2014', '%m-%d-%Y'), "5/3/1", 210.0, 6); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 2, STR_TO_DATE('08-01-2014', '%m-%d-%Y'), "5/3/1", 245.0, 10); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 3, STR_TO_DATE('08-04-2014', '%m-%d-%Y'), "5/3/1", 135.0, 7); 
insert into workout (cycleid, movementid, date, week, weightlifted, amountofreps) values (1, 4, STR_TO_DATE('08-06-2014', '%m-%d-%Y'), "5/3/1", 300.0, 9); 

-- Cycle 2
insert into cycle values ();
-- Cycle 3
insert into cycle values ();
-- Cycle 4
insert into cycle values ();
-- Cycle 5
insert into cycle values ();
-- Cycle 6
insert into cycle values ();
-- Cycle 7
insert into cycle values ();
-- Cycle 8 
insert into cycle values ();
-- Cycle 9
insert into cycle values ();
-- Cycle 10
insert into cycle values ();

--Created from parse_trainingmaxes.py
source trainingmaxes.sql;
