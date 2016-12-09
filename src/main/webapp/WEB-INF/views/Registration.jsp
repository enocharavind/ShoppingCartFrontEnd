<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
	<link href="E:\workspace\ShoppingCartFrontEnd\src\main\resources\css" rel="stylesheet">
<title>Registration</title>
<style>
 img{
    padding-left: 70px;
    padding-top: 70px;
}


</style> 

</head>
<body>


	<div >
	<a href="Home" ><img class="home" 
	src="F:\workspace\ShoppingCartFrontEnd\src\main\resources\images\Apply-Online.png" 
	width="150px" height="150px"></a>
</div>

	<div class="container">
	<form:form modelAttribute="userDetails">
		
		<div class="panel panel-default">
		
			<div class="panel-heading"  style="padding:35px 50px">	
			<h3><span class="glyphicon glyphicon-lock"></span> REGISTRATION PAGE</h3></div>
			<div class="panel-body">
					
						<div>
						<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('id')}" var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
					  <div style="margin-bottom: 25px" class="input-group">
                                
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                       	<form:input path="id" class="form-control"   placeholder="USER ID"  pattern=".{4,10}" title="please enter 4 to 10 characters" />
                                    </div>
					</div>
					     
                              
                                    <div>
                                         <c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
								var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
                                    <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                       <form:input path="name" class="form-control"  placeholder="USER NAME"  />                                        	
                                    </div>
                                    </div>
                                    
                                    <div>
                                    <c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
								var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
                                    <div style="margin-bottom: 25px" class="input-group">
                                    	  	
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        	<form:input path="mail" class="form-control"   placeholder="EMAIL"  />
                                    </div>
                                    </div>
                                    
                                    <div>
                                    <c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
								var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
                                    <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                      	<form:input path="address" class="form-control"   placeholder="ADDRESS"   />                                     	
                                    </div>
                                    </div>
                                    
                                    <div>
                                             	<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('contact')}"
								var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
                                     <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    	<form:input path="contact" class="form-control"  placeholder="CONTACT"  title="please enter only numbers"   />                                    	 
                                    </div>
                                    </div>
                                    
                                    <div>
                                    	<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
								var="err">
								<div class="usertxterror">
									<span>${err.text}</span>
								</div>
							</c:forEach>
                                    <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>
                                        	<form:password path="password" class="form-control" placeholder="PASSWORD" pattern=".{4,10}" />
                                    </div>
                                    </div>
                                    

						
				
						</div>
						<div class="panel-footer">
					 	<input name="_eventId_submit" type="submit" value="Register" class="btn btn-primary btn-block"> 
						</div>
					
		
						
					</div>
	</form:form>

</div>
</body>
</html>