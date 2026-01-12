CREATE DATABASE transparent;

USE transparent;

CREATE TABLE artists
(
	artist_id INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(70) UNIQUE NOT NULL,
    create_date TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
    end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp)
)
WITH SYSTEM VERSIONING;

INSERT INTO
`artists` (`artist_id`, `artist`, `create_date`, `last_update`)
VALUES
(NULL, '112', current_timestamp(6), current_timestamp(6)),
(NULL, '2Pac', current_timestamp(6), current_timestamp(6)),
(NULL, 'Aaliyah', current_timestamp(6), current_timestamp(6)),
(NULL, 'Adele', current_timestamp(6), current_timestamp(6)),
(NULL, 'Alicia Keys', current_timestamp(6), current_timestamp(6)),
(NULL, 'Beenie Man', current_timestamp(6), current_timestamp(6)),
(NULL, 'Billy Ocean', current_timestamp(6), current_timestamp(6)),
(NULL, 'Bob Marley', current_timestamp(6), current_timestamp(6)),
(NULL, 'Boyz II Men', current_timestamp(6), current_timestamp(6)),
(NULL, 'Bruce Springsteen', current_timestamp(6), current_timestamp(6)),
(NULL, 'Busta Rhymes', current_timestamp(6), current_timestamp(6)),
(NULL, 'Chris Brown', current_timestamp(6), current_timestamp(6)),
(NULL, 'Coldplay', current_timestamp(6), current_timestamp(6)),
(NULL, 'deadmau5', current_timestamp(6), current_timestamp(6)),
(NULL, 'DMX', current_timestamp(6), current_timestamp(6)),
(NULL, 'Drake', current_timestamp(6), current_timestamp(6)),
(NULL, 'Ed Sheeran', current_timestamp(6), current_timestamp(6)),
(NULL, 'Elephant Man', current_timestamp(6), current_timestamp(6)),
(NULL, 'George Michael', current_timestamp(6), current_timestamp(6)),
(NULL, 'Ginuwine', current_timestamp(6), current_timestamp(6)),
(NULL, 'Gloria Estefan', current_timestamp(6), current_timestamp(6)),
(NULL, 'Jagged Edge', current_timestamp(6), current_timestamp(6)),
(NULL, 'JAY-Z', current_timestamp(6), current_timestamp(6)),
(NULL, 'Justin Bieber', current_timestamp(6), current_timestamp(6)),
(NULL, 'Kanye West', current_timestamp(6), current_timestamp(6)),
(NULL, 'Keith Sweat', current_timestamp(6), current_timestamp(6)),
(NULL, 'Lil\' Wayne', current_timestamp(6), current_timestamp(6)),
(NULL, 'Madonna', current_timestamp(6), current_timestamp(6)),
(NULL, 'Michael Jackson', current_timestamp(6), current_timestamp(6)),
(NULL, 'Nas', current_timestamp(6), current_timestamp(6)),
(NULL, 'Nelly Furtado', current_timestamp(6), current_timestamp(6)),
(NULL, 'Phil Collins', current_timestamp(6), current_timestamp(6)),
(NULL, 'R. Kelly', current_timestamp(6), current_timestamp(6)),
(NULL, 'Redman', current_timestamp(6), current_timestamp(6)),
(NULL, 'Rick Ross', current_timestamp(6), current_timestamp(6)),
(NULL, 'Rihanna', current_timestamp(6), current_timestamp(6)),
(NULL, 'Sade', current_timestamp(6), current_timestamp(6)),
(NULL, 'Sean Paul', current_timestamp(6), current_timestamp(6)),
(NULL, 'Simply Red', current_timestamp(6), current_timestamp(6)),
(NULL, 'Snoop Dogg', current_timestamp(6), current_timestamp(6)),
(NULL, 'T.I.', current_timestamp(6), current_timestamp(6)),
(NULL, 'Taylor Swift', current_timestamp(6), current_timestamp(6)),
(NULL, 'The Game', current_timestamp(6), current_timestamp(6)),
(NULL, 'The Notorious B.I.G.', current_timestamp(6), current_timestamp(6)),
(NULL, 'The Weeknd', current_timestamp(6), current_timestamp(6)),
(NULL, 'Tim McGraw', current_timestamp(6), current_timestamp(6)),
(NULL, 'U2', current_timestamp(6), current_timestamp(6)),
(NULL, 'UB40', current_timestamp(6), current_timestamp(6)),
(NULL, 'Usher', current_timestamp(6), current_timestamp(6)),
(NULL, 'Vybz Kartel', current_timestamp(6), current_timestamp(6));

CREATE TABLE playlists
(
	playlist_id INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    playlist VARCHAR(70) UNIQUE NOT NULL,
    create_date TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
    end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp)
)
WITH SYSTEM VERSIONING;

