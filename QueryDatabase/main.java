import java.sql.*;


public class main {
    public static void main(String args[]) {
        try {
            try {
                Class.forName("org.postgresql.Driver");
            } catch (ClassNotFoundException ex){
                System.err.println("ClassNotFoundException: " + ex.getMessage());
            }
            Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/MovieDatabase",
                    "postgres", "66724726Ab");
            if(conn == null){
                System.out.println("not connected");
            }else{
                System.out.println("connected to db");
            }

//----------------------------------------------------------------------------------------------------------------------
            Statement st = conn.createStatement();

            st.executeUpdate("Insert Into public.\"Screenwriter\"(\"screenwriterID\", \"firstName\", surname, \"dateOfBirth\")" +
                    "VALUES (100103, 'James', 'Cameron', '16 Aug 1954');");

            st.executeUpdate("Insert Into public.\"Movie\"(title, \"releaseDate\", \"screenwriterID\", budget, gross, rating)" +
                    "VALUES('Titanic', '19 Dec 1997', 100103, 200000000, 2187463944, 7.8);");

            st.executeUpdate("Insert Into public.\"Location\"(\"locationId\", city, state, country)" +
                    "VALUES(500109,  'Los Angeles', 'California', 'U.S.');");

            st.executeUpdate("INSERT INTO public.\"Director\"(\"directorID\", \"locationId\", \"firstName\", surname, \"dateOfBirth\", \"moviesDirected\")" +
            "VALUES (200103, 500103, 'James', 'Cameron', '16 Aug 1954', 8);");

            st.executeUpdate("INSERT INTO public.\"Actor\"(" +
                    "\"actorID\", \"characterName\", \"locationId\", \"firstName\", surname, \"dateOfBirths\", \"moviesActed\") " +
                    "VALUES(300104, 'Jack Dawson', 500109, 'Leonardo ', 'DiCaprio', '11 Nov 1974', 42);");

            st.executeUpdate("INSERT INTO public.\"Producer\"(" +
                    "\"producerID\", \"firstName\", surname, \"dateOfBirth\", \"moviesProduced\")" +
                   "VALUES(400104, 'Jon', 'Landau', '23 July 1960', 6);");

            st.executeUpdate("INSERT INTO public.\"MovieType\"(" +
                    "\"genreID\", genre, \"genreDescription\")" +
                    "VALUES(04, 'Romance', 'Film aims to place primary focus on the relationship and romantic love between two " +
                    "people, and must have an emotionally satisfying and optimistic ending. ')");

            st.executeUpdate("INSERT INTO public.\"Cinema\"(" +
                    "name, \"phoneNumber\", \"openingTime\", \"closingTime\", \"locationId\")" +
                    "VALUES('Famous Players', 4165550179, '12:30', '10:30', 500103);");

            st.executeUpdate("INSERT INTO public.\"Quote\"(" +
                    "\"quoteText\", \"actorID\", title, \"releaseDate\")" +
                    "VALUES('I''m the king of the world!', 300104, 'Titanic', '1997-12-19');");

            st.executeUpdate("INSERT INTO public.\"Awards\"(\n" +
                    "\"awardID\", title, \"releaseDate\", \"awardName\", \"awarddate\")" +
                    "VALUES (600100, 'Titanic', '19 Dec 1997', 'Academy Award for Best Motion Picture','23 Mar 1998')");

            st.executeUpdate("INSERT INTO public.\"Director_Movie\"(" +
                    "title, \"releaseDate\", \"directorID\", \"bestDirectorAward\")" +
                    "VALUES('Titanic', '19 Dec 1997', 200103, True);");

            st.executeUpdate("INSERT INTO public.\"Movie_Actor\"(\n" +
                    "\t\"actorID\", title, \"releaseDate\", \"wonOscar\")" +
                    "VALUES(300104, 'Titanic', '19 Dec 1997', False);");

            st.executeUpdate("INSERT INTO public.\"Movie_MovieType\"(\n" +
                    "\ttitle, \"releaseDate\", \"genreID\")" +
                    "VALUES('Titanic', '19 Dec 1997', 4);");

//------------------------------------------------------------------------------------------------------------------------
            PreparedStatement sw = conn.prepareStatement("Insert Into public.\"Screenwriter\"(\"screenwriterID\", " +
                    "\"firstName\", surname, \"dateOfBirth\") "+
                    "VALUES (100107, 'Derek','Kolstad', '01 Jan 1974');");
            sw.executeUpdate();

            PreparedStatement mv = conn.prepareCall("Insert Into public.\"Movie\"(title, \"releaseDate\", \"screenwriterID\", budget, gross, rating)" +
                    "VALUES('John Wick', '29 Apr 2011', 100107, 20000000, 88761661 , 7.3);");
            mv.executeUpdate();

            PreparedStatement lc = conn.prepareCall("Insert Into public.\"Location\"(\"locationId\", city, state, country)" +
                    "VALUES(500107, 'Palmer', 'Massachusetts', 'U.S.');");
            lc.executeUpdate();

            PreparedStatement dirc = conn.prepareCall("INSERT INTO public.\"Director\"(\"directorID\", \"locationId\", \"firstName\", surname, \"dateOfBirth\", \"moviesDirected\")" +
                    "VALUES (200107, 500107, 'Chad', 'Stahelski','20 Sept 1968', 2);");

            dirc.executeUpdate();
            PreparedStatement actr = conn.prepareCall("INSERT INTO public.\"Actor\"(" +
                    "\"actorID\", \"characterName\", \"locationId\", \"firstName\", surname, \"dateOfBirths\", \"moviesActed\") " +
                    "VALUES(300109, 'John Wick', 500103, 'Keanu', 'Reeves', 'Sept 02 1964', 96)");
            actr.execute();

            PreparedStatement prod = conn.prepareCall("INSERT INTO public.\"Producer\"(" +
                    "\"producerID\", \"firstName\", surname, \"dateOfBirth\", \"moviesProduced\")" +
                    "VALUES(400109, 'Eva', 'Longoria', '15 Mar 1975', 22);");
            prod.executeUpdate();

            PreparedStatement mt = conn.prepareCall("INSERT INTO public.\"MovieType\"(" +
                    "\"genreID\", genre, \"genreDescription\")" +
                    "VALUES(08, 'Action', ' a film genre in which the protagonist or protagonists are thrust into a series of challenges that typically include violence, extended fighting, physical feats, and frantic chases.');");
            mt.executeUpdate();

            PreparedStatement cinema = conn.prepareCall("INSERT INTO public.\"Cinema\"(" +
                    "name, \"phoneNumber\", \"openingTime\", \"closingTime\", \"locationId\")" +
                    "VALUES('Cineplex Odeon', 4165550139, '1:15', '11:30', 500103);");
            cinema.executeUpdate();

            PreparedStatement quote = conn.prepareCall("INSERT INTO public.\"Quote\"(" +
                    "\"quoteText\", \"actorID\", title, \"releaseDate\")" +
                    "VALUES('It''s personal.', 300109, 'John Wick', '29 April 2011');");
            quote.executeUpdate();

            PreparedStatement award = conn.prepareCall("INSERT INTO public.\"Awards\"(" +
                            "\"awardID\", title, \"releaseDate\", \"awardName\", \"awarddate\")" +
                            "VALUES(600101, 'Titanic', '19 Dec 1997', 'Academy Award for Best Original Music Score', '23 Mar 1988');");
            award.executeUpdate();

            PreparedStatement D_M = conn.prepareCall("INSERT INTO public.\"Director_Movie\"(" +
                            "title, \"releaseDate\", \"directorID\", \"bestDirectorAward\")" +
                            "VALUES('John Wick', '29 Apr 2011', 200107, False);");

            D_M.executeUpdate();

            PreparedStatement A_M = conn.prepareCall("INSERT INTO public.\"Movie_Actor\"(" +
                            "\"actorID\", title, \"releaseDate\", \"wonOscar\")" +
                            "VALUES(300109, 'John Wick', '29 Apr 2011', False);");
            A_M.executeUpdate();

            PreparedStatement M_MT = conn.prepareCall("INSERT INTO public.\"Movie_MovieType\"(" +
                            "title, \"releaseDate\", \"genreID\")" +
                            "VALUES('John Wick', '29 Apr 2011', 8);");
            M_MT.executeUpdate();

//------------------------------------------------------------------------------------------------------------------------

            //passed with param on self query 1. Return all directors born in Canada
            Statement q1 = conn.createStatement();
            ResultSet rs1 = q1.executeQuery("SELECT \"firstName\", \"surname\" \n" +
                    "  From public.\"Location\" as pL, public.\"Director\" as pD\n" +
                    "  Where \"country\" = 'Canada' and pL.\"locationId\" = pD.\"locationId\";");
            System.out.println("Query 1");
            while(rs1.next()) {
                String firstName = rs1.getString(1);
                String lastName = rs1.getString(2);
                System.out.println("Name: " + firstName + ", " + lastName + " is born in Canada!");
            }

            //passed with param on self query 2. Return all movie titles directed by Director James Cameron
            Statement q2 = conn.createStatement();
            ResultSet rs2 = q1.executeQuery("Select \"title\" as \"Movie\", Concat(\"firstName\", ', ', \"surname\") as \"Director by\"\n" +
                    "  From public.\"Director_Movie\" as D_M, public.\"Director\" as D\n" +
                    "  Where D_M.\"directorID\" = D.\"directorID\" and \"firstName\" = 'James' and \"surname\" = 'Cameron'\n");

            System.out.println("\nQuery 2");
            while(rs2.next()) {
                String title = rs2.getString(1);

                System.out.println("Movie: " + title);
            }


            //passed with no param on self query 3.  find all the directors whose surname start with letter “A” and “D”
            PreparedStatement q3 = conn.prepareStatement("Select concat(\"firstName\", ', ', \"surname\") as \"Director\"\n" +
                    "From public.\"Director\"\n" +
                    "\tWhere \"surname\" Like 'A%' or \"surname\" Like 'D%'");
            ResultSet rs3 = q3.executeQuery();

            System.out.println("\nQuery 3");
            while(rs3.next()) {
                String fullName = rs3.getString(1);
                System.out.println("Director: " + fullName);
            }

            //passed with no param on self query 4. a.	Find the average age of all actors
            PreparedStatement q4 = conn.prepareStatement("Select Avg((2018 - extract(year from A.\"dateOfBirths\"))) as \"Average Age\"\n" +
                    "From public.\"Actor\" as A;");
            ResultSet rs4 = q4.executeQuery();

            System.out.println("\nQuery 4");
            while(rs4.next()) {
                float age = rs4.getFloat(1);
                System.out.println("Average age: " + age);
            }

        }
        catch (SQLException ex){
            System.err.println("SQLException: " + ex.getMessage());
        }
    }
}


