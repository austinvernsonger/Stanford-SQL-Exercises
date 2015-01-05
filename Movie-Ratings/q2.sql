/*
Q2. Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. 
*/

select distinct Movie.year 
from Movie, Rating
where Movie.mID = Rating.mID and Rating.stars >= 4;