<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

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
      
      background-image: url("images/hhh.jpg");
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
        height: 150px;
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
    
    .merchantname{
    
    	color: black ;
    
    }
    
       
    </style>

</head>
<body>

		<div>
    
    	
        	<button class="noselect red"><b>EMAIL <hr> yonderlust@gmail.com </b></button>
        	<button class="noselect green" ><b>MOBILE <hr> +91 9555959995</b></button>
    	
    	</div>
    	
    	<div>
    
    	
        	<button class="noselect yellow"><b>LINKEDIN <hr> www.linkedin.com/in/travel-with-yonderlust </b></button>
        	
    	</div>


</body>
</html>