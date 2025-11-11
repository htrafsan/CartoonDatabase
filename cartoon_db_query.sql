/*Sort all Cartoons in alphabetic order*/
select CartoonName
from Main
order by CartoonName


/*Find all Cartoon Name with Relasing Year between 1995 and 2000*/
select CartoonName
from Main
where ReleaseYear between 1995 and 2000


/*Find runtime average of all cartoons*/
select avg (Runtime)
from Main
where CartoonId between 8001 and 8038


/*Show Plot about number 8021 cartoon*/
select Plot
from Main
where CartoonId = '8021'


/*Show all information about the Cartoon ‘Spongebob Squaerepants’*/
select *
from Main
where CartoonName ='Spongebob Squarepants'


/*Show total count of cartoon id with running time of 11 min*/
select count (Runtime)
from Main
where CartoonId between 8001 and 8038 and Runtime  = 11;


/*Show the total count of cartoons that has running time more than 8 min*/
select count (Runtime)
from Main
where Runtime>8


/*Remove duplicates from Location*/
select distinct Location
from Studio