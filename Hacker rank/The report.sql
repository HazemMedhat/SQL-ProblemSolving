-- problem link : https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

select case when 
g.Grade >= 8 then s.Name
else null end as name , g.Grade , s.Mark 
from dbo.Student s , dbo.Grades g
where s.Mark between g.Min_mark and g.Max_mark 
order by g.Grade desc , s.Name 