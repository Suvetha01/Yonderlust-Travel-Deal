<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

		<style>

		</style>
		
		
</head>
<body bgcolor="Thistle">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<br><br>

<h2 align="center">Info of Merchant Id - ${merchant.merchantId}</h2>
<br><br>

<table class="table" align="center">
  <thead class="thead-dark">
    <tr>
      <th scope="col"><b>ID</b></th>
      <th scope="col"><b>NAME</b></th>
      <th scope="col"><b>EMAIL</b></th>
      <th scope="col"><b>ADDRESS</b></th>
      <th scope="col"><b>CONTACT</b></th>
    </tr>
  </thead>
  <tbody>
 
  <tr>
      <th scope="row">${merchant.merchantId}</th>
      <td>${merchant.merchantName}</td>
      <td>${merchant.merchantEmail}</td>
      <td>${merchant.merchantAddress}</td>
      <td>${merchant.merchantContact}</td>
      <td><a class="btn btn-success" href="updatemerchant/${merchant.merchantId}">Update</a>
      <a class="btn btn-danger" href="deletemerchant?mid=${merchant.merchantId }"  onclick=" return confirm('Are You Sure ?')" >UnRegister</a></td>
</tr>


	

</tbody>
</table>

</body>
</html>