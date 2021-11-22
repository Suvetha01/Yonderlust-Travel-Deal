<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Merchant Details By Id</title>
</head>

<style >

h1{
    text-align: center;
	font-family: URW Chancery L, cursive;
	font-style: italic;
	 text-shadow: 2px 2px red;
	  }
	
body {

	background-image: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.2) 100%), url('images/home.jpg');	  		
   background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 20%;
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

.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 16px;
  margin: 10px 0;
  border: none;
  cursor: pointer;
  width: 10%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
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

<body align="center">



<form action="getmerchantbyid" method="get"><br><br><br>

Enter Merchant Id <br><br><input type="text" name="merchantId" /> <br><br>

<button type="submit" class="registerbtn">Get Merchant</button>

</form>
  
  


</body>
</html>