USE Northwind

/*

	-- CASE - unterscheiden wir definierte F�lle, die die Ausgabe ab�ndern

*/

SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
END as Pr�fung
FROM Products

-- CASE mit ELSE
SELECT UnitsInStock,
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
	ELSE 'Fehler'
END as Pr�fung
FROM Products

-- UPDATE
UPDATE Customers
SET City =
CASE 
	WHEN Country = 'Germany' THEN 'Berlin'
	WHEN Country = 'France' THEN 'Paris'
	ELSE City
END

SELECT City, Country FROM Customers


-- GROUP BY
SELECT SUM(UnitsInStock),
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
	ELSE 'Fehler!'
END AS Pr�fung
FROM Products
GROUP BY
CASE
	WHEN UnitsInStock < 10 THEN 'Nachbestellen!'
	WHEN UnitsInStock >= 10 THEN 'Passt.'
	ELSE 'Fehler!'
END