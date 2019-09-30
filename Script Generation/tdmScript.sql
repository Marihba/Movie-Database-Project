/*
Created: 10/29/2018
Modified: 10/30/2018
Model: PostgreSQL 10
Database: PostgreSQL 10
*/


-- Create tables section -------------------------------------------------

-- Table Movie

CREATE TABLE "Movie"(
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL,
 "screenwriterID" Bigint NOT NULL,
 "budget" Money NOT NULL,
 "gross" Money NOT NULL,
 "rating" Real
)
;

-- Create indexes for table Movie

CREATE INDEX "IX_Relationship19" ON "Movie" ("screenwriterID")
;

-- Add keys for table Movie

ALTER TABLE "Movie" ADD CONSTRAINT "Key1" PRIMARY KEY ("title","releaseDate")
;

-- Table Actor

CREATE TABLE "Actor"(
 "actorID" Bigint NOT NULL,
 "characterName" Character varying(20) NOT NULL,
 "locationId" Bigint NOT NULL,
 "firstName" Character varying(20) NOT NULL,
 "surname" Character varying(20) NOT NULL,
 "dateOfBirths" Date NOT NULL,
 "moviesActed" Integer NOT NULL
)
;

-- Create indexes for table Actor

CREATE INDEX "IX_Relationship2" ON "Actor" ("locationId")
;

-- Add keys for table Actor

ALTER TABLE "Actor" ADD CONSTRAINT "Key2" PRIMARY KEY ("actorID","characterName")
;

-- Table Director

CREATE TABLE "Director"(
 "directorID" Bigint NOT NULL,
 "locationId" Bigint NOT NULL,
 "firstName" Character varying(20) NOT NULL,
 "surname" Character varying(20) NOT NULL,
 "dateOfBirth" Date NOT NULL,
 "moviesDirected" Integer NOT NULL
)
;

-- Create indexes for table Director

CREATE INDEX "IX_Relationship1" ON "Director" ("locationId")
;

-- Add keys for table Director

ALTER TABLE "Director" ADD CONSTRAINT "Key3" PRIMARY KEY ("directorID")
;

-- Table Location

CREATE TABLE "Location"(
 "locationId" Bigint NOT NULL,
 "city" Character varying(20) NOT NULL,
 "state" Character varying(20) NOT NULL,
 "country" Character varying(20) NOT NULL
)
;

-- Add keys for table Location

ALTER TABLE "Location" ADD CONSTRAINT "Key4" PRIMARY KEY ("locationId")
;

-- Table MovieType

CREATE TABLE "MovieType"(
 "genre" Character varying(20) NOT NULL,
 "genreDescription" Character varying(250) NOT NULL
)
;

-- Add keys for table MovieType

ALTER TABLE "MovieType" ADD CONSTRAINT "Key5" PRIMARY KEY ("genre","genreDescription")
;

-- Table Movie_MovieType

CREATE TABLE "Movie_MovieType"(
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL,
 "genre" Character varying(20) NOT NULL,
 "genreDescription" Character varying(250) NOT NULL
)
;

-- Create indexes for table Movie_MovieType

CREATE INDEX "IX_genre type" ON "Movie_MovieType" ("genre","genreDescription")
;

-- Add keys for table Movie_MovieType

ALTER TABLE "Movie_MovieType" ADD CONSTRAINT "Key6" PRIMARY KEY ("title","releaseDate")
;

-- Table Director_Movie

CREATE TABLE "Director_Movie"(
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL,
 "directorID" Bigint NOT NULL,
 "bestDirectorAward" Boolean NOT NULL
)
;

-- Add keys for table Director_Movie

ALTER TABLE "Director_Movie" ADD CONSTRAINT "Key7" PRIMARY KEY ("title","releaseDate","directorID")
;

-- Table Movie_Actor

CREATE TABLE "Movie_Actor"(
 "actorID" Bigint NOT NULL,
 "characterName" Character varying(20) NOT NULL,
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL,
 "wonOscar" Boolean NOT NULL
)
;

-- Add keys for table Movie_Actor

ALTER TABLE "Movie_Actor" ADD CONSTRAINT "Key8" PRIMARY KEY ("title","releaseDate","actorID","characterName")
;

-- Table Cinema

CREATE TABLE "Cinema"(
 "name" Character varying(35) NOT NULL,
 "phoneNumber" Bigint NOT NULL,
 "openingTime" Time NOT NULL,
 "closingTime" Time NOT NULL,
 "locationId" Bigint NOT NULL
)
;

-- Create indexes for table Cinema

CREATE INDEX "IX_Relationship16" ON "Cinema" ("locationId")
;

-- Add keys for table Cinema

