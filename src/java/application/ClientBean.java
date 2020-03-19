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

/**
 *
 * @author axelt
 */
public class ClientBean 
{
     String DRIVER = "com.mysql.jdbc.Driver";
    
        String DB_URL = "jdbc:mysql://raptor2.aut.ac.nz:3306/testUnrestricted";
        String USERNAME = "student";
        String PASSWORD = "fpn871";

    public boolean register(Client client) {

        boolean registered = false;

        try {
            
            if(!doesTableExist())
            {
                createTable();
            }
           
            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
           
            PreparedStatement st
                    = conn.prepareStatement("INSERT INTO USERTABLEBOOKER(USERNAME, PASSWORD)"
                            + " VALUES(?, ?)");
            st.setString(1, client.getUsername());
            st.setString(2, client.getPassword());
           
            int result = st.executeUpdate();
            
            if (result == 1) {
                registered = true;
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        } 
        
        return registered;
    }

    public boolean login(Client client) {

        try {

            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
            
            Statement st = conn.createStatement();
            
            ResultSet rs = st.executeQuery("SELECT * FROM USERTABLEBOOKER");

            if (!rs.next()) {
                return false;
            } else {
                do {
                    
                    String email = rs.getString(1);
                    String password = rs.getString(2);
                    
                    if(client.getUsername().equals(email) && client.getPassword().equals(password))
                    {
                        return true;
                    }
                    
                } while (rs.next());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return false;
    }
    
    private void createTable() throws SQLException
    {
        
        Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        System.out.println("Database has connected...");
        Statement statement = conn.createStatement();
        
        statement.executeUpdate("CREATE TABLE USERTABLEBOOKER (USERNAME VARCHAR(30), PASSWORD VARCHAR(20))");
        System.out.println("Table USERTABLEBOOKER created");
        
        statement.close();
        conn.close();
    }
    
    private boolean doesTableExist() 
    {
        boolean flag = false;
        try 
        {
            System.out.println("Check existing tables.... ");
            Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);

            
            
            
            DatabaseMetaData dbmd = conn.getMetaData();
            ResultSet rsDBMeta = dbmd.getTables(null, null, null, null);
            
            while (rsDBMeta.next()) 
            {
                String tableName = rsDBMeta.getString("TABLE_NAME");
                if (tableName.equalsIgnoreCase("USERTABLEBOOKER")) {
                    flag = true;
                    System.out.println("Table has already existed.");
                }
            }
            
            if(flag == false)
            {
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
