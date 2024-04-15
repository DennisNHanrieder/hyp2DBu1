USE QuizQuest;

-- Füge 5 Benutzer hinzu
INSERT INTO User (Username, Password, Country) VALUES
('max', 'password1', 'AUT'),
('marie', 'password2', 'USA'),
('marlene', 'password3', 'AUT');	

-- Füge das neue Quiz hinzu
INSERT INTO Game (Title, Description, Category, Difficulty, Status, CreaterID, StartedAt, ClosedAt, JoinCode)
VALUES ('Das große Oberösterreich-Quiz', 'Teste dein Wissen über Oberösterreich.', 'Geografie', 'easy', 'public', 1, NOW(), '2024-04-30', "OOEQZ");

-- Frage 1: Welcher Fluss fließt durch die Landeshauptstadt Linz?
INSERT INTO Question (Question, Subcategory, GameID) 
VALUES ('Welcher Fluss fließt durch die Landeshauptstadt Linz?', 'Geografie', 1);

-- Antworten für Frage 1
INSERT INTO Answer (Text, isCorrect, QuestionID) 
VALUES ('Donau', TRUE, LAST_INSERT_ID()),
       ('Inn', FALSE, LAST_INSERT_ID()),
       ('Enns', FALSE, LAST_INSERT_ID()),
       ('Traun', FALSE, LAST_INSERT_ID());

-- Frage 2: Welcher der folgenden Seen liegt nicht in Oberösterreich?
INSERT INTO Question (Question, Subcategory, GameID) 
VALUES ('Welcher der folgenden Seen liegt nicht in Oberösterreich?', 'Geografie', 1);

-- Antworten für Frage 2
INSERT INTO Answer (Text, isCorrect, QuestionID) 
VALUES ('Attersee', FALSE, LAST_INSERT_ID()),
       ('Traunsee', FALSE, LAST_INSERT_ID()),
       ('Mondsee', FALSE, LAST_INSERT_ID()),
       ('Neusiedler See', TRUE, LAST_INSERT_ID());

-- Frage 3: Welcher Nationalpark befindet sich teilweise in Oberösterreich?
INSERT INTO Question (Question, Subcategory, GameID) 
VALUES ('Welcher Nationalpark befindet sich teilweise in Oberösterreich?', 'Geografie', 1);

-- Antworten für Frage 3
INSERT INTO Answer (Text, isCorrect, QuestionID) 
VALUES ('Nationalpark Gesäuse', FALSE, LAST_INSERT_ID()),
       ('Nationalpark Hohe Tauern', FALSE, LAST_INSERT_ID()),
       ('Nationalpark Donau-Auen', FALSE, LAST_INSERT_ID()),
       ('Nationalpark Kalkalpen', TRUE, LAST_INSERT_ID());

-- Frage 4: Welche der folgenden Städte ist keine Bezirkshauptstadt in Oberösterreich?
INSERT INTO Question (Question, Subcategory, GameID) 
VALUES ('Welche der folgenden Städte ist keine Bezirkshauptstadt in Oberösterreich?', 'Geografie', 1);

-- Antworten für Frage 4
INSERT INTO Answer (Text, isCorrect, QuestionID) 
VALUES ('Wels', FALSE, LAST_INSERT_ID()),
       ('Steyr', FALSE, LAST_INSERT_ID()),
       ('Gmunden', FALSE, LAST_INSERT_ID()),
       ('Melk', TRUE, LAST_INSERT_ID());

-- Frage 5: Welcher der folgenden Berge ist der höchste in Oberösterreich?
INSERT INTO Question (Question, Subcategory, GameID) 
VALUES ('Welcher der folgenden Berge ist der höchste in Oberösterreich?', 'Geografie', 1);

-- Antworten für Frage 5
INSERT INTO Answer (Text, isCorrect, QuestionID) 
VALUES ('Dachstein', FALSE, LAST_INSERT_ID()),
       ('Großer Priel', TRUE, LAST_INSERT_ID()),
       ('Traunstein', FALSE, LAST_INSERT_ID()),
       ('Grimming', FALSE, LAST_INSERT_ID());
