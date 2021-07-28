<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
img.two {
   position: absolute;
          top: 5%;
           left:5%;
  height: 10%;
  width: 10%;
}
body {

  background-image: url('back2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;

  color: black;

}

</style>
</head>

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
<h3>welcome, <%out.println(session.getAttribute("username")); %></h3>

<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="white">
<td><b>Course Id</b></td>
<td><b>Course Name</b></td>
<td><b>Description</b></td>
<td><b>Fees</b></td>

</tr>
<%
try{ 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
statement=connection.createStatement();
Statement st=connection.createStatement();


String sql ="SELECT * FROM course order by course_id";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">

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

