<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travel Deals</title>
      
<style >

h1{
    text-align: center;
	font-family: URW Chancery L, cursive;
	font-style: italic;
	 text-shadow: 2px 2px red;
	  }
	
body {
  background-image: linear-gradient(to bottom, rgba(0,0,0,0.6) 0%,rgba(0,0,0,0.6) 100%), url('images/travel1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 25%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.registerbtn {
  float: center;
  width: 10%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
  align: center;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 150px) {
  .registerbtn {
     width: 20%;
  }
}

#scroll-text {
  /* animation properties */
  -moz-transform: translateX(100%);
  -webkit-transform: translateX(100%);
  transform: translateX(100%);
  
  -moz-animation: my-animation 15s linear infinite;
  -webkit-animation: my-animation 15s linear infinite;
  animation: my-animation 15s linear infinite;
}

/* for Chrome */
@-webkit-keyframes my-animation {
  from { -webkit-transform: translateX(100%); }
  to { -webkit-transform: translateX(-100%); }
}

@keyframes my-animation {
  from {
    -moz-transform: translateX(100%);
    -webkit-transform: translateX(100%);
    transform: translateX(100%);
  }
  to {
    -moz-transform: translateX(-100%);
    -webkit-transform: translateX(-100%);
    transform: translateX(-100%);
  }

.er{
color:red;

.mqcolor{

color: white;

}

</style>

</head>
<body align="center">

 <div class="container">
    <h1>Suit Up Yourself!</h1>
	<div id="scroll-container" class="mqcolor">
	
		<marquee style="font-family:Book Antiqua; color: #FFFFFF" scrolldelay="70">Traveling it leaves you speechless, then turns you into a storyteller</marquee>
     
    </div>

<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

 <f:form action="registerCustomer" method="post" modelAttribute="customerData">
 
 	<div class="container">
  
  		<hr>  
		<h2 class="glow" align="center" style="color:white">LET'S MAKE YOU READY FOR THE TRIP</h2><hr>
 

		<label for="fname" style="color:white"><b>Name</b></label> <br>
		<f:errors path="customerName" class="er" style="color:red" /><br>
		<f:input path="customerName" type="text" placeholder="Enter Your name" />  
		<br><br>

		<label for="mobile" style="color:white"><b>Mobile </b></label><br>
		<f:errors path="customerContactNumber" class="er"  style="color:red" /><br>
		<f:input path="customerContactNumber" type="text" placeholder="Enter Your Mobile Number" />
		<br><br>

		<label for="mobile" style="color:white"><b>Address</b></label><br>
		<f:errors path="customerAddress" class="er" style="color:red" /><br>
		<f:input path="customerAddress" type="text" placeholder="Enter Your Address" />
		<br><br>

		<label for="email" style="color:white"><b>Email </b></label><br>
		<f:errors path="customerEmail" class="er" style="color:red" /><br>
		<f:input path="customerEmail" type="text" placeholder="Enter Your Email"/>
		<br><br>
		
	<label for="psw" style="color:white"><b>Password </b></label><br>
	<f:errors path="customerPassword" class="er" style="color:red" /><br>
	<f:input path="customerPassword" type="password" placeholder="Enter Your Password"/>
	<br><br>

	<label style="color:white"><b>Select Gender: </b></label>
	<f:errors  path="customerGender" class="er" style="color:red" /><br>
	<f:radiobutton path="customerGender" value="male"  /><b style="color:white">Male</b>
	<f:radiobutton path="customerGender" value="female" /><b style="color:white">Female</b>
	<br><br>

	<button type="submit" class="registerbtn" style="color:white">Register</button>
  </div>
  
  <div class="container signin" style="color:white">
    <p>Already have an account? <a href="/loggingIn" style="color:white">Login</a>.</p>
  </div>
</f:form>

</body>
</html>