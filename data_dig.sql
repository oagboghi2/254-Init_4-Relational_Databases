/* Put your data in here and query it! */
CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT,
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER,
    team_Name TEXT);

INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4, "Unaffliated");
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4, "Avengers");
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 6, 7, 3, 7, 5, 4, "Avengers");
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7, "X-Men");
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Norway", 2, 7, 7, 6, 6, 4, "Avengers");
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3, "Unaffliated");
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4, "X-Men");
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4, "Unaffliated");
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3, "Unaffliated");
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4, "Unaffliated");
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4, "X-Men");
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7, "X-men");

SELECT name, MAX(popularity) AS Most_Popular FROM marvels GROUP by popularity;

SELECT name, MIN(height_m) AS short FROM marvels
GROUP by height_m;

SELECT name, AVG(weight_kg) AS midweight FROM marvels
GROUP by weight_kg;


SELECT name, MAX(speed) AS quickest_Characters FROM marvels
GROUP by speed
HAVING quickest_Characters > 2;

SELECT name, MAX(strength) AS strongest_Characters FROM marvels
GROUP by strength
HAVING strongest_Characters > 4;

SELECT name, team_name,
CASE
        WHEN team_Name = "Avengers" THEN "Avengers"
        WHEN team_Name = "X-Men" THEN "X-Men"
        WHEN team_Name = "Fantastic Four" THEN "Fantastic Four"
        ELSE "No Team History"
    END as "group_Affliation" FROM marvels;

SELECT name, team_Name FROM marvels WHERE strength > 6 AND team_Name = "Avengers" OR team_Name = "X-Men";
