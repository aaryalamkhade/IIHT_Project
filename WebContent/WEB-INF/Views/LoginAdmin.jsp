<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
.showpass
{
  position: absolute;
          top: 64%;
           left:58%;
}
.button
{
background: #0066A2;
     color: white;
     border-style: outset;
     border-color: #0066A2;
     border-radius:10px;
     height: 38px;
     width: 95px;
     font: bold 15px arial, sans-serif;
     text-shadow:none;
position: absolute;
  top: 80%;
  left: 54%;
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
<div class="centered">
 <div align="center">
 <img class="two" src="check.png" width="50" height="50">
    <div style="width:360px;height:420px;border:1px solid #000;margin:auto;box-shadow:8px 8px 10px 1px #000;
margin:auto; background-color: #f2f2f2; border-radius: 25px 25px 25px 25px;"  >
<div class="py-5" >
      
      <h5 class="checkpoint">&nbsp  CheckPoint</h5>
      
      <br>
      <h1>Welcome Back!</h1>
      <br>
       
  
    
 
  
  <form action="<%= request.getContextPath() %>/AdminLogin" method="post">
   <table style="with: 80%">
    <tr>
     <td>UserName </td>
     <td><input type="text" placeholder=" Enter Username" style="width: 250px;margin:auto;font-family: FontAwesome;" name="username"   required /></td>
    </tr>
  <tr>
  <td><br></td><td></td>
  </tr>
    <tr>
     <td>Password</td>
     
     <td><input type="password" id="myInput"  placeholder=" Enter Password"  style="width: 250px;margin:auto;font-family: FontAwesome;" name="password" required/></td>
     <div class="showpass">
               <input type="checkbox" onclick="myFunction()">Show Password
            </div>
            <br>
             <script>
       function myFunction() {
      var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

          
     </div> 
   
    </tr>
    
    
   </table>
   <input class="button" type="submit" value="Submit" />
  </form>
 </div>
   </div> 
 </div>
 </div>
</body>
</html>