<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Activer Compte - LHCS</title>
	<link rel="stylesheet" href="assets/css/style.css" type="text/css">
	<sb:head includeScripts="false" includeScriptsValidation="false"
	includeStylesResponsive="true" />

<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />


<style>
.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

input[type="text"],input[type="password"] {
	height: 40px;
}
</style>
<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>
</head>
<body>
	<div id="header">
		<a href="index.html" class="logo"><img src="assets/images/logo.png" alt=""></a>
		<div class="clear"> </div>
				<ul id="topnav">
					<div class="wrap">
			        <li><a href="index.html">Accueil</a></li>
				        <li>
				            <a href="about.html">A propos</a>
				            
				        </li>
				        <li>
				            <a href="services.html">Services</a>
				            
				        </li>
				        <li>
				            <a href="#">Portfolio</a>
				            
				        </li>
				       
        		<li><a href="contact.html">Contact</a></li>
        		</div>	
    		</ul>
	</div>
	<div id="body" align="center">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title" align="center">Un mail de validation est envoy� � <s:property value="#session.mail"/>. Veuillez confirmer votre inscription en saisissant le code re�u.</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-success">
				<button type="button" class="close" data-dismiss="alert">�</button>
				<strong>Well done!</strong> You successfully logged-into the system.
				Now you can explore the complete features!
			</div>
			<s:form id="myForm" action="InscriptionConfirm" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
			<s:textfield label="Code d'activation" name="code"
									cssClass="col-lg-12" placeholder="Code d'activation" />
									<div class="col-lg-9 col-lg-offset-3">
									<s:reset cssClass="btn btn-default" value="Annuler" />
									<s:submit cssClass="btn btn-primary" value="Activer" />
								</div>
		</s:form>
		</div>
		
	</div>
	
	
		
		</div>
</body>
</html>