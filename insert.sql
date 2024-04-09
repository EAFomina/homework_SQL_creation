INSERT INTO performer(pseudonym) VALUES
('Gorillaz'),
('Mr. Kitty'),
('AURORA'),
('Rihanna'),
('Eminem'),
('Blue October'),
('Passenger'),
('Birdy'),
('Imagine Dragons');

INSERT INTO genre(name) VALUES
('авторская песня'),
('альтернативный рок'),
('альтернативная музыка'),
('инди-поп'),
('инди-фолк'),
('регги'),
('фолк-рок'),
('фолктроника'),
('хип-хоп'),
('электроника'),
('synthwave');

INSERT INTO album(title, release_year) VALUES
('Plastic Beach', 2010),
('Time', 2014),
('The Gods We Can Touch', 2022),
('Unapologetic', 2012),
('Recovery', 2010),
('This is What I Live For', 2020),
('Young as the Morning Old as the Sea', 2016),
('Beautiful Lies', 2016),
('Night Visions', 2013),
('Mercury - Act 1', 2021);

INSERT INTO soundtrack(title, duration, album_id) VALUES
('Rhinestone Eyes', 200, 1),
('Broken', 197, 1),
('Black Truth', 227, 2),
('After Dark', 257, 2),
('Cure For Me', 201,3),
('Diamonds', 225, 4),
('Love The Way You Lie', 263, 5),
('Oh My My', 190, 6),
('Completely', 235, 6),
('Beautiful Birds (feat. Birdy)', 213, 7),
('When We Were Young', 280, 7),
('Take My Heart', 251, 8),
('My Fault', 175, 9),
('My Life', 224, 10);

INSERT INTO collection(name, release_year) VALUES
('The Singles Collection 2001-2011', 2011),
('My Own Collection', 2020),
('Halloween 2022', 2021),
('Some Songs You Remember', 2019),
('Good Mood', 2018);

INSERT INTO genre_performer(genre_id, performer_id) VALUES
(1, 7),
(2, 1),
(2, 6),
(2, 9),
(3, 3),
(4, 3),
(4, 8),
(4, 9),
(5, 7),
(5, 8),
(6, 4),
(7, 7),
(8, 3),
(9, 4),
(9, 5),
(10, 1),
(11, 2);

INSERT INTO album_performer(album_id, performer_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 9);

INSERT INTO soundtrack_collection(soundtrack_id, collection_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(5, 3),
(6, 2),
(6, 4),
(7, 4),
(8, 2),
(8, 5),
(9, 2),
(10, 5),
(11, 2),
(11, 5),
(12, 2),
(13, 2),
(14, 5);