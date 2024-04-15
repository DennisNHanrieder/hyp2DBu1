-- Erstelle die Datenbank "QuizQuest"
CREATE DATABASE IF NOT EXISTS QuizQuest;

-- Nutze die erstellte Datenbank
USE QuizQuest;

-- Erstelle die Tabelle "User"
CREATE TABLE IF NOT EXISTS User (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

-- Erstelle die Tabelle "Game"
CREATE TABLE IF NOT EXISTS Game (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Description TEXT,
    Category VARCHAR(50), 
    Difficulty ENUM('easy', 'medium', 'hard'),
    Status ENUM('private', 'public'),
    JoinCode VARCHAR(10) NOT NULL,
    StartedAt DATETIME,
    ClosedAt DATETIME,
    CreaterID INT ,
    FOREIGN KEY (CreaterID) REFERENCES User(ID)
);

-- Erstelle die Tabelle "Question"
CREATE TABLE IF NOT EXISTS Question (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Question TEXT NOT NULL,
    Image VARCHAR(255),
    Subcategory VARCHAR(50),
    GameID INT,
    FOREIGN KEY (GameID) REFERENCES Game(ID)
);

-- Erstelle die Tabelle "Answer"
CREATE TABLE IF NOT EXISTS Answer (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Text TEXT NOT NULL,
    isCorrect BOOLEAN,
    QuestionID INT,
    FOREIGN KEY (QuestionID) REFERENCES Question(ID)
);
