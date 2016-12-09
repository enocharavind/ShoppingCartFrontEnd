<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.jumbotron {
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 30px;
    margin-top: 30px;
    }
.container{
padding-top:50px;
}
</style>

</head>
<body>
<c:choose>
<c:when test="${cartList==null}">
<div class="container">
				<div class="jumbotron">
		<a href="Home"><img alt="empty" src="E:\PROJECT 1\pics\cart-empty.png"></a>	
				</div>
			</div>
</c:when>
<c:otherwise>
	<div class="container">
		<div class="col-md-12">

			<div class="table-responsive" style="margin-left: 5%; width: 90%">
				<table id="example"
					class=" display table table-striped table-bordered">
					<thead>
						<tr>
							<th width="120">Image</th>
							<th width="150">Product Name</th>
							<th width="80">Quantity</th>
							<th width="80">Price</th>
							<th width="60"></th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td><img width="100px" height="100px"
									alt="${product.id}"
									src="<c:url value="E:\\workspace\\ShoppingCartFrontEnd\\src\\main\\resources\\images\\${cart.productID}.jpg"></c:url>" /></td>
								<td>${cart.productName}</td>
								<td>${cart.quantity}</td>
								<td>${cart.total}</td>
								<td><a
									href="<c:url value="/cart/remove/${cart.cart_id}"  />">Remove</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>


				<div class="col-md-12">
					<h3 style="text-align: center">
						Total: <span><i class="fa fa-inr" aria-hidden="true"></i>${sum}</span>
					</h3>
					<div class="col-md-10">
						<a href="Home"><button class="btn btn-info">Continue
								Shopping</button></a>
					</div>
					<div class="col-md-2">
						<a class="btn btn-success"
							href="checkoutDetails.obj">Checkout</a>
					<%-- 		<form:form modelAttribute="userDetails">
  <input type="hidden" name="loggedInUser" value="${loggedInUser}"> 
</form:form> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	});
</script>
	</c:otherwise>
</c:choose>

</body>
</html>