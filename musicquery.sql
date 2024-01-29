use Music

select * from tblmusic

select year, Value_Actual
from tblmusic

select count(column1) from tblmusic

select AVG(Value_Actual) from tblmusic

select distinct * from tblmusic

select top 1 year, Value_Actual
from tblmusic
order by Value_Actual desc

-----------------------------------------------------

select format,YEAR, value_actual
from tblmusic
order by format, Value_Actual desc

select format, max(value_actual) as Highest_Value_actual
from tblmusic
group by format

SELECT 
    year, 
    CONCAT(
        CAST(SUM(value_actual) * 100.0 / (SELECT SUM(Value_Actual) FROM tblmusic) AS DECIMAL(10, 2)),
        '%'
    ) AS Percentage_Of_value_actual,
    SUM(value_actual) AS total_value_actual
FROM 
    tblmusic
GROUP BY 
    year;


select Format, sum(Value_Actual) as Total_Value_Actual
from tblmusic
where Year=2018
group by Format

select year,Metric, sum(value_actual)
from tblmusic
group by Year, Metric

-------------------------------------------------------------

