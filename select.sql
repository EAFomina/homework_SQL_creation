--Задание 2
--Название и продолжительность самого длительного трека.

SELECT title, duration FROM soundtrack WHERE duration = (SELECT MAX(duration) FROM soundtrack);

--Название треков, продолжительность которых не менее 3,5 минут.

SELECT title FROM soundtrack WHERE duration >= 3.5 * 60;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT name FROM collection WHERE release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.

SELECT pseudonym FROM performer WHERE pseudonym NOT LIKE '%% %%';

--Название треков, которые содержат слово «мой» или «my».

SELECT title FROM soundtrack WHERE LOWER(title) LIKE '%%my%%' OR LOWER(title) LIKE '%%мой%%';

--Задание 3
--Количество исполнителей в каждом жанре.

SELECT COUNT(performer_id) performer_num, name genre_name FROM genre g 
JOIN genre_performer gp ON g.genre_id = gp.genre_id 
GROUP BY name;

--Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT COUNT(soundtrack_id) soundtrack_num FROM soundtrack s 
JOIN album a ON s.album_id = a.album_id 
WHERE release_year BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому.

SELECT AVG(duration) avg_tr_duration, a.title album_title FROM soundtrack s 
JOIN album a ON s.album_id = a.album_id 
GROUP BY a.title;

--Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT pseudonym FROM performer p 
JOIN album_performer ap ON p.performer_id = ap.performer_id 
JOIN album a ON ap.album_id = a.album_id 
WHERE pseudonym != (SELECT pseudonym FROM performer p 
JOIN album_performer ap ON p.performer_id = ap.performer_id 
JOIN album a ON ap.album_id = a.album_id 
WHERE release_year = 2020) 
GROUP BY pseudonym;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). Была выбрана Aurora

SELECT name collection_name FROM collection c 
JOIN soundtrack_collection sc ON c.collection_id = sc.collection_id  
JOIN soundtrack s ON s.soundtrack_id = sc.soundtrack_id 
JOIN album_performer ap ON s.album_id = ap.album_id 
JOIN performer p ON p.performer_id = ap.performer_id 
WHERE pseudonym = 'AURORA';