/* Put your data in here and query it! */
CREATE TABLE bike (ID INTEGER PRIMARY KEY,
    name VARCHAR,
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

CREATE TABLE Bike_Frame (ID INTEGER PRIMARY KEY,
bike_id INTEGER,
frame_id INTEGER);

CREATE TABLE Bike_tires (ID INTEGER PRIMARY KEY,
bike_id INTEGER,
front_tire_id INTEGER,
back_tire_id INTEGER
);
    
  