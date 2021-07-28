<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Welcome User</title>
<style>

body {

  background-image: url('back2.jpg');
 background-repeat: no-repeat;
  background-attachment: fixed;
    background-size: 100% 100%;
   color: black;
}
.centered {
  position: absolute;
  top: 52.5%;
  left: 62%;
  transform: translate(-50%, -50%);
  text-align: center;
}
img.two {
   position: absolute;
          top: 2%;
           left:5%;
  height: 12%;
  width: 12%;
}
.rightbox
{
  position: absolute;
  top: 52.5%;
  left: 38%;
  transform: translate(-50%, -50%);
  text-align: center;
}
img.three {
   position: absolute;
          top: 18%;
           left:19%;
  height: 40%;
  width: 60%;
}
.Admin
{
  position: absolute;
  top: 60%;
  left: 38%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.checkpoint
{
  position: absolute;
  top: 8%;
  left: 31%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.form-submit-button {
     background: #0066A2;
     color: white;
     border-style: outset;
     border-color: #0066A2;
     border-radius:10px;
     height: 45px;
     width: 100px;
     font: bold 15px arial, sans-serif;
     text-shadow:none;
}
</style>

</head>
<body>
<center>

<br>
<div class="centered">
 <div style="width:360px;height:450px;border:1px solid #000;margin:auto;box-shadow:8px 8px 10px 1px #000;
margin:auto; background-color: #f2f2f2; border-radius: 0px 25px 25px 0px;"  >
<img class="two" src="check.png" width="50" height="50">
<div class="py-5" >
      
      <h5 class="checkpoint">&nbsp  CheckPoint</h5>
      <br>
      <br>
      <h2 style="font-family:Helvetica ;" ><b>Hello,Friend</b></h2>
    </div> 
    <div class="w-50  m-auto ">
  <div >
 
<form action="AdminLogin">
<input class="form-submit-button" type="submit" value=" Admin">
</form>
 </div>
<br><br>
<form action="studentLogin">
<input class="form-submit-button" type="submit" value=" Student">
</form>
<br><br>

</center>
</div>
</div>
</div>
<div class="rightbox" style="width:260px;height:450px;border:1px solid #000;margin:auto;box-shadow:-8px 8px 10px 1px #000;
margin:auto; background-color:#ccddff;border-radius:  25px 0px  0px 25px; "; ><br>
<H3 style="font-family:Helvetica ;" ><b>WELCOME!</b></H3>
<br>
<img class="three" src="login.jpg" width="300" height="300">
<br>
<br>
<br>
<br>
<br>
<br><br><br><br>
<p style="font-size:20px;">" It's you who makes the difference,<br> not the classroom. "</p>
</div>


</body>
</html>