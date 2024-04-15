# Beschreibung
Der erste Teil an der Arbeit mit QuizQuest beschäftigt sich damit, eine entsprechende Datenbank aufzubauen, die alle relevanten Informationen verwaltet. In der ersten Übungseinheit haben wir uns bereits mit dem groben Aufbau der Datenbank bzw. der Tabellen beschäftigt. In dieser Einheit werden wir darauf aufbauen, diese erweitern und in weiterer Folge auch eine Manipulation der Daten durchführen. 

Disclaimer: Im Zuge dieser Übung wird ein erster Entwurf eines Datenmodells angeführt. Der Prozess der Datenmodellierung (im Kontext von Normalformen und Beziehungen) wird erst Mitte April genauer besprochen. Bis dahin wird mit der vorgegebenen Datenstruktur gearbeitet.

# Datenstruktur
Folgende Entitäten (= Tabellen) sind in einer ``.sql-Datei`` bereits definiert: 

- User
- Game
- Question
- Answer

# Aufgaben
  
Die nachfolgenden Aufgaben sind Teil der ersten Gruppenaufgabe. In der Übungseinheit wird mit der Bearbeitung begonnen. Alle nachfolgenden Schritte sind dabei auszuführen. Im Teil 8 wird behandelt wie die Datei korrekt exportiert wird. Der vollständige Export ist dabei abzugeben. 

Achtung: Alle SQL-Befehle sollen händisch geschrieben werden. Die Verwendung von Benutzeroberflächen zur Erstellung ist in dieser Aufgabe nicht vorgesehen!

**Alle Aufgaben sollen in Ihr Team-Repository gepusht werden!**

# Teil 1: Importieren der Datenstruktur
Der erste Schritt ist der Import der bereits vorhandenen [ersten Datenbankstruktur](https://raw.githubusercontent.com/xstone93/fhooe-hyp2-ue2/main/src/quiz.sql). Dies kann zwar recht bequem über die Benutzeroberfläche von PhpMyAdmin gemacht werden, in einem ersten Schritt werden wir dies allerdings einmal händisch über Docker machen. 

Dazu muss eine neue Kommandozeile (cmd) geöffnet werden:

``$ docker exec -i mariadb mariadb -uhypermedia -pgeheim < quiz.sql``

**Hinweis**: Falls Sie noch einen Docker-Container aus dem vergangenen Semester laufen haben, muss anstelle des Users ``hypermedia`` der User ``onlineshop`` verwendet werden (d. h. ``$ docker exec -i mariadb mariadb -uonlineshop -pgeheim < quiz.sql``).

Auf diese Weise wird die Datei quiz.sql an die Datenbank weitergeleitet und von dieser importiert. 

# Teil 2: Anlage neuer Tabellen (2 Punkt)
Es soll eine zusätzliche Tabelle mit den Namen PlayerAnswer angelegt werden. Die Tabelle soll folgende Attribute haben:

**ID**
- UserID
- QuestionID
- AnswerID
- Points

Legen Sie diese Tabelle in der Kommandozeile an, ohne der Verwendung von PhpMyAdmin oder ähnlichen Tools. 

# Teil 3: Erstellen von zwei Quizzes (4 Punkte)
Es sollen zwei Quizzes angelegt werden, eines mit vorgegebenen Werten und ein von Ihnen frei gewähltes Quiz. Das von Ihnen gewählte Quiz kann aus einem Bereich Ihrer Wahl stammen, wichtig ist allerdings, dass mindestens fünf Fragen gewählt werden und pro Frage zwischen zwei und vier Antworten verknüpft werden. 

**Quiz 1: Oberösterreich**

Es soll ein neues Quiz angelegt werden mit folgenden Daten
Titel: Das große Oberösterreich-Quiz
Kategorie: Geografie
Schwierigkeitsgrad: mittel
Ersteller: User 1
Verfügbarkeitsbeginn: heutiges Datum
Verfügbarkeitsende: 30. April

Zum Quiz sollen insgesamt fünf Fragen mit den jeweils folgenden Antwortmöglichkeiten hinzugefügt werden.

Welcher Fluss fließt durch die Landeshauptstadt Linz?
a) Donau [korrekt]
b) Inn
c) Enns
d) Traun

