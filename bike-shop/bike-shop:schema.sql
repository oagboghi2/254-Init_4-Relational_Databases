/* Put your data in here and query it! */
CREATE TABLE bike (ID INTEGER PRIMARY KEY,
    name TEXT,
    price DECIMAL,
    front_tire INTEGER,
    back_tire INTEGER,
    frame_id INTEGER,
    Frame TEXT,
    rings INTEGER,
    front_brake BOOLEAN,
    back_brake BOOLEAN);
    
CREATE TABLE Tire (ID INTEGER PRIMARY KEY,
	diameter INTEGER,
	type VARCHAR);

CREATE TABLE Frame(ID INTEGER PRIMARY KEY,
	color VARCHAR,
	size INTEGER,
	style VARCHAR);

CREATE TABLE bike_Frame (ID INTEGER PRIMARY KEY,
	bike_id INTEGER,
	frame_id INTEGER);
	
CREATE TABLE Bike_tires (ID INTEGER PRIMARY KEY,
	bike_id INTEGER,
	front_tire_id INTEGER,
	back_tire_id INTEGER
	);
    

  

INSERT INTO bike VALUES(1, 'BMX Bike', 181.38, 0 , 27-8, 3, 412133263-6, 738, true, true);
INSERT INTO bike_Frame VALUES(3429954, 002233);*/

SELECT name, price, front_tire, back_tire, frame_id, Frame, rings, front_brake, back_brake FROM bike;
SELECT bike_id, frame_id FROM bike_Frame;