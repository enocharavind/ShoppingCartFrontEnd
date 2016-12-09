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
<title>Confirm Details</title>
<style>
img{
    padding-left: 60px;
    padding-top: 60px;
}

.container {
	padding-top:100px;
    padding-right: 270px;
    padding-left: 270px;
}
.panel-default>.panel-heading {
background-color: #2f4357;
      color:white !important;
      text-align: center;
      font-size: 30px;
}
.btn-primary {
    color: #fff;
    background-color:  #2f4357;
    border-color: #2e6da4;
    }
    .btn{
        padding: 7px 50px;
    }

</style>
</head>
<body>
	<div class="container">
	<form:form modelAttribute="userDetails">
		
		<div class="panel panel-default">
		
			<div class="panel-heading"  style="padding:35px 50px">	
			<h3><span class="glyphicon glyphicon-lock"></span>CONFIRM DETAILS</h3></div>
			<div class="panel-body">
                                <div style="margin-bottom: 25px" class="input-group">
                                       <i class="glyphicon glyphicon-lock"></i>
                                       <form:label path="id"> User ID: ${userDetails.id}</form:label> 
                                    </div>
                                    
                                    <div style="margin-bottom: 25px" class="input-group">
                                    <i class="glyphicon glyphicon-user"></i>
                                     <form:label path="name">Name: ${userDetails.name}</form:label> 
                                    </div>
                                    
                                    <div style="margin-bottom: 25px" class="input-group">
                                      <i class="glyphicon glyphicon-envelope"></i>
                                        	<form:label path="mail">Email: ${userDetails.mail}</form:label> 
                                    </div>
                                    
                                    <div style="margin-bottom: 25px" class="input-group">
                                      <i class="glyphicon glyphicon-home"></i>
                                     	<form:label path="Address">Address: ${userDetails.address}</form:label> 
                                    </div>
                                    
                                     <div style="margin-bottom: 25px" class="input-group">
                                      <i class="glyphicon glyphicon-earphone"></i>
                             <form:label path="contact">Contact: ${userDetails.contact}</form:label> 
                                    </div>
                                    
                                    
                                    <div style="margin-bottom: 25px" class="input-group">
                                     <i class="glyphicon glyphicon-eye-open"></i>
                                         <form:label path="password">Password :  ${userDetails.password}</form:label>
                                    </div>            			
						</div>
						
						<div class="panel-footer">
					 		<a  href="${flowExecutionUrl}&_eventId=edit"  aria-hidden="true" class="btn btn-primary fa fa-pencil "> Edit</a>
								<a  href="${flowExecutionUrl}&_eventId=submit"  aria-hidden="true" class="btn btn-primary fa fa-share"> Submit</a>
						</div>
						
					</div>
	</form:form>

</div>
</body>
</html>