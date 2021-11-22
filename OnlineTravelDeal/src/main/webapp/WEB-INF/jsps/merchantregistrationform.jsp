<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Merchant registration page</title>
<style>

body {
  	  font-family: Arial, Helvetica, sans-serif;
      background-image: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.2) 100%), url('images/home.jpg');
  			
      background-repeat: no-repeat;
      background-attachment: fixed;  
      background-size: cover;
  
}

* {
  box-sizing: border-box;
}

.container {
  padding: 16px;

}

input[type=text], input[type=password], input[type=number] {
  width: 25%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus,input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}


hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}


.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 10px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  opacity: 0.9;
 
}

.registerbtn:hover {
  opacity: 1;
}


a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
.glow {
   font-family: Apple Chancery, cursive;
  font-size: 30px;
  color: #fff;
  text-align: center;
  animation: glow 3s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}

</style>

<style type="text/css">

.er{
color:red;
}
</style>

</head>
<body >

	<h2 align="center">Register Merchant</h2><br><hr>

	<div align="center">
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

 	<f:form action="registermerchant" method="post" modelAttribute="merchantData">
 

		<label for="fname" class="col-sm-2 col-form-label"><b>Name</b></label> 
		<div class="col-sm-10"><f:input path="merchantName" type="text" placeholder="Enter  name" />  <f:errors path="merchantName" class="er"/>
		</div><br><br>



		<label for="mobile" class="col-sm-2 col-form-label"><b>Mobile</b></label>
		<div class="col-sm-10"><f:input path="merchantContact" type="text" placeholder="Enter  Mobile Number" /><f:errors path="merchantContact" class="er"/>
		</div><br><br>


	
		<label for="address" class="col-sm-2 col-form-label" ><b>Address</b></label>
		<div class="col-sm-10"><f:input path="merchantAddress" type="text" placeholder="Enter  Address" /><f:errors path="merchantAddress" class="er"/>
		</div><br><br>


		<label for="email" class="col-sm-2 col-form-label"><b>Email</b></label>
		<div class="col-sm-10"><f:input path="merchantEmail" type="text" placeholder="Enter  Email"/><f:errors path="merchantEmail" class="er"/>
		</div><br><br>
		
		
		
		<label for="psw" class="col-sm-2 col-form-label"><b>Password</b></label>
		<div class="col-sm-10"><f:input path="merchantPassword" type="password" placeholder="Enter  Password"/><f:errors path="merchantPassword" class="er"/>
		</div><br><br>

		
		<button type="submit" class="registerbtn">Register</button>

  
	</f:form>
  </div>

</body>
</html>