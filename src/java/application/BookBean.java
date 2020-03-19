/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package application;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author axelt
 */
public class BookBean 
{
        String DRIVER = "com.mysql.jdbc.Driver";
    
        String DB_URL = "jdbc:mysql://raptor2.aut.ac.nz:3306/testUnrestricted";
        String USERNAME = "student";
        String PASSWORD = "fpn871";
  

    public boolean addReview(Book book) throws ClassNotFoundException 
    {
        boolean check = false;
        
        try {

//            if (!checkTableExisting()) {
//                createTable();
//            }
            
            Class.forName(DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);

            PreparedStatement st = conn.prepareStatement("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBYEAR, REVIEW, RATING) " + "VALUES(?, ?, ?, ?, ?)");
            
            st.setString(1, book.getTitle());
            st.setString(2, book.getAuthor());
            st.setString(3, book.getPubYear());
            st.setString(4, book.getReview());
            st.setString(5, book.getRating());

            int result = st.executeUpdate();

            if (result == 1) {
                check = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return check;
    }

    public List<Book> getBook() throws ClassNotFoundException {
        List<Book> books = new ArrayList<>();
        try {
            
            if (!checkTableExisting()) {
                createTable();
            }
            
            Connection connection = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);

            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM BOOKTABLEBOOKER");

            Book book;
            
            if (!rs.next()) {
                return null;
            } else {
                do {
                    book = new Book();
                    book.setTitle(rs.getString(1));
                    book.setAuthor(rs.getString(2));
                    book.setPubYear(rs.getString(3));
                    book.setReview(rs.getString(4));
                    book.setRating(rs.getString(5));
                    books.add(book);
                    
                } while (rs.next());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return books;
    }

    private void createTable() throws SQLException, ClassNotFoundException 
    {
        Class.forName(DRIVER);
        Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        System.out.println("Database has connected...");
        Statement statement = conn.createStatement();

        statement.executeUpdate("CREATE TABLE USERTABLEBOOKER(USERNAME VARCHAR(30), PASSWORD VARCHAR(20))");
        System.out.println("Table USERINFO created");
        
        statement.executeUpdate("CREATE TABLE BOOKTABLEBOOKER (TITLE VARCHAR(50), AUTHOR VARCHAR(20), PUBDATE VARCHAR(50), REVIEW VARCHAR(255)), RATING VARCHAR(50)");
        System.out.println("Table BOOKTABLEBOOKER created");

        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBDATE, REVIEW, RATING) "
                + "VALUES('Gone with the Wind', 'Jane Austin', '1877', 'Very good, I enjoyedd it. Rther derivitive though', '4')");
        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBDATE, REVIEW, RATING) "
                + "VALUES('Hello', 'George', '1987', 'Very BAD, I hated it. Rther derivitive though', '2')");
        statement.executeUpdate("INSERT INTO BOOKTABLEBOOKER (TITLE, AUTHOR, PUBDATE, REVIEW, RATING) "
                + "VALUES('Hi', 'Dave', '3565', 'Very mediocre, I loved it. Rther derivitive though', '5')");

        System.out.println("Value updated");
        statement.close();
        conn.close();
    }

    private boolean checkTableExisting() 
    {
        boolean flag = false;
        
        
        try {
            System.out.println("Check existing tables.... ");
            
            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
           
            
            DatabaseMetaData dbmd = conn.getMetaData();
            ResultSet rsDBMeta = dbmd.getTables(null, null, null, null);

            while (rsDBMeta.next()) {
                String tableName = rsDBMeta.getString("TABLE_NAME");
                if (tableName.equalsIgnoreCase("BOOKTABLEBOOKER")) {
                    flag = true;
                    System.out.println("Table has already existed.");
                }
            }

            if (flag == false) {
                System.out.println("No such table found.");
            }
            if (rsDBMeta != null) {
                rsDBMeta.close();
                conn.close();
            }
        } catch (SQLException ex) {

        }
        return flag;
    }
    
    
}
