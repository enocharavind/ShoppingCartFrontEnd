 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet"href="<c:url value="/resources/admin.css"/>">
<html>
<head>
<title>Product Page</title>
</head>
<body>
${msg}
<h1>Add product</h1>
<c:url var="addAction" value="product/add"></c:url>
<form:form action="${addAction}" commandName="product">
<table>
	<tr>
			<td><form:label path="id"> <spring:message text="ID"/></form:label></td>
					<c:choose>
							<c:when test="${!empty product.id}">
							<td><form:input path="id" readonly="true"/> </td>
							</c:when>
									
							 <c:otherwise>
							 <td><form:input path="id" pattern="{6,12}" required="true" title="id should be between 6 to 12 characters"/> </td>
							 </c:otherwise>
					</c:choose>
			</tr>
		<tr>
			<td><form:label path="name"> <spring:message text="NAME"/></form:label></td>
			<td><form:input path="name" required="true"/> </td>
		</tr>
		
		<tr>
			<td><form:label path="description"> <spring:message text="DESCRIPTION"/></form:label></td>
			<td><form:input path="description" required="true"/> </td>
		</tr>
		
		<tr>
			<td><form:label path="price"> <spring:message text="PRICE"/></form:label></td>
			<td><form:input path="price" required="true"/> </td>
		</tr>
							
	       <tr>
	  <td><form:label path="supplier"><spring:message text="Supplier"/></form:label></td>
	  
	  <td><form:select path="supplier_id">
	           <c:forEach items="${supplierList}" var="supplier">
								<form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
							</form:select>
							</td>
	           </tr>
	           
	       <tr>
	  <td><form:label path="category"><spring:message text="Category"/></form:label></td>
	  <td><form:select path="category_id"  >
	           <c:forEach items="${categoryList}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
							</form:select>
							</td>
	           </tr> 
		<tr>
			<td colspan="2">
			<c:if test="${!empty product.name}">
			<input type="submit" value="<spring:message text="Edit product"/> "> 
			</c:if>
			<c:if test="${empty product.name}">
			<input type="submit" value="<spring:message text="Add product"/> "> 
			</c:if>
			</td>

		</tr>
</table>
</form:form>
<br>

	              
	             
	            <h3>Product List</h3>
<c:if test="${!empty productList}">
	<table class="tg">
	<tr>
		<th> Product Id</th>
		<th>Product Name</th>
		<th>Product Description</th>
		<th>Category</th>
		<th>Supplier</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.description}</td>
			<td>${product.price}</td>
			<td>${product.category_id}<td>
			<td>${product.supplier_id} </td>
			<td><a href="<c:url value="product/edit/${product.id}"/>" >Edit</a></td>
			<td><a href="<c:url value="product/remove/${product.id}"/>" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html> 