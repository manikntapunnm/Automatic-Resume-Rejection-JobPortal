/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dbconn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconn {
    public static Connection getConnection(){
        Connection con = null;
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "Durga@123");
        } catch (ClassNotFoundException | SQLException ex) {
            // Print the stack trace for debugging purposes
            ex.printStackTrace();
            // You can also log the error message
            System.out.println("Error while connecting to the database: " + ex.getMessage());
        }
        return con;
    }
}



