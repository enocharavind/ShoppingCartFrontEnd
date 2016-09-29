<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Product Page</title>

</head>
<body>
<%-- ${msg} --%>


	              
	             
	            <!-- <h3>Product List</h3> -->
<c:if test="${!empty productList}">
	<div class="table-responsive">
	<table class="table table-hover">
	<tr>
		<th> Product Id</th>
		<th>Product Name</th>
		<th>Product Description</th>
		<th>Product Price</th>
		<th>Category</th>
		<th>Supplier</th>
		
	</tr>
	<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.description}</td>
			<td>${product.price}</td>
			<td>${product.category_id}<td>
			<td>${product.supplier_id} </td>
			
		</tr>
	</c:forEach>
	</table>
	</div>
</c:if>
</body>
</html> 