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
<title>Registration</title>
</head>
<body >



${RegisterMsg}
<div class="container-fluid">
	<form:form action="register" class="form-responsive" method="post" commandName="userDetails" >
					
<div class=form-group>
<form:label path="Id" ><spring:message text="USER ID" /></form:label>
				
<form:input path="id"  class="form-control" placeholder="Userid" requried="true"/>		
			</div>
<div class=form-group>			
<form:label path="name"><spring:message text="NAME"/></form:label>
							<form:input  path="name"   class="form-control" placeholder="username" /><br>
					</div>
<div class=form-group>	
<form:label path="password"><spring:message text="PASSWORD"/></form:label>
							<form:password  path="password"  class="form-control" placeholder="password" /><br>
		</div>					
					<div class=form-group>	
<form:label path="mail" ><spring:message text="EMAILID" />
								</form:label>
							<form:input  path="mail" type="email" class="form-control"  placeholder="email" /><br>
							</div>
							
<div class=form-group>
<form:label path="contact"><spring:message text="CONTACT"/></form:label>
<form:input  path="contact" class="form-control"  placeholder="contact" /><br>
							</div>
			<div class=form-group>				
			<form:label path="address"><spring:message text="ADDRESS"/></form:label>
							<form:input path="address"  class="form-control"  placeholder="address" /><br>
					</div>
						
						<input type="submit" class="btn btn-success btn-block"
							value="Register"/>
</form:form>
</div>
	
</body>
</html>