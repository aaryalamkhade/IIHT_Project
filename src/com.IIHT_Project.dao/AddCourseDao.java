package com.IIHT_Project.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import com.IIHT_Project.model.AddCourse;



public class AddCourseDao
{
	public int registerEmployee(AddCourse AddCourse) throws ClassNotFoundException {
	       String INSERT_USERS_SQL = "INSERT INTO course" +
	           "  (course_id, c_name,c_desc, c_fees) VALUES " +
	           " (?, ?, ?, ?)";

	       int result = 0;

	       Class.forName("com.mysql.jdbc.Driver");
	       
	       try  {
	        Class.forName("oracle.jdbc.driver.OracleDriver");
	        Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
	         
	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
	            CallableStatement callSt = null;
	     	   callSt = connection.prepareCall("begin ? := getCid(); end;");
	            callSt.registerOutParameter(1, Types.INTEGER);
	            callSt.execute();
	           
	            preparedStatement.setInt(1, callSt.getInt(1)+1);
	           preparedStatement.setString(2, AddCourse.getC_name());
	           preparedStatement.setString(3, AddCourse.getC_desc());
	           preparedStatement.setString(4, AddCourse.getC_fees());
	         

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
