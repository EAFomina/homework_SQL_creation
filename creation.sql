CREATE TABLE IF NOT EXISTS genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS performer (
    performer_id SERIAL PRIMARY KEY,
    pseudonym VARCHAR(100) NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INTEGER NOT NULL
	);

CREATE TABLE IF NOT EXISTS soundtrack (
    soundtrack_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER REFERENCES album(album_id) NOT NULL
	);

CREATE TABLE IF NOT EXISTS collection (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    release_year INTEGER NOT NULL
	);

CREATE TABLE IF NOT EXISTS genre_performer (
    genre_performer_id SERIAL PRIMARY KEY,
    genre_id INT NOT NULL,
    performer_id INT NOT NULL,
    CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE,
    CONSTRAINT fk_performer FOREIGN KEY(performer_id) REFERENCES performer(performer_id) ON DELETE CASCADE
	);

CREATE TABLE IF NOT EXISTS album_performer (
    album_performer_id SERIAL PRIMARY KEY,
    album_id INT NOT NULL,
    performer_id INT NOT NULL,
    CONSTRAINT fk_album FOREIGN KEY(album_id) REFERENCES album(album_id) ON DELETE CASCADE,
    CONSTRAINT fk_performer FOREIGN KEY(performer_id) REFERENCES performer(performer_id) ON DELETE CASCADE
	);

CREATE TABLE IF NOT EXISTS soundtrack_collection (
    soundtrack_collection_id SERIAL PRIMARY KEY,
    soundtrack_id INT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_soundtrack FOREIGN KEY(soundtrack_id) REFERENCES soundtrack(soundtrack_id) ON DELETE CASCADE,
    CONSTRAINT fk_collection FOREIGN KEY(collection_id) REFERENCES collection(collection_id) ON DELETE CASCADE
	);