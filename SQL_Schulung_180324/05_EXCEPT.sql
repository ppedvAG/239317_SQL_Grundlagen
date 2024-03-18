USE Northwind
-- INTERSECT / EXCEPT -- Vergleicht Abfrageergebnisse von mehr als einer Abfrage

-- INTERSECT = Schnittmenge (gleiche Datens�tze) zweier Abfragen
SELECT * FROM Customers -- => 91 Rows
INTERSECT
SELECT * FROM Customers -- => 11 Rows
WHERE Country = 'Germany'

-- EXCEPT = "Zeige mir alle Datens�tze aus Abfrage 1, die NICHT ebenfalls in Abfrage 2
--			 auftauchen
SELECT * FROM Customers -- => 91 Rows
EXCEPT
SELECT * FROM Customers -- => 11 Rows
WHERE Country = 'Germany'