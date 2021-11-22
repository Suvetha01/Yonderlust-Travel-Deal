<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update your Info</title>

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
<body align="center">


<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<h1 align="center">Customer Updation Form</h1>

<script type="text/javascript">

function fun1(){
	
	alert("Record Updated Successfully...");
}

</script>

<hr/>

<f:form action="/updatecustomersuccess" method="post" modelAttribute="customerData" onsubmit="fun1()">

		<label  class="col-sm-2 col-form-label"><b>Id </b></label> 
		<div class="col-sm-10"><f:input path="customerId" readonly="true" /> 
		</div><br><br>


		<label  class="col-sm-2 col-form-label"><b>Update Name </b></label> 
		<div class="col-sm-10"><f:input path="customerName"/> <f:errors path="customerName"/>
		</div><br><br>
		
		<label  class="col-sm-2 col-form-label"><b>Update Email </b></label> 
		<div class="col-sm-10"><f:input path="customerEmail"/> <f:errors path="customerEmail"/>
		</div><br><br>
		
		 <label  class="col-sm-2 col-form-label"><b>Password </b></label> 
		<div class="col-sm-10"><f:input path="customerPassword" type="password" readonly="true" /> 
		</div><br><br>
		
		<label  class="col-sm-2 col-form-label"><b>Update Address </b></label> 
		<div class="col-sm-10"><f:input path="customerAddress"/> <f:errors path="customerAddress"/>
		</div><br><br>
		
		<label><b>Update Gender </b></label><br><br>
		<f:radiobutton path="customerGender" value="male"/>Male
		<f:radiobutton path="customerGender" value="female"/>Female
		<f:errors  path="customerGender" class="er"/><br><br><br><br>
		
		<label  class="col-sm-2 col-form-label"><b>Update Contact </b></label> 
		<div class="col-sm-10"><f:input path="customerContactNumber"/> <f:errors path="customerContactNumber"/>
		</div><br><br>
		
		
		<button type="submit" class="registerbtn">Update</button>



</f:form>


</body>
</html>