ALTER TABLE "Cinema" ADD CONSTRAINT "Key11" PRIMARY KEY ("name","phoneNumber")
;

-- Table Quote

CREATE TABLE "Quote"(
 "quoteText" Character varying(75) NOT NULL,
 "actorID" Bigint NOT NULL,
 "characterName" Character varying(20) NOT NULL,
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL
)
;

-- Create indexes for table Quote

CREATE INDEX "IX_Relationship15" ON "Quote" ("title","releaseDate")
;

-- Add keys for table Quote

ALTER TABLE "Quote" ADD CONSTRAINT "Key12" PRIMARY KEY ("actorID","characterName","quoteText")
;

-- Table Movie_Cinema

CREATE TABLE "Movie_Cinema"(
 "ticketType" Character varying(7) NOT NULL,
 "showTime" Date NOT NULL,
 "ticketPrice" Money NOT NULL,
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL,
 "name" Character varying(35) NOT NULL,
 "phoneNumber" Bigint NOT NULL
)
;

-- Add keys for table Movie_Cinema

ALTER TABLE "Movie_Cinema" ADD CONSTRAINT "Key13" PRIMARY KEY ("title","releaseDate","name","phoneNumber","ticketPrice","showTime","ticketType")
;

-- Table Producer

CREATE TABLE "Producer"(
 "producerID" Bigint NOT NULL,
 "firstName" Character varying(20) NOT NULL,
 "surname" Character varying(20) NOT NULL,
 "dateOfBirth" Date NOT NULL,
 "moviesProduced" Integer NOT NULL
)
;

-- Add keys for table Producer

ALTER TABLE "Producer" ADD CONSTRAINT "Key14" PRIMARY KEY ("producerID")
;

-- Table Screenwriter

CREATE TABLE "Screenwriter"(
 "screenwriterID" Bigint NOT NULL,
 "firstName" Character varying(20) NOT NULL,
 "surname" Character varying(20) NOT NULL,
 "dateOfBirth" Date NOT NULL
)
;

-- Add keys for table Screenwriter

ALTER TABLE "Screenwriter" ADD CONSTRAINT "Key15" PRIMARY KEY ("screenwriterID")
;

-- Table Producer_Movie

CREATE TABLE "Producer_Movie"(
 "producerID" Bigint NOT NULL,
 "title" Character varying(50) NOT NULL,
 "releaseDate" Date NOT NULL
)
;

-- Add keys for table Producer_Movie

ALTER TABLE "Producer_Movie" ADD CONSTRAINT "Key16" PRIMARY KEY ("producerID","title","releaseDate")
;
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Movie_MovieType" ADD CONSTRAINT "movie type" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie_MovieType" ADD CONSTRAINT "genre type" FOREIGN KEY ("genre", "genreDescription") REFERENCES "MovieType" ("genre", "genreDescription") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Director_Movie" ADD CONSTRAINT "movies directed" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Director_Movie" ADD CONSTRAINT "direct movies" FOREIGN KEY ("directorID") REFERENCES "Director" ("directorID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie_Actor" ADD CONSTRAINT "acted by" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie_Actor" ADD CONSTRAINT "acting in" FOREIGN KEY ("actorID", "characterName") REFERENCES "Actor" ("actorID", "characterName") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Director" ADD CONSTRAINT "directors born in" FOREIGN KEY ("locationId") REFERENCES "Location" ("locationId") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Actor" ADD CONSTRAINT "actors born in" FOREIGN KEY ("locationId") REFERENCES "Location" ("locationId") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie_Cinema" ADD CONSTRAINT "plays" FOREIGN KEY ("name", "phoneNumber") REFERENCES "Cinema" ("name", "phoneNumber") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie_Cinema" ADD CONSTRAINT "played in" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Quote" ADD CONSTRAINT "quotes" FOREIGN KEY ("actorID", "characterName") REFERENCES "Actor" ("actorID", "characterName") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Quote" ADD CONSTRAINT "has quotes" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Cinema" ADD CONSTRAINT "located in" FOREIGN KEY ("locationId") REFERENCES "Location" ("locationId") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Producer_Movie" ADD CONSTRAINT "produces" FOREIGN KEY ("producerID") REFERENCES "Producer" ("producerID") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Producer_Movie" ADD CONSTRAINT "produced by" FOREIGN KEY ("title", "releaseDate") REFERENCES "Movie" ("title", "releaseDate") ON DELETE NO ACTION ON UPDATE NO ACTION
;

ALTER TABLE "Movie" ADD CONSTRAINT "wrote screenplay" FOREIGN KEY ("screenwriterID") REFERENCES "Screenwriter" ("screenwriterID") ON DELETE NO ACTION ON UPDATE NO ACTION
;




