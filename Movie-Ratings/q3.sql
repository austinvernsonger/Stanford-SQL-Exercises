/*
Q3. Find the titles of all movies that have no ratings. 
*/

select distinct Movie.title
from Movie, Rating 
where Movie.mID not in (select Rating.mID from Rating)