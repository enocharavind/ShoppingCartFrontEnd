
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	});
</script>
<style>
.btn-primary{
    color: #fff;
    background-color:  #2f4357;
    border-color: #2e6da4;
    }
  
 #modalButton{
     padding-right: 230px;
    padding-left: 230px;
    padding-top: 30px;
 }

</style>
<title>Product Page</title>
</head>
<body>
			<div id="modalButton">
			<c:choose>
			
				<c:when test="${empty product.id}">
				<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Add Products</button>
			</c:when>
			<c:otherwise> 
				<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Edit Products</button>
			</c:otherwise> 
			</c:choose>
			</div>
	
		<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
			
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add product</h4>
				</div>
				
				
				<div class="modal-body">
					<c:url var="addAction" value="product/add"></c:url>
					<form:form action="${addAction}" commandName="product" class="form-responsive form-horizontal" enctype="multipart/form-data">
						
						
						<div class="col-md-12">
						
							<div class="form-group">
								<form:label path="id" class="control-label col-md-4">
									<spring:message text="ID" />
								</form:label>
								<div class="col-md-4">
									<c:choose>
										<c:when test="${!empty product.id}">
											<form:input path="id" readonly="true" class="form-control" />
										</c:when>
										<c:otherwise>
											<form:input path="id" pattern="{5,10}" required="true" title="id should be between 5 to 10 characters" class="form-control" />
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							
							<div class="form-group">
								<form:label path="name" class="control-label col-md-4"><spring:message text="NAME" /></form:label>
								<div class="col-md-4">
									<form:input path="name" required="true" class="form-control" />
								</div>
							</div>
							
							
							<div class="form-group">
							<form:label path="description"	class="control-label col-md-4"><spring:message text="DESCRIPTION" /></form:label>
								<div class="col-md-4">
									<form:input path="description" required="true" class="form-control" />
								</div>
							</div>
							
							
							<div class="form-group">
								<form:label path="price" class="control-label col-md-4"><spring:message text="PRICE" /></form:label>
								<div class="col-md-4">
									<form:input path="price" required="true" class="form-control" />
								</div>
							</div>
							
							
							<div class="form-group">
								<form:label path="supplier" class="control-label col-md-4"><spring:message text="SUPPLIER" /></form:label>
								<div class="col-md-4">
									<form:select path="supplier_id" class="form-control">
										<c:forEach items="${supplierList}" var="supplier">
											<form:option value="${supplier.id}">${supplier.name}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
							
							
							<div class="form-group">
								<form:label path="category" class="control-label col-md-4"><spring:message text="CATEGORY" /></form:label>
								<div class="col-md-4">
									<form:select path="category_id" class="form-control selectpicker show-menu-arrow">
										<c:forEach items="${categoryList}" var="category">
											<form:option value="${category.id}">${category.name}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
							
							
							<div class="form-group">
										<form:label path="image" class="control-label col-md-4 "><spring:message text="Image"/></form:label>
	                				<div class="col-md-4">
	                						<form:input type="file" class="form-control" path="image"/>	
    									
				</div>	 
	              			</div>
	</div>
	
	
		<c:if test="${!empty product.name}">
						<input type="submit" class="btn btn-primary btn-sm "
							value="<spring:message text="Update"/> ">
					</c:if>
					<c:if test="${empty product.name}">
						<input type="submit" class="btn btn-primary btn-sm"
							value="<spring:message text="Add"/> ">
					</c:if>
					</form:form>
				
					
				</div>
			</div>
			

		</div>
	</div>
	<br>

<div class="container">
	<div class="col-md-12">
		<h3 style="text-align: center;"><b>PRODUCT LIST</b></h3>
		<c:if test="${!empty productList}">
			<div class="table-responsive" style="margin-left: 5%; width: 90%">
				<table id="example"
					class=" display table table-striped table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Category</th>
							<th>Supplier</th>
							<th>Image</th> 
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${productList}" var="product">

							<tr>
								<td>${product.id}</td>
								<td>${product.name}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.category_id}</td>
								<td>${product.supplier_id}</td>
								<td><img width="100px" height="100px"  alt="${product.id}"
            src="<c:url value="F:\\workspace\\ShoppingCartFrontEnd\\src\\main\\resources\\images\\${product.id}.jpg"></c:url>"/></td>
								<td><a
									href="<c:url value="product/edit/${product.id}"/>" >Edit</a></td>
								<td><a
									href="<c:url value="product/remove/${product.id}"/>">Delete</a></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
	</div>
	</div>
</body>
</html>
