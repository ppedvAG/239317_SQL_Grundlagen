USE Northwind

-- Subqueries

/*
	- Subqueries m�ssen eigenst�ndig und fehlerfrei ausf�hrbar sein
	- K�nnen auch �berall in jede andere Abfrage eingebaut werden (wenn es Sinn macht)
	- Abfragen werden "von innen nach au�en" der Reihe nach ausgef�hrt
*/

SELECT * FROM Orders
WHERE Freight > (SELECT AVG(FREIGHT) FROM Orders) -- 78,2442

-- nach unterabfrage steht dann das ergebnis der Unterabfrage dann so da (bildlich)
SELECT * FROM Orders
WHERE Freight > 78.2442

-- 1. Schreibe eine Abfrage, um die Produktliste
-- (ID, Name, St�ckpreis) mit einem �berdurchschnittlichen Preis zu erhalten
SELECT ProductID, ProductName, UnitPrice FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)
Order BY UnitPrice