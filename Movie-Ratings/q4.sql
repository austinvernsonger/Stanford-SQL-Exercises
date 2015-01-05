/*
Q4. Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. 
*/

select Reviewer.name
from Reviewer, Rating
where Reviewer.rID = Rating.rID and Rating.ratingDate is null;