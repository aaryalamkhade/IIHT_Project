package com.IIHT_Project.dao;


//import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.PreparedStatement;


import com.IIHT_Project.model.students;

public class studentsdao
{

public int registerEmployee(students employee) throws ClassNotFoundException {
       String INSERT_USERS_SQL = "INSERT INTO employee" +
           "  (id, first_name, last_name, username, password, address, contact) VALUES " +
           " (?, ?, ?, ?, ?,?,?)";

       int result = 0;

       Class.forName("com.mysql.jdbc.Driver");
       
       try  {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
         
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
           preparedStatement.setInt(1, 1);
           preparedStatement.setString(2, employee.getFirst_Name());
           preparedStatement.setString(3, employee.getLast_Name());
           preparedStatement.setString(4, employee.getUsername());
           preparedStatement.setString(5, employee.getPassword());
           preparedStatement.setString(6, employee.getAddress());
           preparedStatement.setString(7, employee.getContact());

           System.out.println(preparedStatement);
           // Step 3: Execute the query or update query
           result = preparedStatement.executeUpdate();

       } catch (SQLException e) {
           // process sql exception
           e.printStackTrace();
       }
       return result;
   }

   private void printSQLException(SQLException ex) {
       for (Throwable e: ex) {
           if (e instanceof SQLException) {
               e.printStackTrace(System.err);
               System.err.println("SQLState: " + ((SQLException) e).getSQLState());
               System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
               System.err.println("Message: " + e.getMessage());
               Throwable t = ex.getCause();
               while (t != null) {
                   System.out.println("Cause: " + t);
                   t = t.getCause();
               }
           }
       }
   }
}
