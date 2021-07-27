<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
 <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>



<%
//String c_name=request.getParameter("c_name");

ResultSet resultSet = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
Statement st=conn.createStatement();
String sql ="SELECT * FROM course";
resultSet = st.executeQuery(sql);
%>
<form method="post" action="EnrollCourse.jsp">
<p>Select Course :
<select name="course">
<%
while(resultSet.next())
{
String c_name = resultSet.getString("c_name"); 
%>
<option value="<%=c_name %>"><%=c_name %></option>
<%
}
%>
</select>
</p>
<input type="submit" value="submit">
</form>
<%
String name=(String)session.getAttribute("username"); 
System.out.println(name);
String name1="'"+name+"'";
System.out.println(name1);
String c=request.getParameter("course");
String c1="'"+c+"'";
System.out.println(c1+" "+c);
int i=st.executeUpdate("update employee set c_name="+c1+"  where username="+name1);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>