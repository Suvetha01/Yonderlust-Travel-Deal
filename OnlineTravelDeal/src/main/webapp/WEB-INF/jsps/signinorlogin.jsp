<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title> Login page</title>
      
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
  width: 50%;
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
.cancelbtn, .signupbtn {
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
  .cancelbtn, .signupbtn {
     width: 50%;
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

<body bgcolor="lightblue" align="center">
  <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<f:form action="/login" method="post" modelAttribute="loginData">
 <div class="container">
    <h1>Suit Up Yourself !</h1>
	<div id="scroll-container" class="mqcolor">
	
		<marquee style="font-family:Book Antiqua; color: #FFFFFF" scrolldelay="70">Traveling it leaves you speechless, then turns you into a storyteller</marquee>
     
    </div>
    
    <hr>

<label for="email" style="color:white"><b>Username</b></label><br>
<f:input path="username" type="text" placeholder="Enter Username" /><f:errors path="username"  />
<br><br>

<label for="psw" style="color:white"><b>Password</b></label><br>
<f:input path="password" type="password" placeholder="Enter password" /><f:errors path="password"  />
<br><br>

<label for="role" style="color:white"><b>Select Role:</b></label>

<f:select path="role">
<f:option value="">Select</f:option>
<f:option value="Admin">Admin</f:option>
<f:option value="Customer">Customer</f:option>
<f:option value="Merchant">Merchant</f:option>

</f:select>

<br/><br/>

    <div class="clearfix" >
	  <button type="submit" class="signupbtn">Login</button>
      <button type="button" class="cancelbtn" onclick="history.back()">Cancel</button>
      
    </div>
  </div>

		<div class="container signup" style="color:white">
    <p>Don't have an account? <a href="/signupcustomer" style="color:white">Register</a>.</p>
  </div>




</f:form>
</body>


</html>