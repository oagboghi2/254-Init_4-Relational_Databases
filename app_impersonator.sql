/* What does the app's SQL look like? */

/* This is a table of what a SQL database in a rpg game woud look like, where the table represents the main user avatar, 
showing their charatcer name, health abd various stats.*/

CREATE TABLE myChar (ID INTEGER PRIMARY KEY,
name TEXT,
Hp INTEGER,
ATK INTEGER,
DEF INTEGER,
CRT INTEGER,
Status TEXT
);

INSERT INTO myChar VALUES(1, 'Guts', 600, 310,420, 0.10, 'Normal');
INSERT INTO myChar VALUES(2, 'Casca', 150, 180,100,0, 'Normal');
INSERT INTO myChar VALUES(3, 'Farnese', 375, 200,200, 0.30, 'Normal');

SELECT * FROM myChar;
UPDATE myChar SET Status = 'Cursed' WHERE id < 3;
SELECT * FROM myChar;

DELETE FROM myChar WHERE id = 3;
SELECT * FROM myChar;
