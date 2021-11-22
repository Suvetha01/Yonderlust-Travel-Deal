<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Deals</title>
</head>
<body>
<br>
    <div align="right">
	<a href="/logout" class="btn btn-info btn">
	<span class="glyphicon glyphicon-log-out"></span> Logout</a>
        
</div><br>
<h1 align="center"><b>DEAL DETAILS</b></h1></br>
<hr>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">PRICE</th>
      <th scope="col">NUMBER OF DEALS AVAILABLE</th>
      <!-- <th scope="col">PURCHASE</th>  -->
    </tr>
    

  </thead>
  <tbody>
 
  <c:forEach var="deal" items="${dealList }">
  <tr>
      <th scope="row"><c:out value="${deal.dealId}" ></c:out></th>
      <td><c:out value="${deal.dealName}" ></c:out></td>
      <td><c:out value="${deal.dealDescription}" ></c:out></td>
      <td><c:out value="${deal.dealPrice}" ></c:out></td>
      <td><c:out value="${deal.numberOfDeals}" ></c:out></td>
     <!--   <td><a class="btn btn-success" href="purchasedeal/${deal.dealId}">Purchase</a>
      -->
      
</tr>
	
</c:forEach>
</tbody>
</table>

</body>
</html>