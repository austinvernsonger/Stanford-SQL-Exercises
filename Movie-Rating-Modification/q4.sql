/*
Q4. Remove all ratings where the movie's year is before 1970 or after 2000, and the rating is fewer than 4 stars. 
*/

Delete from Rating
Where mID in (select distinct Rating.mID
              from Movie, Rating
              where Movie.mID = Rating.mID 
              and (Movie.year < 1970 or Movie.year > 2000))
and stars < 4;