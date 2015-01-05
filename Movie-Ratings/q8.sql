/*
Q8. For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title. 
*/

select title, mx-mn as res
from (select title,
          max(stars) as mx,
          min(stars) as mn
     from Movie
     join Rating using(mID)
     group by title) T
Order by res desc, title;
