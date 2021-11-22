<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
      
      
    </tr>
  </thead>
  <tbody>
 
  <c:forEach var="deals" items="${dealData }">
  <tr>
      <th scope="row"><c:out value="${deals.dealId}" ></c:out></th>
      <td><c:out value="${deals.dealName}" ></c:out></td>
      <td><c:out value="${deals.dealDescription}" ></c:out></td>
      <td><c:out value="${deals.dealPrice}" ></c:out></td>
      <td><c:out value="${deals.numberOfDeals}" ></c:out></td>
    <!--   <td><a class="btn btn-success" href="/updatedeal/${deals.dealId}">Update</a></td>
      <td><a class="btn btn-danger" href="deletedeal?mid=${deals.dealId }"  onclick=" return confirm('Are You Sure ?')" >Delete</a></td>
      
       -->
      
      
</tr>
	
</c:forEach>
</tbody>
</table>

</body>
</html>