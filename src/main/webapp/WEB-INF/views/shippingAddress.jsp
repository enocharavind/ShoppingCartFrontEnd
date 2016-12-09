<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.panel {
    margin-top: 100px;
    margin-left: 50px;
    margin-right: 50px;
  
}</style>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
		
		<div class="content">
			<div class="panel panel-primary">
				<div class="panel-heading">Shipping Address</div>
				<div class="panel-body">
					<form:form class="form-horizontal" modelAttribute="shippingAddress">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 1</label>
							<div class="col-sm-10">
								<form:errors path="line1" class="error" />
								<form:input path="line1" type="text" autofocus="true" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 2</label>
							<div class="col-sm-10">
								<form:errors path="line2" class="error" />
								<form:input path="line2" type="text" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="col-sm-10">
								<form:errors path="city" class="error" />
								<form:input path="city" type="text"  class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="col-sm-10">
								<form:errors path="state" class="error" />
								<form:input type="text" path="state" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="col-sm-10">
								<form:errors path="country" class="error" />
								<form:input type="text" path="country" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip code</label>
							<div class="col-sm-10">
								<form:errors path="zipCode" class="error" />
								<form:input type="text" path="zipCode" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" class="form-control"/>
							</div>
						</div>
						<div class="col-md-offset-3">
							<input type="submit" name="_eventId_submitShippingAddress"
								class="btn btn-md btn-success" value="Submit"> <input
								type="submit" name="_eventId_back"
								class="btn btn-md btn-danger" value="Back">
						</div>
					</form:form>
				</div>
			</div>
		</div>

	</div>
</body>





</html>