/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package io.fcash;

import java.sql.*;

/**
 *
 * @author Champ
 */
public class Database {
    Connection con;
    Statement st;
    
    public static final String dbName = "dbFcash";
    public static final String dbDriver = "com.mysql.cj.jdbc.Driver";
    public static final String dbURL = "jdbc:mysql://localhost:3306/" + dbName;
    public static final String dbUsername = "root";
    public static final String dbPassword = "";
    
    
    
    public void connection() throws SQLException{
        
        try {
            Class.forName(dbDriver);
            con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            st = con.createStatement();
            if(con != null)
                System.out.println("aaaa");
        } catch (ClassNotFoundException ex) {
            System.getLogger(Database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
    }
    
    
}


