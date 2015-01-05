/*
Q7. For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title. 
*/

select title, stars
from Movie, (select Movie.mID, stars
              from Movie, Rating
              where Movie.mID = Rating.mID
              except
              select R1.mID, R1.stars
              from Rating R1, Rating R2
              where R1.mID = R2.mID
              and R1.stars < R2.stars) Stars
where Movie.mID = Stars.mID
order by title;