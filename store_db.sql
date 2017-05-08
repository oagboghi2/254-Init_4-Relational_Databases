CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER, year_released INTEGER);

INSERT INTO store VALUES (1, "Footballs", 34, 1, 2002);
INSERT INTO store VALUES (2, "Football Helmet", 24, 1, 2002);
INSERT INTO store VALUES (3, "Baseballs", 80, 2, 2008);
INSERT INTO store VALUES (4, "Basket Balls", 30, 3, 2001);
INSERT INTO store VALUES (5, "Shin guards", 4, 1, 2012);
INSERT INTO store VALUES (6, "Hockey stick", 17, 5, 2009);
INSERT INTO store VALUES (7, "Soccer ball", 12, 6, 2002);
INSERT INTO store VALUES (8, "Football Gloves", 6, 1, 2000);
INSERT INTO store VALUES (9, "Hockey Puck", 4, 5, 2017);
INSERT INTO store VALUES (10, "Baseball Bats", 80, 2, 2008);
INSERT INTO store VALUES (11, "Sneakers", 80, 2, 2008);
INSERT INTO store VALUES (12, "Pitcher mounds", 10, 3, 2008);
INSERT INTO store VALUES (13, "Duffel Bags", 20, 6, 2003);
INSERT INTO store VALUES (14, "Baseball cards", 119, 2, 2008);
INSERT INTO store VALUES (15, "Goalie Masks", 05, 6, 2015);
SELECT * FROM store;
SELECT name FROM store WHERE aisle < 3
