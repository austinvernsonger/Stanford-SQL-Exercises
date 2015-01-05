/*
Q2. Insert 5-star ratings by James Cameron for all movies in the database. Leave the review date as NULL. 
*/

Insert into Rating
Select distinct 207, mID, 5, NULL
from Movie;