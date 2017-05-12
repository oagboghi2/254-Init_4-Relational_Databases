CREATE TABLE youtube ( ID INTEGER PRIMARY KEY,
name TEXT,
history TEXT,
subscriptions TEXT,
purchases INTEGER,
reccomendation TEXT
);

CREATE TABLE reccomendation ( ID INTEGER PRIMARY KEY,
title TEXT,
rating INTEGER,
times_played INTEGER
);

CREATE TABLE purchase (ID INTEGER PRIMARY KEY,
title VARCHAR,
transaction_number INTEGER
);

CREATE TABLE history_list ( ID INTEGER PRIMARY KEY,
last_movie VARCHAR,
name TEXT
);

INSERT INTO youtube VALUES (1, 'strategize real-time technologies', 'Accounting', 'Insituto Universitario - Centro Latinoamericano de Economia Humana - IU Claeh', 67, '772 Macpherson Parkway');
INSERT INTO youtube VALUES (2, 'orchestrate next-generation niches', 'Services', 'Kitami Institute of Technology', 95, '40 Morning Place');
INSERT INTO youtube VALUES (3, 'recontextualize cutting-edge applications', 'Human Resources', 'Brigham Young University', 59, '3 Bartelt Park');
INSERT INTO youtube VALUES (4, 'leverage web-enabled infrastructures', 'Support', 'St.Kliment Ohridski University', 18, '086 Jana Place');
INSERT INTO youtube VALUES (5, 'synthesize enterprise infrastructures', 'Research and Development', 'University of the Free State', 5, '11 Upham Crossing');

INSERT INTO reccomendation VALUES (1, 'deliver open-source niches', 1, 63);
INSERT INTO reccomendation VALUES (2, 'whiteboard impactful platforms', 8, 518);
INSERT INTO reccomendation VALUES (3, 'engineer impactful schemas', 3, 998);
INSERT INTO reccomendation VALUES  (4, 'integrate leading-edge functionalities', 10, 269);
INSERT INTO reccomendation VALUES  (5, 'optimize user-centric web services', 6, 918);

INSERT INTO purchase VALUES (1, 'unleash end-to-end methodologies', 30042);
INSERT INTO purchase VALUES (2, 'leverage vertical solutions', 3552);
INSERT INTO purchase VALUES (3, 'monetize cutting-edge bandwidth', 355);
INSERT INTO purchase VALUES (4, 'target interactive infrastructures', 5100);
INSERT INTO purchase VALUES (5, 'engineer extensible supply-chains', 4917);

INSERT INTO history_list VALUES (1, 'scale virtual action-items', 'incentivize user-centric bandwidth');
INSERT INTO history_list VALUES (2, 'optimize value-added web-readiness', 'benchmark killer e-services');
INSERT INTO history_list VALUES (3, 'visualize interactive content', 'mesh rich convergence');
INSERT INTO history_list VALUES (4, 'whiteboard interactive relationships', 'extend wireless niches');
INSERT INTO history_list VALUES (5, 'optimize revolutionary partnerships', 'integrate efficient convergence');

SELECT * FROM youtube;
UPDATE youtube SET history = 'changes' WHERE id = 2;
SELECT * FROM youtube;

SELECT name FROM youtube WHERE id = 5;

SELECT purchases, history, last_movie FROM youtube JOIN history_list ON youtube.id = history_list.id;

SELECT purchases, subscriptions FROM youtube ORDER BY purchases;

SELECT purchases, subscriptions FROM youtube ORDER BY purchases LIMIT 2 OFFSET 3;

DELETE FROM purchase WHERE id = 5;
SELECT * FROM purchase;


