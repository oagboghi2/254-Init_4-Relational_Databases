CREATE TABLE album(ID INTEGER PRIMARY KEY,
albumTitle VARCHAR,
songCount INTEGER,
genre VARCHAR,
artist VARCHAR
);

CREATE TABLE artist(ID INTEGER PRIMARY KEY,
name VARCHAR,
bandmembers VARCHAR,
genre VARCHAR,
Artist_Album VARCHAR
);

CREATE TABLE songs(ID INTEGER PRIMARY KEY,
song_Title VARCHAR,
length INTEGER,
songCount INTEGER);

CREATE TABLE playlists(ID INTEGER PRIMARY KEY,
Playlist_name VARCHAR,
songs INTEGER
);

INSERT INTO album VALUES(1, 'The Search for Everything', 12, 'Rock and Roll/Blues', 'John Mayer' );
INSERT INTO album VALUES(2, 'Where does this door go' , 12,'Neo-Soul', 'Mayer hawthorne' );
INSERT INTO album VALUES(3, 'Good Kid/Mad City', 16, 'Rap/HipHop', 'Kendrick Lamarr' );
INSERT INTO album VALUES(13, 'Radius' , 13,'Neo-Soul', 'Allen Stone' );




INSERT INTO artist VALUES(4, 'John Mayer', 'Dead and Company', 'Rock and Roll/Blues', 'The Search for Everything');
INSERT INTO artist VALUES(5, 'Mayer Hawthorne', 'The County', 'Neo-Soul','Where does this door go' );
INSERT INTO artist VALUES(6, 'Kendrick Lamarr', NULL, 'Rap/HipHop','The Search for Everything' );

INSERT INTO songs VALUES(7, 'Rosie', 4, 12 );
INSERT INTO songs VALUES(8, 'Backseat Lover', 3, 12 );
INSERT INTO songs VALUES(9, 'Drink', 6, 16 );
INSERT INTO songs VALUES(14, 'Viva La Gadda', 17, 2 );



INSERT INTO playlists VALUES(10, 'Blues',36 );
INSERT INTO playlists VALUES(11, 'Soul/R&B',76 );
INSERT INTO playlists VALUES(12, 'Rap',22 );



SELECT albumTitle FROM album;
SELECT * FROM playlist;
SELECT * FROM songs;
SELECT * FROM artist;

SELECT song_title FROM songs WHERE length < 4 AND songCount > 10;
SELECT songs FROM playlist ORDER BY songs;
SELECT song_Title FROM songs ;

SELECT artist FROM album WHERE genre IN ('Neo-Soul');

SELECT name, bandmembers, albumTitle FROM artist
			JOIN album
			ON album.id = artist.id;
WHERE albumTitle LIKE 'The Search for Everything';

SELECT albumTitle, songCount FROM album
ORDER BY songCount DESC
LIMIT 2;

SELECT songs, SUM(songs) AS total_songs FROM playlists
        GROUP BY Playlist_name
        HAVING total_num_songs > 15;