INSERT INTO
`playlists` (`playlist_id`, `playlist`, `create_date`, `last_update`)
VALUES
(NULL, '00s', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Alternative', current_timestamp(6), current_timestamp(6)),
(NULL, '00s British', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Covers', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Dance', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Dancehall', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Electronic', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Female Vocalists', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Folk-Pop', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Funk', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Hip Hop', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Hip-Hop', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Hiphop', current_timestamp(6), current_timestamp(6)),
(NULL, '00s House', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Indie', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Lovers Rock', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Pop', current_timestamp(6), current_timestamp(6)),
(NULL, '00s R&B', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Rap', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Reggae', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Reggae Fusion', current_timestamp(6), current_timestamp(6)),
(NULL, '00s RnB', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Rock', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Soca', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Soul', current_timestamp(6), current_timestamp(6)),
(NULL, '00s Trap', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Alternative', current_timestamp(6), current_timestamp(6)),
(NULL, '10s British', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Covers', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Dance', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Dancehall', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Electronic', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Female Vocalists', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Folk-Pop', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Funk', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Hip Hop', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Hip-Hop', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Hiphop', current_timestamp(6), current_timestamp(6)),
(NULL, '10s House', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Indie', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Lovers Rock', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Pop', current_timestamp(6), current_timestamp(6)),
(NULL, '10s R&B', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Rap', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Reggae', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Reggae Fusion', current_timestamp(6), current_timestamp(6)),
(NULL, '10s RnB', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Rock', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Soca', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Soul', current_timestamp(6), current_timestamp(6)),
(NULL, '10s Trap', current_timestamp(6), current_timestamp(6)),
(NULL, '112', current_timestamp(6), current_timestamp(6)),
(NULL, '1958', current_timestamp(6), current_timestamp(6)),
(NULL, '1968', current_timestamp(6), current_timestamp(6)),
(NULL, '1974', current_timestamp(6), current_timestamp(6)),
(NULL, '1977', current_timestamp(6), current_timestamp(6)),
(NULL, '1977 Disco', current_timestamp(6), current_timestamp(6)),
(NULL, '1977 RnB', current_timestamp(), current_timestamp()), (NULL, '1980', current_timestamp(), current_timestamp()),
(NULL, '1981', current_timestamp(), current_timestamp()), (NULL, '1981 RnB', current_timestamp(), current_timestamp()), (NULL, '1981 Soul', current_timestamp(), current_timestamp()),
(NULL, '1982', current_timestamp(), current_timestamp()), (NULL, '1982 Pop', current_timestamp(), current_timestamp()), (NULL, '1982 R&B', current_timestamp(), current_timestamp()),
(NULL, '1983', current_timestamp(), current_timestamp()), (NULL, '1984', current_timestamp(), current_timestamp()), (NULL, '1984 Pop', current_timestamp(), current_timestamp()),
(NULL, '1984 RnB', current_timestamp(), current_timestamp()), (NULL, '1984 Soul', current_timestamp(), current_timestamp()), (NULL, '1985', current_timestamp(), current_timestamp()),
(NULL, '1985 Covers', current_timestamp(), current_timestamp()), (NULL, '1985 Pop', current_timestamp(), current_timestamp()), (NULL, '1985 RnB', current_timestamp(), current_timestamp()),
(NULL, '1986', current_timestamp(), current_timestamp()), (NULL, '1986 RnB', current_timestamp(), current_timestamp()), (NULL, '1987', current_timestamp(), current_timestamp()),
(NULL, '1988', current_timestamp(), current_timestamp()), (NULL, '1988 Dance Pop', current_timestamp(), current_timestamp()),  (NULL, '1989', current_timestamp(), current_timestamp()),
(NULL, '1989 African', current_timestamp(), current_timestamp()), (NULL, '1989 Rock', current_timestamp(), current_timestamp()), (NULL, '1989 Soft Rock', current_timestamp(), current_timestamp()),
(NULL, '1990', current_timestamp(), current_timestamp()), (NULL, '1991', current_timestamp(), current_timestamp()), (NULL, '1991 R&B', current_timestamp(), current_timestamp()),
(NULL, '1991 RnB', current_timestamp(), current_timestamp()), (NULL, '1992', current_timestamp(), current_timestamp()), (NULL, '1992 Dancehall', current_timestamp(), current_timestamp()),
(NULL, '1992 RnB', current_timestamp(), current_timestamp()), (NULL, '1993', current_timestamp(), current_timestamp()), (NULL, '1993 Hip Hop', current_timestamp(), current_timestamp()),
(NULL, '1993 Hip-Hop', current_timestamp(), current_timestamp()), (NULL, '1993 Rap', current_timestamp(), current_timestamp()), (NULL, '1993 R&B', current_timestamp(), current_timestamp()),
(NULL, '1993 RnB', current_timestamp(), current_timestamp()), (NULL, '1994', current_timestamp(), current_timestamp()), (NULL, '1994 Hip Hop', current_timestamp(), current_timestamp()),
(NULL, '1994 RnB', current_timestamp(), current_timestamp()), (NULL, '1994 Soul', current_timestamp(), current_timestamp()), (NULL, '1995', current_timestamp(), current_timestamp()),
(NULL, '1995 Hip Hop', current_timestamp(), current_timestamp()), (NULL, '1995 Pop', current_timestamp(), current_timestamp()), (NULL, '1995 RnB', current_timestamp(), current_timestamp()),
(NULL, '1996', current_timestamp(), current_timestamp()), (NULL, '1996 American', current_timestamp(), current_timestamp()), (NULL, '1996 Hip Hop', current_timestamp(), current_timestamp()),
(NULL, '1996 Pop', current_timestamp(), current_timestamp()), (NULL, '1996 Reggae', current_timestamp(), current_timestamp()), (NULL, '1996 RnB', current_timestamp(), current_timestamp());

CREATE TABLE pages
(
	page_id INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    page VARCHAR(70) UNIQUE NOT NULL,
    create_date TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
    end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp)
)
WITH SYSTEM VERSIONING;

CREATE TABLE tracks
(
	track_id INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    track VARCHAR(70) UNIQUE NOT NULL,
    create_date TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
    end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
    PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp)
)
WITH SYSTEM VERSIONING;




INSERT INTO
	`tracks` (`track_id`, `track`)
	VALUES
	(NULL, 'Right On!'), (NULL, 'Can\'t Get Enough!'), (NULL, 'Lazy'), (NULL, 'Touch Me'), (NULL, 'Make Luv');


SELECT * FROM playlists ORDER BY RAND() LIMIT 1;