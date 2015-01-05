/*
Q5. Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. 
*/

select Reviewer.name, Movie.title, Rating.stars, Rating.ratingDate
from Movie, Reviewer, Rating
where Movie.mID = Rating.mID and Reviewer.rID = Rating.rID
order by Reviewer.name, Movie.title, Rating.stars