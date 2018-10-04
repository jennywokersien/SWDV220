--1.
select productCode,ProductName, ListPrice, DiscountPercent
from Products
order by ListPrice desc;

--2.
select LastName + ', ' + FirstName as FullName
from Customers
--where LastName > 'M'
--where LastName like '[M-Z]%'
where LastName between 'M' and 'ZZ'
order by LastName asc

--3.
select ProductName, ListPrice, DateAdded
from Products
where ListPrice > 500 and ListPrice < 2000
order by DateAdded desc

--4. 
select ProductName, ListPrice, DiscountPercent,
	(ListPrice * DiscountPercent / 100) as DiscountAmount,
	--(ListPrice * DiscountPercent * .01) as DiscountAmount2
	(ListPrice - (ListPrice * DiscountPercent / 100)) as DiscountPrice
from Products
order by DiscountPrice desc

--5.
select ItemID, ItemPrice, DiscountAmount, Quantity,
	(ItemPrice * Quantity) as PriceTotal,
	(DiscountAmount * Quantity) as DiscountTotal,
	((ItemPrice - DiscountAmount) * Quantity) as ItemTotal
from OrderItems
where (ItemPrice - DiscountAmount) * Quantity > 500
order by ItemTotal desc

--6.
select OrderID, OrderDate, ShipDate
from Orders
