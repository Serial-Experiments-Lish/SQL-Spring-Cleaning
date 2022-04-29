CREATE DATABASE shirts_db;
CREATE TABLE shirts (
	shirt_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(24) NOT NULL,
    color VARCHAR(24) NOT NULL,
    shirt_size VARCHAR(6) NOT NULL,
    last_worn INT NOT NULL DEFAULT 0
);
USE shirts_db;
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'green', 'S', 200);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'black', 'M', 10);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('tank top', 'blue', 'S', 50);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'pink', 'S', 0);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'red', 'M', 5);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('tank top', 'white', 'S', 200);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('tank top', 'blue', 'M', 15);

-- First step to get all data. 
SELECT * FROM shirts;

-- Second step to add a purple polo shirt, size M last worn 50 days ago.
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

-- Third step to select all shirts but print out only article and color.
SELECT article, color FROM shirts;

-- Fourth step to select all M shirts and print out everything except shirt_id.
SELECT article, color, shirt_size, last_worn
FROM shirts
WHERE shirt_size = 'M';

-- Fifth step to update all polo shirts size to L. 
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

-- Sixth step to update shirt last worn 15 days ago to zero.
UPDATE shirts
SET last_worn = 0
WHERE shirt_id = 8;

-- Seventh step to update all white shirts and change their size to 'XS' and color to 'off white'
UPDATE shirts
SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';

-- Eighth step to delete all old shirts last worn 200 days ago.
DELETE FROM shirts
WHERE last_worn = 200;

-- Ninth step to delete all tanks because my tastes have changed.
DELETE FROM shirts
WHERE article = 'tank top';

-- Tenth step to delete all shirts because it is serious spring cleaning.
DELETE FROM shirts; 

-- Eleventh step to drop entire shirts table.
DROP TABLE shirts;