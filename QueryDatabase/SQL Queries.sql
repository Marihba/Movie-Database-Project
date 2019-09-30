-- 1.a)
SELECT "firstName", "surname"
  From public."Location" as pL, public."Director" as pD
  Where "country" = 'Canada' and pL."locationId" = pD."locationId";

-- 1.b) Here I chose to query for the director James Cameron
Select "title" as "Movie", Concat("firstName", ', ', "surname") as "Director by"
  From public."Director_Movie" as D_M, public."Director" as D
  Where D_M."directorID" = D."directorID" and "firstName" = 'James' and "surname" = 'Cameron'

-- 1.c)
Select Concat("firstName", ', ', "surname") as "Actor", "budget" as "Cost Production: USD",
	("budget" / 0.0089) as "Cost Production: Yen", ("budget" / 0.015) as "Cost Production: Rub",
	("budget" / 1.14) as "Cost Production: EUR", ("budget" / 1.01) as "Cost Production: CHF"
		From public."Movie" as M, public."Actor" as A, public."Movie_Actor" as MA
		Where "budget" > Cast(1000000 as Money) and (MA."title" = M."title" and A."actorID" = MA."actorID");

-- 1.d)
Select concat("firstName", ', ', "surname") as "Director"
From public."Director"
	Where "surname" Like 'A%' or "surname" Like 'D%'

-- 1.e) I chose action instead of comedy and 80 instead of 40
Select MA.title as "ActionMovies"
From public."Movie_MovieType" as MMT, public."Movie_Actor" as MA,
	(Select "actorID" as ID From public."Actor"
			Where ((2018 - extract(year from "dateOfBirths")) < 80)) as list
	Where (MA."actorID" = list.ID and MMT.title = MA.title and MMT."genreID" = '8');

-- 1.f)
Select concat(A1."firstName", ' ', A1."surname") as "Actor 1",
	concat(A2."firstName", ' ', A2."surname") as "Actor 2"
From public."Actor" as A1, public."Actor" as A2
	Where (A1.eyeColor = A2.eyeColor and A1.eyeColor = 'Blue' and A2.eyeColor = 'Blue' and
		A1."firstName" < A2."firstName");

-- 2.a)
Select Avg((2018 - extract(year from A."dateOfBirths"))) as "Average Age"
From public."Actor" as A;

-- 2.b) Here Titanic is a replacement for the beautiful mind
Select count(distinct L."country") as "Number of diff countries"
From public."Actor" as A, public."Movie_Actor" as MA, public."Location" as L
	Where A."actorID" = MA."actorID" and MA."title" = 'Titanic' and
		A."locationId" = L."locationId";

-- 2.c) Here I chose the color blue instead
Select count(eyecolor) as "Number of actors with blue eyes"
From public."Actor" as A
	Where A."eyecolor" = 'Blue';

-- 2.d) I chose Adam Sanlder because I don't have Brad Pitt
Select count(MA."title") as "Adam Sandler movies"
From public."Movie_Actor" as MA, public."Actor" as A
	Where A."firstName" = 'Adam' and A."surname" = 'Sandler' and
		A."actorID" = MA."actorID";

-- 2.e) I had extra stuff to get the budget average displayed
Select min(budget) as "Lowest budget film",
	max(budget) as "Higest budget film",
	Avg(budget::numeric) as "Average Budget"
From public."Movie"

-- 2.f) Chose eye color as grey and another city instead of toronto
Select Avg(Distinct M."rating")  as "Average movie rating"
  From (Select Distinct D."directorID"
  		  From public."Director" as D, public."Location" as L
  		  Where (D."locationId" = L."locationId" and L."city" = 'Kapuskasing')
			or D."eyecolor" = 'Grey') as list, public."Director_Movie" as DM,
			public."Movie" as M, public."Director" as D
  Where D."directorID" = DM."directorID" and DM."title" = M."title" and
  	DM."releaseDate" = M."releaseDate";

-- 2.g)Titanic is the only movie I have with two actors, hence one result only
Select Distinct MA1."title"
		From public."Movie_Actor" as MA1, public."Movie_Actor" as MA2, public."Actor" as A1,
			public."Location" as L, public."Actor" as A2
		  Where MA1."actorID" <> MA2."actorID" and MA1."title" = MA2."title" and MA1."actorID" = A1."actorID"
		    and MA2."actorID" = A2."actorID" and A1."actorID" <> A2."actorID";


-- 2.h) query that includes a subquery and aggregation
Select M."title"
From public."Movie" as M, public."Movie_Actor" as MA, public."Location" as L,
	public."Actor" as A
	Where M."title" = MA."title" and M."releaseDate" = MA."releaseDate" and
		A."actorID" = MA."actorID" and L."locationId" = A."locationId"
	Group by M."title" Having count("country") >= 2;
