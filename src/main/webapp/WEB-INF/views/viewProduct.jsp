<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
ul li{

    padding: 5px;
}

.jumbotron {
padding-top: 60px;
    padding-bottom: 230px;
    margin-top: 50px;
}
}

</style>
</head>
<body>
<div class="container">
				<div class="jumbotron">
					  <div class="col-md-12">
			                                <div class="col-md-6">
               <img src="<c:url value="F:\\workspace\\ShoppingCartFrontEnd\\src\\main\\resources\\images\\${product.id}.jpg"/>" alt="image" style="width:50%">   
                  
              
        							</div>
                <div class="col-md-6">
			<ul class="list-unstyled">
			
					<li ><em>Product: ${product.name}</em></li>
					<li > <em>Description: ${product.description}</em></li>
					<li><em>Price: Rs. ${product.price}</em></li>
					<li ><em>Category: ${product.category.name}</em></li>
					<li > <em>Supplier: ${product.supplier.name}</em></li>
     <li><c:url var="action" value="/addtocart/${product.id}"></c:url>
			<form:form action="${action}" >
			<input type="submit" class="btn btn-primary" value="Add To Cart" /></form:form></li> 
	
			
        	</ul> 
</div>
	    </div> 

				
				</div>


			</div>

</body>
</html>