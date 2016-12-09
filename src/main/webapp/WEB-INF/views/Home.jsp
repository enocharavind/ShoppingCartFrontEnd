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
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/demo.css">
<link rel="stylesheet"
	href="css/footer-distributed-with-address-and-phones.css">

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css">
<title>Gymsported</title>
<style>


/* h1 {
	vertical-align: baseline;
	font-weight: 900;
	font-size: 53px;
	font-family: serif;
	color: #000000 !important;
	text-align: center;
} */

/* .carousel {
	background-color: 2f4357;
} */

 .container-fluid {
	background-color: #2f4357;
} 

 
 #myCarousel {
	padding-top: 0px;
} 
 
#logo {
	color: #2f4357;
}

.btn-primary {
	color: #fff;
	background-color: #2f4357;
	border-color: #2e6da4;
}




</style>

</head>


<body  >
 <!-- style="background-color: #f7f7f7;"  background="E:\PROJECT 1\pics\carousel\1.gif "-->

	<!-- <div data-role="header" data-position="fixed">
		<h1>
			<b>FabGift</b>
		</h1> -->
		<%-- 	<div style="text-align: right;">
			<c:choose>

				<c:when test="${loggedout==true}">
					<h4 style="padding-right: 20px">
						<em>${logoutMsg}</em>
					</h4>
				</c:when>
			</c:choose>
		</div> --%>

		<!-- 	================================================================================================================== -->
		<!-- menu starts -->
		<nav class="navbar navbar-inverse ">

			<div class="container-fluid">

				<ul class="nav navbar-nav">
					<li><a href="Home"><span><img alt="logo"
								style="vertical-align: baseline;" src="F:\New folder\sportsgym.jpg"
								width="50px" height="50px"></span></a></li>
					<c:forEach items="${categoryList}" var="category">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="${category.name}">${category.name}<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach items="${category.products}" var="product">
									<li><a href="<c:url value="viewProduct/${product.id}"/>" >${product.name}</a></li> 
								</c:forEach>
							</ul></li>
					</c:forEach>
					
					
				</ul>
				
				
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">CONTACT<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Hyderabad</a></li>
							<li><a href="#">Delhi</a></li>
							<li><a href="#">Jaipur</a></li>
						</ul></li>
					<li><a href="about">ABOUT US</a></li>

					<c:choose>
						<c:when test="${empty loggedInUser}">
							<li><a href="Login">LOGIN</a></li>
							<li><a href="memberShip.obj">REGISTER</a></li>
						</c:when>

						<c:when test="${not empty loggedInUser}">
							<li><a href="myCart"> <i class="fa fa-shopping-cart"
									aria-hidden="true"></i> CART
							</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><i class="fa fa-user fa-fw"></i>Hi<em>
									${loggedInUser}!</em><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<!-- <li><a href="#"><i class="fa fa-pencil fa-fw"></i><em>Profile</em></a></li> -->
									<li class="divider"></li>
									<li><a href="logout"><i class="fa fa-unlock-alt"></i><em>LogOut</em></a></li>
								</ul></li>
						</c:when>
					</c:choose>
				</ul>
			</div>
		</nav>
		<!-- menu  ends-->

		<!-- 	================================================================================================================= -->

		<div style="text-align: center;">
			<c:if test="${InvalidCredentials==true}">
				<h4 style="padding-right: 10px">
					<em>${errorMessage}</em>
				</h4>
			</c:if>

			<c:if test="${successRegister==true}">
				<h4 style="padding-right: 10px">
					<em>${SuccessMessage}</em>
				</h4>
			</c:if>

			<c:if test="${userExist==true}">
				<h4 style="padding-right: 10px">
					<em>${failureMessage}</em>
				</h4>
			</c:if>

		</div>
		<!-- ==================================================================================================================== -->

		<!-- Carousel images -->
		<div >
			<c:if test="${(carousel==true)}">
		
				<!-- Full Page Image Background Carousel Header -->
  	<header id="myCarousel" class="carousel slide"> <!-- Indicators -->

  	<ol class="carousel-indicators">
  		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
  		<li data-target="#myCarousel" data-slide-to="1"></li>
  		<li data-target="#myCarousel" data-slide-to="2"></li>
  		<li data-target="#myCarousel" data-slide-to="3"></li>
  		<li data-target="#myCarousel" data-slide-to="4"></li>
  	</ol>

  	<!-- Wrapper for Slides -->
  	<div class="carousel-inner">
  	
  	 	<div class="item active">
  			<!-- Set the third background image using inline CSS below. -->
  			<div class="fill"> <img  src="F:\workspace\ShoppingCartFrontEnd\src\main\resources\images\asport.jpg"alt="#" width="100%"
								height="75%"></div>					
  		</div> 
  		
  			<div class="item ">
  			<!-- Set the first background image using inline CSS below. -->
  			<div class="fill" ><img  src="F:\workspace\ShoppingCartFrontEnd\src\main\resources\images\bsport.jpg" alt="#" width="100%"
								height="75%"></div>
  		</div>
  		
  		<div class="item ">
  			<!-- Set the first background image using inline CSS below. -->
  			<div class="fill" ><img  src="F:\workspace\ShoppingCartFrontEnd\src\main\resources\images\sports.jpg" alt="#" width="100%"
								height="75%"></div>
  		</div>
  		
  		
  		<div class="item">
  			<!-- Set the second background image using inline CSS below.  -->
  			<div class="fill"> <img  src="F:\workspace\ShoppingCartFrontEnd\src\main\resources\images\sport.jpg" alt="#" width="100%"
								height="75%"></div>
							
  		</div>
  		
  		
  	
</div>
  	<!-- Controls -->
  	<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <span class="icon-prev"></span> </a>
  	<a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="icon-next"></span>	</a>
  	</header>
  		
			</c:if>
		
		</div>

		<!-- ====================================================================================================================== -->
		<!-- 	Including pages in Home page  -->

		<div id=viewProduct>
			<c:if test="${clickedIndividualProduct==true}">
				<jsp:include page="viewProduct.jsp"></jsp:include>
			</c:if>
		</div>

	</div>
	<div id="about">
		<c:if test="${clickedAbout==true}">
			<jsp:include page="About.jsp"></jsp:include>
		</c:if>
	</div>

	<div id="cart">
		<c:if test="${userclickedcart==true}">
			<jsp:include page="viewCart.jsp"></jsp:include>
		</c:if>
	</div>


	<div id="product">
		<c:if test="${IsClickedProduct==true}">
			<jsp:include page="ProductList.jsp"></jsp:include>
		</c:if>
	</div>


	<div id="Registration">
		<c:if test="${userClickedRegisterHere==true}">
			<jsp:include page="Registration.jsp"></jsp:include>
		</c:if>
	</div>


	<div id="Login">
		<c:if test="${userClickedLoginHere==true}">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if>
	</div>


	<div id="admin">
		<c:if test="${isAdmin==true}">
			<jsp:include page="adminHome.jsp"></jsp:include>
		</c:if>
		<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
				<%@ include file="category.jsp"%>
			</c:if>
		</div>
		<div id="product">
			<c:if test="${isAdminClickedproducts==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
				<%@ include file="Product.jsp"%>
			</c:if>
		</div>
		<div id="suppliers">
			<c:if test="${isAdminClickedsuppliers==true}">
				<jsp:include page="adminHome.jsp"></jsp:include>
				<%@ include file="supplier.jsp"%>
			</c:if>
		</div>
	</div>


</body>





	


</html>