<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("ID");
String driverName = "com.mysql.jdbc.Driver";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}


Statement statement = null;
ResultSet resultSet = null;
%>
<h2>welcome<%out.println(session.getAttribute("username")); %></h2>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>ID</b></td>
<td><b>first_Name</b></td>
<td><b>last_Name</b></td>
<td><b>c_name</b></td>

</tr>
<%
try{ 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
statement=connection.createStatement();
Statement st=connection.createStatement();


String sql ="SELECT * FROM employee";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("ID") %></td>
<td><%=resultSet.getString("first_Name") %></td>
<td><%=resultSet.getString("last_Name") %></td>
<td><%=resultSet.getString("c_name") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

