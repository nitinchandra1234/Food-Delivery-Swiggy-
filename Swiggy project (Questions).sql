select * from swiggy

-- Area-wise distribution of restaurant
select Location, count(*)
from swiggy
group by 1
order by 2 desc

-- Which is cheapest and expensive restaurant for each types of cuisine.

With CTE as(Select *, 'Chinese' as Cuisines_name from swiggy where Cuisines like '%Chinese%' Order By 4 desc limit 1),
CTE1 as (Select *, 'Chinese' as Cuisines_name from swiggy where Cuisines like '%Chinese%' Order By 4 limit 1),
CTE2 as (Select *, 'Snacks' as Cuisines_name from swiggy where Cuisines like '%Snacks%' Order By 4 desc limit 1),
CTE3 as (Select *, 'Snacks' as Cuisines_name from swiggy where Cuisines like '%Snacks%' Order By 4 limit 1),
CTE4 as (Select *, 'Beverages' as Cuisines_name from swiggy where Cuisines like '%Beverages%' Order By 4 desc limit 1),
CTE5 as (Select *, 'Beverages' as Cuisines_name from swiggy where Cuisines like '%Beverages%' Order By 4 limit 1),
CTE6 as (Select *, 'Biryani' as Cuisines_name from swiggy where Cuisines like '%Biryani%' Order By 4 desc limit 1),
CTE7 as (Select *, 'Biryani' as Cuisines_name from swiggy where Cuisines like '%Biryani%' Order By 4 limit 1),
CTE8 as (Select *, 'South_Indian' as Cuisines_name from swiggy where Cuisines like '%South_Indian%' Order By 4 desc limit 1),
CTE9 as (Select *,'South_Indian' as Cuisines_name from swiggy where Cuisines like '%South_Indian%' Order By 4 limit 1),
CTE10 as(Select *, 'North_Indian' as Cuisines_name from swiggy where Cuisines like '%North_Indian%' Order By 4 desc limit 1),
CTE11 as(Select *, 'North_Indian' as Cuisines_name  from swiggy where Cuisines like '%North_Indian%' Order By 4 limit 1),
CTE12 as(Select *, 'Desserts' as Cuisines_name from swiggy where Cuisines like '%Desserts%' Order By 4 desc limit 1),
CTE13 as(Select *, 'Desserts' as Cuisines_name from swiggy where Cuisines like '%Desserts%' Order By 4 limit 1),
CTE14 as(Select *, 'Indian' as Cuisines_name from swiggy where Cuisines like '%Indian%' Order By 4 desc limit 1),
CTE15 as(Select *, 'Indian' as Cuisines_name from swiggy where Cuisines like '%Indian%' Order By 4 limit 1)

Select * from CTE
Union 
Select * from CTE1
Union
Select * from CTE2
Union
Select * from CTE3
Union
Select * from CTE4
Union
Select * from CTE5
Union
Select * from CTE6
Union
Select * from CTE7
Union
Select * from CTE8
Union
Select * from CTE9
Union
Select * from CTE10
Union
Select * from CTE11
Union
Select * from CTE12
Union
Select * from CTE13
Union
Select * from CTE14
Union
Select * from CTE15


-- Which location maximum number of restaurant where the `delivery_review_number` is greater than 1000.
select Location, count(*)
from swiggy
where Delivery_review_number >1000
group by 1
order by 2 desc

-- Generate any one interesting insight from the data.

-- Which location maximum number of less rated restaurant.
select Location, count(*) as "Restaurant Count"
from swiggy
where Rating < 4
group by 1
order by 2 desc
-- Area wise cheap and expensive restaurant and their average price.
with x as(
select Location, ﻿Restaurant_Name, Price_for_One, row_number() over (partition by Location order by Price_for_One) as rnk from swiggy)

select Location, ﻿Restaurant_Name, Price_for_One
from x where rnk =1
order by 1

with x as(
select Location, ﻿Restaurant_Name, Price_for_One, row_number() over (partition by Location order by Price_for_One desc) as rnk from swiggy)

select Location, ﻿Restaurant_Name, Price_for_One
from x where rnk =1 
order by 1

select * from swiggy

Select Location, Avg(Price_for_One) from swiggy group by 1
Select Location, Avg(Price_for_one) from swiggy group by 1

-- Number of restaurant for each type of cuisine.
with x as(
select *,
case when Cuisines like '%Chinese%' then 1
else 0 end as 'Chinese'
,case when Cuisines like '%Snacks%' then 1
else 0 end as 'Snacks'
,case when Cuisines like '%Beverages%' then 1
else 0 end as 'Beverages'
,case when Cuisines like '%Biryani%' then 1
else 0 end as 'Biryani'
,case when Cuisines like '%South Indian%' then 1
else 0 end as 'South_Indian'
,case when Cuisines like '%North Indian%' then 1
else 0 end as 'North_Indian'
,case when Cuisines like '%Desserts%' then 1
else 0 end as 'Desserts'
,case when Cuisines like '%Indian%' then 1
else 0 end as 'Indian'
from swiggy)

select sum(Chinese) as Chinese, sum(Snacks) as Snacks, 
sum(Beverages) as Beverages, sum(South_Indian) as South_Indian, sum(North_Indian) as North_Indian, 
sum(Desserts) as Desserts, sum(Indian) as Indian from x
