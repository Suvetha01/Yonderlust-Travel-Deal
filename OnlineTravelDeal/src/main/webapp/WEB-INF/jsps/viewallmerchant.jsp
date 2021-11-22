<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>View All Merchant</title>
</head>

<body>
<br>
<div align="right">
<a href="/logout" class="btn btn-danger btn">
<span class="glyphicon glyphicon-log-out"></span> Logout</a>
        
</div>
<h1 align="center"><b>MERCHANT DETAILS</b></h1></br>
<hr>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">EMAIL</th>
      <th scope="col">ADDRESS</th>
      <th scope="col">CONTACT</th>
    </tr>
  </thead>
  <tbody>
 
  <c:forEach var="merchant" items="${merchantList }">
  <tr>
      <th scope="row"><c:out value="${merchant.merchantId}" ></c:out></th>
      <td><c:out value="${merchant.merchantName}" ></c:out></td>
      <td><c:out value="${merchant.merchantEmail}" ></c:out></td>
      <td><c:out value="${merchant.merchantAddress}" ></c:out></td>
      <td><c:out value="${merchant.merchantContact}" ></c:out></td>
      <td><a class="btn btn-success" href="updatemerchant/${merchant.merchantId}">Update</a>
      <a class="btn btn-danger" href="deletemerchant?mid=${merchant.merchantId }"  onclick=" return confirm('Are You Sure ?')" >UnRegister</a></td>
</tr>


	
</c:forEach>
</tbody>
</table>
<div align="center">
<a href="signupmerchant"><button type="button" class="btn btn-primary" >Register Another Merchant</button></a>
</div>
<br>
</body>
</html>