

/***Number of Accidents in Day of Week ***/
select Day_of_Week,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Day_of_Week
order by count(Accident_Index) desc

/***Total Accidents in Urban And  Rural***/
Select Urban_or_Rural_Area,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Urban_or_Rural_Area
order by count(Accident_Index) desc

/*** ***/

Select Urban_or_Rural_Area,count(Accident_Index),Day_of_Week
from Portfoli.dbo.Accident_Information$
group by Urban_or_Rural_Area, Day_of_Week
order by count(Accident_Index) desc

/***Highest accidents in Road Surface***/
select Road_Surface_Conditions,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Road_Surface_Conditions
order by count(Accident_Index) desc

/***Number of Casualties respect to road surface ***/
select Road_Surface_Conditions,sum(Number_of_Casualties)
from Portfoli.dbo.Accident_Information$
group by Road_Surface_Conditions
order by sum(Number_of_Casualties) desc

select Speed_limit,count(Number_of_Casualties)
from Portfoli.dbo.Accident_Information$
group by Speed_limit
order by count(Number_of_Casualties) desc

/*** Number of Accidents with respect to Month ***/
select datepart(month,date ) as Month , count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by datepart(month,date )
order by count(Accident_Index) desc


select  Accident_Severity, count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Accident_Severity
order by COUNT(Accident_Index) desc

select Number_of_Vehicles,count(Accident_Severity)
from Portfoli.dbo.Accident_Information$
group by Number_of_Vehicles
order by count(Accident_Severity) desc

--- Number of Casualties with respect to the Number of Accidents
select Number_of_Casualties,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Number_of_Casualties
order by count(Accident_Index) desc

--- Speed Limit with respect to the Number of Accidents
select Speed_limit,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Speed_limit
order by count(Accident_Index) desc

--- Number of Vehicles with respect to Number of Accidents
select Number_of_Vehicles,count(Accident_Index)
from Portfoli.dbo.Accident_Information$
group by Number_of_Vehicles
order by count(Accident_Index) desc


