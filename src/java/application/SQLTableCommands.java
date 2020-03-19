/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package application;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author axelt
 */
public class SQLTableCommands 
{
     public static void main(String[] args) throws SQLException, ClassNotFoundException 
     {
        String DRIVER = "com.mysql.jdbc.Driver";
    
        String DB_URL = "jdbc:mysql://raptor2.aut.ac.nz:3306/testUnrestricted";
        String USERNAME = "student";
        String PASSWORD = "fpn871";

        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        System.out.println("Database has connected...");
        Statement statement = conn.createStatement();
//        
//        statement.executeUpdate("CREATE TABLE USERTABLEBOOKER(USERNAME VARCHAR(30), PASSWORD VARCHAR(20))");
//        System.out.println("Table USERTABLEBOOKER created");
////        
//        statement.executeUpdate("CREATE TABLE BOOKTABLEBOOKER (TITLE VARCHAR(50), AUTHOR VARCHAR(20), PUBYEAR VARCHAR(20), REVIEW VARCHAR(255), RATING VARCHAR(20))");
//        System.out.println("Table BOOKTABLEBOOKER created");
//
        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBYEAR, REVIEW, RATING) "
                + "VALUES('Gone with the Wind', 'Jane Austin', 1877, 'Very good, I enjoyedd it. Rther derivitive though', 4)");
        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBYEAR, REVIEW, RATING) "
                + "VALUES('Hello', 'George', 1987, 'Very BAD, I hated it. Rther derivitive though', 2)");
        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBYEAR, REVIEW, RATING) "
                + "VALUES('Hi', 'Dave', 3565, 'Very mediocre, I loved it. Rther derivitive though', 5)");
//        
//        
//        
//        statement.executeUpdate("INSERT INTO MOVIEINFO (NAME, RELEASEYEAR, TYPE, DIRECTOR) "
//                + "VALUES('Logan', '2017', 'Action,Sci-FI,Drama', 'James Mangold')");
//        statement.executeUpdate("INSERT INTO MOVIEINFO (NAME, RELEASEYEAR, TYPE, DIRECTOR) "
//                + "VALUES('Justice League', '2017', 'Action,Adventure,Fantasy', 'Zack Snyder')");
//        statement.executeUpdate("INSERT INTO MOVIEINFO (NAME, RELEASEYEAR, TYPE, DIRECTOR) "
//                + "VALUES('Guardians of the Galaxy Vol. 2', '2017', 'Action,Adventure,Comedy', 'James Gunn')");
//        statement.executeUpdate("INSERT INTO MOVIEINFO (NAME, RELEASEYEAR, TYPE, DIRECTOR) "
//                + "VALUES('Pirates of the Caribbean 5 Dead Men Tell No Tales', '2017', 'Action,Adventure,Fantasy', 'Joachim Ronning')");

        System.out.println("Value updated");
        statement.close();
        conn.close();
    }
}
