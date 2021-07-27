<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>welcome<%out.println(session.getAttribute("username")); %></h2>
  <h1>Admin Login Form12</h1>
 <form action="AddCourse">
<input type="submit" value="ADD NEW COURSE">
</form>
 <form action="ViewData.jsp" method="post">
   
   <input type="submit" value="View Data" />
  </form>
  </div>
</body>
</html>