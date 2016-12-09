<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

</style>
</head>
<body>

<div id="modalButton">
	<c:choose>
	
		<c:when test="${empty category.id}">
		<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Add Category</button>
	</c:when>
	<c:otherwise> 
		<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Edit Category</button>
	</c:otherwise> 

	</c:choose>
	</div>
	
		<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
			
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Category</h4>
				</div>
				
				
				<div class="modal-body">
				<c:url var="addAction" value="category/add"></c:url>
			<form:form action="${addAction}" commandName="category" class="form-responsive form-horizontal">
						<div class="col-md-12">
						
							<div class="form-group">
								<form:label path="id" class="control-label col-md-4">
									<spring:message text="ID" />
								</form:label>
								<div class="col-md-4">
									<c:choose>
										<c:when test="${!empty category.id}">
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
							
							
	</div>
	
	
		<c:if test="${!empty category.name}">
						<input type="submit" class="btn btn-primary btn-sm "
							value="<spring:message text="Update"/> ">
					</c:if>
					<c:if test="${empty category.name}">
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
<h3 style="text-align: center;"><b>CATEGORY LIST</b></h3>
	<c:if test="${!empty categoryList}">
	<div class="table-responsive">
		<table  id="example" class=" display table table-striped table-bordered">
		<thead>
		<tr>
				<th width="80">Category Id</th>
				<th	width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
		</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${categoryList}" var="category">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td><a href="<c:url value="category/update/${category.id}"/>">Edit</a></td>
				<td><a href="<c:url value="category/remove/${category.id}"/>">Delete</a></td>
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