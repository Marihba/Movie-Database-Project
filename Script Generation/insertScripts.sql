Scripts
INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('Jack and Jill', '11 Nov 2011', 100100, 79000000, 149700000, 3.3);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('The Godfather: Part II', '20 Dec 1974', 100101, 13000000, 57300000, 9.0);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('The Exorcist', '26 Dec 1973', 100102, 12000000, 441306145, 8.0);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('Titanic', '19 Dec 1997', 100103, 200000000, 2187463944, 7.8);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('Terminator 2: Judgment Day', '03 Jul 1991', 100103, 102000000, 520881154, 8.5);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('Jurassic Park', '11 Jun 1993', 100104, 63000000, 1029153882, 8.1);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)	
	VALUES ('Coach Carter', '14 Jan 2005', 100105, 30000000, 76669806, 7.3);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)	
	VALUES ('Fast Five', '29 Apr 2011', 100106, 125000000, 626137675 , 7.3);

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('John Wick', '29 Apr 2011', 100107, 20000000, 88761661 , 7.3);	

INSERT INTO public."Movie"(
	title, "releaseDate", "screenwriterID", budget, gross, rating)
	VALUES ('Interstellar', '07 Nov 2014', 100108, 165000000, 677463813 , 8.6);	

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100100, 'Steve', 'Koren', '09 Jun 1966');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100101, 'Francis', 'Ford Coppola', '07 April 1939');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100102, 'William', 'Peter Blatty', '07 Jan 1928');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100103, 'James', 'Cameron', '16 Aug 1954');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100104, 'Michael', 'Crichton', '23 Oct 1942');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100105, 'Mark', 'Schwahn', '5 Jul 1966');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100106, 'Chris', 'Morgan', '24 Nov 1966');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100107, 'Derek','Kolstad', '01 Jan 1974');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100108, 'Jonathan','Nolan', '06 Jun 1976');

INSERT INTO public."Screenwriter"(
	"screenwriterID", "firstName", surname, "dateOfBirth")
	VALUES (100109, 'Michael','Bay', '17 Feb 1965');

INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500100, 'Wheaton', 'Illinois', 'U.S.');

INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200100, 500100, 'Dennis', 'Dugan', '05 Sept 1946', 14);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500102, 'Detroit', 'Michigan', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200102, 500102, 'Francis', 'Ford Coppola', '07 April 1939', 20);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500103, 'Chicago', 'Illinois', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200103, 500103, 'William', 'Friedkin', '29 Aug 1935', 19);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500104, 'Kapuskasing', 'Ontario', 'Canada');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200104, 500104, 'James', 'Cameron', '16 Aug 1954', 8);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500105, 'Cincinnati', 'Ohio', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200105, 500105, 'Steven', 'Spielberg', '18 Dec 1946', 34);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500106, 'Austin', 'Texas', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200106, 500106, 'Thomas', 'Carter', '17 Jul 1953', 6);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500107, 'Taipei', 'N/A','Taiwan');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200107, 500107, 'Justin', 'Lin', '01 Jan 1973', 9);

INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500108, 'Palmer', 'Massachusetts', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200108, 500108, 'Chad', 'Stahelski','20 Sept 1968', 2);

INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500109, 'Westminster', 'N/A','United Kingdom');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200109, 500109, 'Christopher', 'Nolan','30 Jul 1970', 10);
	
INSERT INTO public."Location"(
	"locationId", city, state, country)
	VALUES (500110,  'Los Angeles', 'California', 'U.S.');
	
INSERT INTO public."Director"(
	"directorID", "locationId", "firstName", surname, "dateOfBirth", "moviesDirected")
	VALUES (200110, 500110, 'Michael ', 'Bay','17 Feb 1965 ', 13);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300100, 'Jack', 500108, 'Adam',  'Sandler', '09 Sept 1966', 38);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400100, 'Todd', 'Garner', '01 Jul 1976', 5);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300101, 'Jill', 500108, 'Adam',  'Sandler', '09 Sept 1966', 38);

INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400101, 'Tony', 'Scott', '21 Jun 1944', 54);	
	
INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300102, 'Michael Corleone', 500103, 'Al',  'Pacino', '25 April 1940', 45);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400102, 'Francis', 'Ford Coppola', '12 Dec 1974', 3);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300103, 'Regan MacNeil', 500102, 'Linda',  'Blair', '22 Jan 1959', 55);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400103, 'Noel ', 'Marshall', '18 April 1931', 4);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300104, 'Jack Dawson', 500110, 'Leonardo ',  'DiCaprio', '11 Nov 1974', 42);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400104, 'Jon', 'Landau', '23 July 1960', 6);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300105, 'Terminator', 500106, 'Arnold',  'Schwarzenegger', '30 July 1947', 48);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400105, 'James', 'Cameron', '16 Aug 1954', 5);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300106, 'Alan Grant', 500109, 'Sam',  'Neill', '14 Sept 1947', 97);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400106, 'Kathleen', 'Kennedy', '5 June 1953', 82);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300107, 'Timo Cruz', 500107, 'Rick',  'Gonzalez', '30 June 1979', 67);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400107, 'Michael', 'Tollin', '6 Oct 1955', 88);
	
INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300108, 'Brian O\'Connor', 500105, 'Paul', 'Walker', '12 Sept 1973', 42);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400108, 'Vin', 'Diesel', '18 July 1967', 25);

INSERT INTO public."Actor"(
	"actorID", "characterName", "locationId", "firstName", surname, "dateOfBirths", "moviesActed")
	VALUES (300109, 'John Wick', 500104, 'Keanu', 'Reeves', 'Sept 02 1964', 96);
	
INSERT INTO public."Producer"(
	"producerID", "firstName", surname, "dateOfBirth", "moviesProduced")
	VALUES (400109, 'Eva', 'Longoria', '15 Mar 1975', 22);

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Famous Players', 4165550179, '12:30', '10:30', 500104);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Horror', 'aims to create a sense of fear, panic, alarm, and dread for the audience. These films are often unsettling and rely on scaring the audience through a portrayal of their worst fears and nightmares');
	

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Cineplex Odeon', 4165550139, '1:15', '11:30', 500104);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Comedy', 'film aims in which the main emphasis is on humour. These films are designed to make the audience laugh through amusement and most often work by exaggerating characteristics for humorous effect.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Detroit Players', 5864206948, '12:30', '10:30', 500102);

INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Sci_Fi', 'Science fiction is a genre of speculative fiction, typically dealing with imaginative concepts such as advanced science and technology, spaceflight, time travel, and extraterrestrial life.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Detroit Cineplex', 3134056341, '11:15', '10:00', 500104);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Romance', 'Film aims to place primary focus on the relationship and romantic love between two people, and must have an "emotionally satisfying and optimistic ending. ');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Detroit Odeon Theatre', 3134699732, '1:15', '11:30', 500104);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Adventure', ' Film aims to give excitement and keeps you on the end of your chair with new experiences or exotic locales.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('LA Players', 8184058626, '12:30', '10:30', 500110);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Drama', 'Drama Films are serious presentations or stories with settings or life situations that portray realistic characters in conflict with either themselves, others, or forces of nature.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('LA Cineplex', 8189399259, '11:15', '10:00', 500110);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Thriller', 'Thrillers are characterized and defined by the moods they elicit, giving viewers heightened feelings of suspense, excitement, surprise, anticipation and anxiety.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('LA Odeon Theatre', 2138933896, '1:15', '11:30', 500110);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Action', ' a film genre in which the protagonist or protagonists are thrust into a series of challenges that typically include violence, extended fighting, physical feats, and frantic chases.');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Austin Odeon Theatre', 5129694743, '1:15', '11:30', 500106);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Documentary', 'Film aims to bring to light a certain cause or injustice to help galvanize the masses to demand change. ');

INSERT INTO public."Cinema"(
	name, "phoneNumber", "openingTime", "closingTime", "locationId")
	VALUES ('Westminder Cinema', 01152740464, '11:30', '10:45', 500109);
	
INSERT INTO public."MovieType"(
	genre, "genreDescription")
	VALUES ('Fantasy', 'Films that usually use magic, supernatural events, mythology, folklore, or exotic fantasy worlds.');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('Keep your friends close, but your enemies closer.', 300102, 'Michael Corleone', 'The Godfather: Part II ', '20 Dec 1974');
	
 INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('It occurred to me: the police are paid to fight, and the Rebels are not.', 300102, 'Michael Corleone', 'The Godfather: Part II ', '20 Dec 1974');
	
INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('I’m the king of the world!', 300100, 'Jack', 'Titanic', '19 Dec 1997');		

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('Hasta la vista, baby.', 300105, 'Terminator', 'Terminator 2: Judgment Day', '03 Jul 1991');
	
INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('Chill out, dickwad', 300105, 'Terminator', 'Terminator 2: Judgment Day', '03 Jul 1991');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES (' Ian Freeze. Ian Freeze! Ian, freeze!', 300106, 'Alan Grant', 'Jurassic Park', '11 Jun 1993');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('Our deepest fear is that we are powerful beyond measure. It is our light, not our darkness, that most frightens us. Your playing small does not serve the world.', 300107, 'Timo Cruz', 'Coach Carter', '14 Jan 2005');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('It's personal.', 300109, 'John Wick', 'John Wick', '29 April 2011');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('People keep asking if I'm back and I haven't really had an answer...But now, yeah, I'm thinkin' I'm back!', 300109, 'John Wick', 'John Wick', '29 April 2011');

INSERT INTO public."Quote"(
	"quoteText", "actorID", "characterName", title, "releaseDate")
	VALUES ('I'd like a dinner reservation for twelve.', 300109, 'John Wick', 'John Wick', '29 April 2011');




