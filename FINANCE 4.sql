#Laurel Uko SQL Finance Module 4

USE finance_support;

SELECT INSERT((SELECT isin FROM instrument LIMIT 1 OFFSET 3), 1, 2, (SELECT ric FROM instrument LIMIT 1 OFFSET 3));
#STEP 1
	SELECT INSERT(
		(SELECT isin FROM instrument LIMIT 1 OFFSET 3), 
		(length((SELECT isin FROM instrument LIMIT 1 OFFSET 3))), 
		(length((SELECT ric FROM instrument LIMIT 1 OFFSET 3))), 
		(SELECT ric FROM instrument LIMIT 1 OFFSET 3)) AS TheResult; 
#STEP 2                
		SELECT ric, isin, sedol, 
		LEFT(ric, 2) AS first2ofRic, 
        LEFT(isin, 2) AS first2ofISIN, 
        LEFT(sedol,2) AS first2ofSedol, 
        RIGHT(ric, 2) AS last2ofRic,
        RIGHT(isin, 2) AS last2ofISIN,
        RIGHT(sedol,2) AS last2ofSedol 
        FROM instrument
        LIMIT 1 
        OFFSET 6; 
#STEP 3        
SELECT ric, isin, sedol, length(ric) AS lengthofric, length(sedol) AS lengthOfSedol, length(isin) AS lengthOfIsin
FROM instrument; 
#STEP 4
SELECT isin, sedol, locate(sedol, isin) AS posOfSedol FROM instrument;
SELECT * FROM orders;
#STEP 5
SELECT clientid, rootordid, orderid, ordstatus, orderqty, REVERSE(instrument.isin) AS reverseInstrument
FROM orders
JOIN
instrument
ON orders.instrument=instrument.id;
#STEP 6
SELECT instrument, isin, strcmp(isin, (SELECT isin FROM instrument WHERE ric='VOD.L')) FROM instrument; 
#STEP 7
SELECT orders.id, clientid, rootordid, parentordid, orderid, instrument.ric, ordstatus, orderqty, cumqty,side 
FROM orders 
JOIN
instrument
ON orders.instrument=instrument.id
WHERE clientid='bob' AND (cumqty=ORDERQTY OR ordstatus=0) 
; 
#STEP 8
select * from fix where regexp_like(descr, 'Short');
#STEP 9