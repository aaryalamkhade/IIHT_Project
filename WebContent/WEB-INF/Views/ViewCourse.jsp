<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>ViewCourse</h1>
  <form action="DisplayCourse.jsp" method="post">
<input type="submit" value="View COURSE">
</form>
<form action="EnrollCourse.jsp" method="post">
<input type="submit" value="Enroll COURSE">
</form>
<h2>welcome<%out.println(session.getAttribute("username")); %></h2>
</body>
</html>