
# Q1) Count the number of Salesperson whose name begin with ‘a’/’A’.
select count(*) as No_of_Salesperson
from SalesPeople 
where Sname like 'a%' or Sname like 'A%'
group by Sname;

# Q2)  Display all the Salesperson whose all orders worth is more than Rs. 2000.
select Sname as Sales_Person_Name, Amt as Amount
from SalesPeople as SP inner join Orders as O
on SP.Snum = O.Snum where Amt > 2000;

# Q3)  Count the number of Salesperson belonging to Newyork.
select count(*) as No_of_Salesperson
from SalesPeople where City = 'Newyork';

# Q4)  Display the number of Salespeople belonging to London and belonging to Paris.
select City, count(*) as No_Of_Salesperon
from SalesPeople where City in ('London', 'Paris')
group by City;

# Q5) Display the number of orders taken by each Salesperson and their date of orders.
select Sname as SalesPersonName, 
count(*) as OrderTaken, Odate as OrderDate
from SalesPeople as SP 
inner join Orders as O on SP.Snum = O.Snum
group by Sname,Odate;
