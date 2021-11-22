<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<style>

		body {
		
  	  		font-family: Arial, Helvetica, sans-serif;
      		background-image: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.2) 100%), url('images/home.jpg');	
      		background-repeat: no-repeat;
      		background-attachment: fixed;  
      		background-size: cover;
  
}

</style>
</head>

<body >
<br>
<div align="right">
<a href="/logout" class="btn btn-info btn">
<span class="glyphicon glyphicon-log-out"></span> Logout</a>
        
</div>
<h1 align="center">Merchant Registered Successfully!</h1><br><br>
<div align="center">
<a href="signupmerchant"><button type="button" class="btn btn-dark" >Register Another Merchant</button></a>
<a href="viewallmerchant"><button type="button" class="btn btn-dark" >View Merchants</button></a>

</div>
</body>
</html>