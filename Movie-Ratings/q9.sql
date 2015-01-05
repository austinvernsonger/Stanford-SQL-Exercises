/*
Q2. Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Don't just calculate the overall average rating before and after 1980.) 
*/

select avg(bef-aft)
from
  (select aft
   from
     (select avg(stars) as aft,
             year
      from Movie
      join Rating using(mID)
      group by title) T
   where year > 1980) T1,
  (select bef
   from
     (select avg(stars) as bef,
             year
      from Movie
      join Rating using(mID)
      group by title) T
   where year < 1980) T2;