Welcher der folgenden Seen liegt nicht in Oberösterreich?
a) Attersee
b) Traunsee
c) Mondsee
d) Neusiedler See [korrekt]

Welcher Nationalpark befindet sich teilweise in Oberösterreich?
a) Nationalpark Gesäuse
b) Nationalpark Hohe Tauern
c) Nationalpark Donau-Auen
d) Nationalpark Kalkalpen [korrekt]

Welche der folgenden Städte ist keine Bezirkshauptstadt in Oberösterreich?
a) Wels
b) Steyr
c) Gmunden
d) Melk [korrekt]

Welcher der folgenden Berge ist der höchste in Oberösterreich?
a) Dachstein
b) Großer Priel [korrekt]
c) Traunstein
d) Grimming

**Quiz 2: Ihr Quiz**

Hier sind sie in der Umsetzung gänzlich frei!

# Teil 4: Importieren von Spieldaten
Importieren Sie [Spieldaten](https://raw.githubusercontent.com/xstone93/fhooe-hyp2-ue2/main/src/PlayerAnswer-data.sql) für das Oberösterrich-Quiz mithilfe der Kommandozeile. 

# Teil 5: Abfragen von Daten (5 Punkte)
Folgende Abfragen sollen folgende fünf Abfragen durchgeführt werden:

- Abfrage 1: Alle Spiele anzeigen, die von Benutzern aus Österreich (AUT) erstellt wurden.
- Abfrage 2: Pro Spiel sollen die Anzahl der jeweiligen Fragen angezeigt werden (Spielname und Fragenanzahl).
- Abfrage 3: Gesamtpunkte der Spieler:innen anzeigen; Absteigend sortiert nach der Punkteanzahl. 
- Abfrage 4: Liste aller Spieler:innen anzeigen, die an einem bestimmten Spiel (z. B. dem Oberösterreichquiz) teilgenomme haben.
- Abfrage 5: Anzeigen einer Liste aller Spieler:innen und deren korrekt beantwortete Fragen in einem bestimmten Spiel.

# Teil 6: Bearbeiten von Daten (2 Punkt)
Es sollen im Oberösterreichquiz zwei Änderungen durchgeführt werden. Alle Anpassungen sollen über SQL durchgeführt werden.

- Beim User ``max`` soll die Antwort der Frage 1 von Donau (ID 1) auf Inn (ID 2) geändert werden, zusätzlich sollen dadurch auch die Punkte von 10 auf 0 geändert werden.
- Die Category des Oberösterreich-Quiz soll von ``Geografie`` auf ``Geo`` geändert werden.

# Teil 7: Definieren einer View (3 Punkte)
Eine SQL-View ist eine virtuelle Tabelle, die aus dem Ergebnis einer SQL-Abfrage erstellt wird und als eine benannte Tabelle behandelt werden kann, um den Zugriff auf Daten zu vereinfachen und zu steuern. Sie bietet eine zusätzliche Abstraktionsebene über den tatsächlichen Daten in der Datenbank und ermöglicht es, komplexe Abfragen zu speichern und wiederzuverwenden.

Es soll eine neue View QuizRanking erstellt werden, die alle Spieler:innen pro Quiz anzeigt, allerdings nach Quiztitel und Punktestand absteigend sortiert.

[Hier](https://www.w3schools.com/mysql/mysql_view.asp) finden Sie weitere Informationen zum Definieren von Views.

# Teil 8: Abgabe
Eine komplette Datenbank kann - wie im Teil 1 - mithilfe einer Docker-Shell exportiert werden. Dazu wird das Programm mariadb-dump verwendet. 

``$ docker exec -i mariadb mariadb-dump --user=hypermedia --password=geheim --lock-tables --databases QuizQuest > db.sql``

Folgende Abgaben sollen erfolgen:

1. db.sql → Export der gesamten Datenbankstruktur inklusive aller Werte (= Inhalte) und der View.
2. queries.sql → SQL-Datei die alle fünf Abfragen beinhaltet.

Alle Dateien sollen in ihr Repository gepusht werden. 
