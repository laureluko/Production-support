#Laurel Uko SQL Finance Module 1#

USE finance_support;
#Step 1
select * from contract; 
select * from fix; 
select * from instrument; 
select * from mic; 
select * from product; 
#Step 2
select tag, value, concat(tag, "=", value) as "TagValue", descr
    from fix;
#Step 3
select * from orders;
#Step 4
describe orders;
describe instrument;  
#Step 5
select side, orders.* from orders;
#Step 6
select side as "buysell", orders.* from  orders;
#Step 7
select 
    orderid, instrument, price, orderqty, cumqty,
    price*orderqty as DollarValue,
    cumqty/orderqty*100 as PercentageDone
    from orders;
#Step 8
select 2, 3, 2*3 from orders;
#Step 9
SELECT ABS(-243.6); 
SELECT 10 DIV 2;
SELECT RAND(); 
SELECT 1,
    abs(-42),
    abs(42),
    exp(1),
    log(2,32),
    round(log(2,32)),
    power(10,6) 
    from dual;
#Step 10

