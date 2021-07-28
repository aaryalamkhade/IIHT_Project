<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
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
.button
{
background: #0066A2;
     color: white;
     border-style: outset;
     border-color: #0066A2;
     border-radius:10px;
     height: 38px;
     width: 140px;
     font: bold 15px arial, sans-serif;
     text-shadow:none;
position: absolute;
  left:234px;
  top:280px;
  transform: translate(-50%, -50%);
  text-align: center;
}
.checkpoint
{
  position: absolute;
  top: 9%;
  left: 30%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}
</style>
</head>

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
<h5>welcome, <%out.println(session.getAttribute("username")); %></h5>
<div class="centered">
 <div align="center">
 <img class="two" src="check.png" width="50" height="50">
    <div style="width:360px;height:420px;border:1px solid #000;margin:auto;box-shadow:8px 8px 10px 1px #000;
margin:auto; background-color: #f2f2f2; border-radius: 25px 25px 25px 25px;"  >
<div class="py-5" >
      
      <h5 class="checkpoint">&nbsp  CheckPoint</h5>
      
      <br><br>
      <h2>Learn to fly!</h2>
      <br>
  
    </div>
<form method="post" action="studentdetails.jsp">
<p>Select Course 
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
<input class="button" type="submit" value="submit">
</form>
</div></div></div>
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