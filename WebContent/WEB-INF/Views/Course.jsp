<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
     width: 160px;
     font: bold 15px arial, sans-serif;
     text-shadow:none;
position: absolute;
  top:320px;
  left:250px;
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
<body>
<h5>welcome, <%out.println(session.getAttribute("username")); %></h5>
<div class="centered">
 <div align="center">
 <img class="two" src="check.png" width="50" height="50">
    <div style="width:360px;height:420px;border:1px solid #000;margin:auto;box-shadow:8px 8px 10px 1px #000;
margin:auto; background-color: #f2f2f2; border-radius: 25px 25px 25px 25px;"  >
<div class="py-5" >
      
      <h5 class="checkpoint">&nbsp  CheckPoint</h5>
      
      <br>
      <h1>Course  Form</h1>
      <br>
      <h1></h1>
      <br>
  
   
<div align="center">
  
  <form action="<%= request.getContextPath() %>/AddCourse" method="post">
   <table style="with: 80%">
    <tr>
     <td>Course Name</td>
     <td><input type="text" name="c_name" required/></td>
    </tr>
    <tr>
     <td>Course Description</td>
     <td><input type="text" name="c_desc" required /></td>
    </tr>
    <tr>
     <td>Course fees</td>
     <td><input type="text" name="c_fees" required/></td>
    </tr>
   </table>
   <input class="button" type="submit" value="Submit" />
  </form>
 </div>
  </div>
 </div></div></div>
 </body>
</html>