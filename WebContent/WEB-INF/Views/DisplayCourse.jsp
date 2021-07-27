<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("course_id");
String driverName = "com.mysql.jdbc.Driver";


try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>course_id</b></td>
<td><b>c_name</b></td>
<td><b>c_desc</b></td>
<td><b>c_fees</b></td>
</tr>
<%
try{ 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
statement=connection.createStatement();
String sql ="SELECT * FROM course";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("course_id") %></td>
<td><%=resultSet.getString("c_name") %></td>
<td><%=resultSet.getString("c_desc") %></td>
<td><%=resultSet.getString("c_fees") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>