CREATE Database SalesDB;
Use SalesDB;

Create Table SalesData (
OrderID INT,
Date Date,
Product Varchar(100),
Category Varchar(50),
Region Varchar(50),
Sales Decimal (10,2),
Quantity INT,
Profit Decimal (10,2));

SELECT * FROM SalesData LIMIT 10;

--- Total Sales, Profit Quantity
Select
 Sum(Sales) As Total_Sales,
 Sum(Profit) As Total_Profit,
 Sum(Quantity) As Total_Quantity
 From SalesData;
 
 --- Sales by Region
 Select Region, Sum(Sales) As Region_Sales
 From SalesData
 Group By Region;

 --- Sales by Product Category
 Select Category, Sum(Sales) As Category_sales
 From SalesData
 Group BY Category;
 
   --- Daily Sales Trend
   Select Date, Sum(Sales) As Daily_Sales
   From SalesData
   Group By Date
   Order By Date;
   
   --- Top 5 Selling Products
   Select Product, Sum(Sales) As Product_Sales
   From SalesData
   Group By Product
   Order By Product_sales DESC
   Limit 5;
   
  
  