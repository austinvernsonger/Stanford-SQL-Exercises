/*
Q3. For all movies that have an average rating of 4 stars or higher, add 25 to the release year. (Update the existing tuples; don't insert new tuples.) 
*/

Update Movie
Set year=year+25
Where mID in (
    select Movie.mID
    from Movie, Rating
    where Movie.mID = Rating.mID
    group by Movie.mID
    having avg(stars) >=4)