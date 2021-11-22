<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    body {
        height: 100vh;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
      background-image: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.2) 100%), url('images/home.jpg');
  			
      background-repeat: no-repeat;
      background-attachment: fixed;  
      background-size: cover;
    }
    
    .noselect {
      -webkit-touch-callout: none;
        -webkit-user-select: none;
         -khtml-user-select: none;
           -moz-user-select: none;
            -ms-user-select: none;
                user-select: none;
            -webkit-tap-highlight-color: transparent;
    }
    
    button {
        width: 300px;
        height: 100px;
        cursor: pointer;
        background: #333;
        margin: 10px;
        border: none;
        border-radius: 10px;
        box-shadow: -5px -5px 15px #444, 5px 5px 15px #222, inset 5px 5px 10px #444, inset -5px -5px 10px #222;
        color: #ffffff;
        font-size: 16px;
    }
    
    button:hover {
        box-shadow: -5px -5px 15px #444, 5px 5px 15px #222, inset 5px 5px 10px , inset -5px -5px 10px ;
        font-size: 15px;
        transition: 500ms;
    }
    
    button:focus {
        outline: none;
    }
    
    .red:hover {
        color: #f07171;
        text-shadow: 0px 0px 10px #f07171;
    }
     .green:hover {
            color: #93f071;
        text-shadow: 0px 0px 10px #93f071;}
    
    .blue:hover {
        color: #71b7f0;
        text-shadow: 0px 0px 10px #71b7f0;
    }
    
    .purple:hover {
        color: #b971f0;
        text-shadow: 0px 0px 10px #b971f0;
    }
    .yellow:hover{
       color: #FFFF00;
       text-shadow: 0px 0px 10px #ebda1e;
       
    }
    .topnav-right {
  		float: right;
	}
    
    .adminname{
    
    	color: black ;
    
    }
    
       
    </style>
    </head>
    <body>

 	<div class="adminname">
    
    <h2>Welcome ${adminData.adminName}</h2><br><br>
    
    </div>
    
    <div>
        <a href="signupmerchant"><button class="noselect red"><b>REGISTER MERCHANT</b></button></a>
        <a href="viewmerchantbyid"><button class="noselect green" ><b>VIEW MERCHANT BY ID</b></button></a>
    </div>
    <div>
        <a href="viewallmerchant"><button class="noselect yellow"><b>VIEW MERCHANTS</b></button></a>
        <a href="viewalldeal"><button class="noselect purple" ><b>VIEW DEALS</b></button></a>
    </div>
    
    <br><br>
    <div align="right">
	<a href="/logout" class="btn btn-info btn">
	<span class="glyphicon glyphicon-log-out"></span> Logout</a>
        
</div>
</body>




</html>