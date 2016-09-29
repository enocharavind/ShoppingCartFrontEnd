
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>MYGYM</title>
<style>
</style>

</head>
<body style="background-color: #f7f7f7;">

	<!-- 
		<!-- <!-- <div data-role="header" data-position="fixed">
		<nav class="navbar navbar-default navbar-fixed-top top-nav-collapse"> -->
		
		<img src="F:/sportsgym.jpg" width="150px" height="150px" class="img-circle"alt="logo">
		
			<!-- <h1>Welcome to  GYM</h1> -->
			
			<%-- ${SuccessMessage} --%>
			
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
					<li><a href="ProductList">PRODUCTS</a></li>
					
					<!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
					<li><i class="icon-gift"></i></li> -->

				</ul>
				<ul class="nav navbar-nav navbar-left">

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">CONTACT<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Hyderabad</a></li>
							<li><a href="#">Delhi</a></li>
							<li><a href="#">Jaipur</a></li>
						</ul></li>
					<li><a href="#">ABOUT US</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${empty loggedInUser}">
							<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
							<li><a href="Registration"><span class="glyphicon glyphicon-registration-mark"></span>REGISTER</a></li>

						</c:when>

						<c:when test="${not empty loggedInUser}">

							<li><a href="logout">LOGOUT</a></li>
						</c:when>


					</c:choose>


				</ul>
			</div>
		</nav>
		
			<!-- 	<tr> -->
					<<%-- c:choose>
						<c:when test="${empty loggedInUser}">
							<td ><a href="Login">Login</a>&nbsp;&nbsp;</td>
							${errorMessage}
							<td><a href="Registration">Register</a>&nbsp;&nbsp;</td>
						</c:when>

						<c:when test="${not empty loggedInUser}">
							<td>Welcome ${loggedInUser},</td>
							<td align="right"><a href="logout">Logout</a></td>
						</c:when>
					</c:choose>
				</tr> --%>

				<%-- <tr>
					<c:if test="${loggedOut==true}">
					</c:if>
					<td>${logOutMsg}</td>
				</tr> --%>
				<%-- 
				<tr>
					<c:if test="${not empty cartSize}">
						<td align="right"><a href="myCart">My cart</a>(${cartSize})</td>
					</c:if>
				</tr> --%>

					</div>
<%-- 
		<div >
			<ul id=menu>
				<c:if test="${not empty List}">
					<c:forEach items="${category.List}" var="category ">
						<li><a href="${category.name}">${category.name}</a>
						
							
					</c:forEach>
				</c:if>
			</ul>
			<br> <br> <br>
		--
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>
						</tr>
						<tr>
							<td align="left">${SelectedProduct.id}</td>
							<td align="left">${SelectedProduct.name}</td>
							<td align="left">${SelectedProduct.description}</td>
							<td align="left">${SelectedProduct.price}</td>
							<td align="left">${SelectedProduct.category.name}</td>
							<td align="left">${SelectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>

 --%>
		${message}

		<div id="Registration">

			<c:if test="${userClickedRegisterHere==true}">
				<jsp:include page="Registration.jsp"></jsp:include>
			</c:if>
		</div>


		${failureMessage}
		<div id="Login">

			<c:if test="${userClickedLoginHere==true}">
				<jsp:include page="Login.jsp"></jsp:include>
			</c:if>
		</div>
<div id="product">
<c:if test="${isClickedProduct==true}"></c:if>
<jsp:include page="ProductList.jsp"></jsp:include>
</div>

		<div id="admin">
			<c:if test="${isAdmin==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
			
			</c:if>
			<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
									<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/category.jsp" %>		
			</c:if>
			</div>
				
			<div id="products">
			<c:if test="${isAdminClickedproducts==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
				<jsp:include page="Product.jsp"></jsp:include>
				<%-- <%@ include file="/views/Product.jsp" %> --%>	
			</c:if>
			</div>			
			
			<div id="suppliers">
			<c:if test="${isAdminClickedsuppliers==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
							<%@ include file="/views/supplier.jsp" %>	
			</c:if>
			</div>

		</div>
	




</body>
</html>