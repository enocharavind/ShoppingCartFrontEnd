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
<title>Insert title here</title>
</head>
<body>

<div id="modalButton">
	<c:choose>
	
		<c:when test="${empty supplier.id}">
		<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Add Supplier</button>
	</c:when>
	<c:otherwise> 
		<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Edit Supplier</button>
	</c:otherwise> 

	</c:choose>
	</div>
	
		<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
			
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Add Supplier</h4>
				</div>
				
				
				<div class="modal-body">
				<c:url var="addAction" value="supplier/add"></c:url>
			<form:form action="${addAction}" commandName="supplier" class="form-responsive form-horizontal">
						<div class="col-md-12">
						
							<div class="form-group">
								<form:label path="id" class="control-label col-md-4">
									<spring:message text="ID" />
								</form:label>
								<div class="col-md-4">
									<c:choose>
										<c:when test="${!empty supplier.id}">
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
							<form:label path="address"	class="control-label col-md-4"><spring:message text="ADDRESS" /></form:label>
								<div class="col-md-4">
									<form:input path="address" required="true" class="form-control" />
								</div>
							</div>
							
							
	</div>
	
	
		<c:if test="${!empty supplier.name}">
						<input type="submit" class="btn btn-primary btn-sm "
							value="<spring:message text="Update"/> ">
					</c:if>
					<c:if test="${empty supplier.name}">
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
<h3 style="text-align: center;"><b>SUPPLIER LIST</b></h3>
	<c:if test="${!empty supplierList}">
		<div class="table-responsive">
		<table  id="example" class=" display table table-striped table-bordered">
		<thead>
		<tr>
				<th width="80"> Id</th>
				<th	width="120"> Name</th>
				<th width="120"> Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${supplierList}" var="supplier">
			<tr>
				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td><a href="<c:url value="supplier/update/${supplier.id}"/>">Edit</a></td>
				<td><a href="<c:url value="supplier/remove/${supplier.id}"/>">Delete</a></td>
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