

--lets get started

--select location, date, total_cases, new_cases, population,life_expectancy, (total_cases/population)*100 as Percentage_cases from covid..deaths where location like '%stat%'
--order by 1, 2


--looking at highest infection rates

--select location, max(total_cases) as HighestInfection, population,
--(max(total_cases/population))*100 as Percentage_cases 
--from covid..deaths where total_cases is not null 
--group by population , location
--order by 4 desc

--Now Lets do it Continent Wise

--select continent,  sum(total_cases) as TotalInfection,
--(sum(total_cases)/sum(population))*100 as Percentage_cases 
--from covid..deaths where total_cases is not null 
--and continent is not null
--group by continent
--order by 3 desc

--Now Continent wise Total Infections--


--select continent, sum(total_cases) as TotalInfection from covid..deaths$
--where total_cases is not null 
--and continent is not null
--group by continent
--order by 2  desc

--Top N Countries by Infection Rates--

--select top 10 location, sum(total_cases) as Total_Infection from covid..deaths$ where continent is not null
--group by location order by 2 desc

--Global Number by date

--select date, sum(total_cases) as TotalCases, sum(new_cases) as NewCasesReportedToday, 
--(sum(new_cases)/sum(total_cases))*100 as DailyPercentageIncrease from 
--covid..deaths$ where total_cases is not null group by date
--order by 1

--Now Lets Join the two tables

----select * from covid..deaths$ join covid..Vaccinations$ on deaths$.total_deaths_per_million =Vaccinations$.excess_mortality_cumulative

--Working with CTE

--With Table1 as(
--select date, sum(total_cases) as TotalCases, sum(new_cases) as NewCasesReportedToday, 
--(sum(new_cases)/sum(total_cases))*100 as DailyPercentageIncrease from 
--covid..deaths$ where total_cases is not null group by date

--)
--select * from Table1

--Create View

--Create View Myview as 
--(select date, sum(total_cases) as TotalCases, sum(new_cases) as NewCasesReportedToday, 
--(sum(new_cases)/sum(total_cases))*100 as DailyPercentageIncrease from 
--covid..deaths$ where total_cases is not null group by date
--)



