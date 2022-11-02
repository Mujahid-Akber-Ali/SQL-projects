select * from chicagocensusdata
select * from chicagocrimedata
select * from chicagopublicschools

## Performing advance SQL

## Performing left join and getting data from chicagocensusdata and chicagopublicschools where hardship index = 8
select cps.NAME_OF_SCHOOL, cps.AVERAGE_STUDENT_ATTENDANCE, cd.COMMUNITY_AREA_NAME, cd.HARDSHIP_INDEX
from chicagopublicschools as cps
left outer join chicagocensusdata as cd
on cps.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
where cd.HARDSHIP_INDEX = 98

## Performing left join and getting data from chicagocensusdata and chicagocrimedata where locaion is School
select ccd.CASE_NUMBER, ccd.PRIMARY_TYPE, cd.COMMUNITY_AREA_NAME, ccd.LOCATION_DESCRIPTION
from chicagocrimedata as ccd
left outer join chicagocensusdata as cd
on ccd.COMMUNITY_AREA_NUMBER = cd.COMMUNITY_AREA_NUMBER
where ccd.LOCATION_DESCRIPTION like '%SCHOOL%'



