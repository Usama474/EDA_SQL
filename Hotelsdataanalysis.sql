
with hotels as (
select * from project.dbo.['2019$']
union
select * from project.dbo.['2020$']
union
select * from project..['2018$']
)

--Is hotel revenue growing by year?--

--select sum((stays_in_weekend_nights+stays_in_week_nights)*adr) as revenue, arrival_date_year, hotel from hotels
--group by arrival_date_year, hotel

--left join--
 select * from hotels right join dbo.[market_segment$] on hotels.market_segment = market_segment$.market_segment
 left join dbo.meal_cost$ on meal_cost$.meal= hotels.meal