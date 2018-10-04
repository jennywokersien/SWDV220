--wk2day2
use MyGuitarShop
go
--1.
select ListPrice,
	CAST(ListPrice AS decimal(9,1)) AS PriceFormatted,
	TRY_CONVERT(int, ListPrice) AS PriceConverted,
	CAST (ListPrice AS int) AS PriceCastInt
from Products

--2.
select DateAdded
	,CAST(DateAdded AS DATE) AS DateAddedDate
	,CAST(DateAdded AS TIME) AS DateAddedTime -- OR TIME(4)
	,CAST(DateAdded AS CHAR(7)) AS DateAddedChar
from Products

--3.
select OrderDate
	,TRY_CONVERT(char, OrderDate, 101) AS OrderDateMDCY
	,TRY_CONVERT(char, OrderDate, 100) AS OrderDateTime12
	,TRY_CONVERT(char, OrderDate, 8) AS OrderTime24
	,TRY_CONVERT(char, OrderDate, 14) AS OrderTime24
	,TRY_CONVERT(char, OrderDate, 114) AS OrderTime24
from Orders