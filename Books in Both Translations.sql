CREATE TABLE local_translations (
         translation_id INT, 
         book_id INT, 
         book_title VARCHAR(100)
     );
     CREATE TABLE international_translations (
         translation_id INT, 
         book_id INT, 
         book_title VARCHAR(100)
     );
     INSERT INTO local_translations VALUES 
         (1, 1, 'The God of Small Things'), 
         (2, 2, 'A Fine Balance'), 
         (3, 3, 'Midnights ''s'' Children');
     INSERT INTO international_translations VALUES 
         (1, 1, 'The God of Small Things'), 
         (2, 4, 'The White Tiger'), 
         (3, 2, 'A Fine Balance');



SELECT * FROM LOCAL_TRANSLATIONS
	
SELECT * FROM INTERNATIONAL_TRANSLATIONS

/*
List all books that have been translated into both local and international languages.

*/

SELECT book_title 
FROM local_translations
INTERSECT
SELECT book_title 
FROM international_translations;


SELECT L.BOOK_TITLE
FROM LOCAL_TRANSLATIONS L
JOIN INTERNATIONAL_TRANSLATIONS I
ON L.TRANSLATION_ID = I.TRANSLATION_ID
AND I.BOOK_ID = L.BOOK_ID

