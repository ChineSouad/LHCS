<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Esapce Patient - LHCS</title>
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
		
	
			<!-- img src="assets/images/laboratory.jpg" alt=""-->
			
	
		<div class="well">
		<div style="width: 500px">
			<s:form id="myForm" action="loginPatient" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							>
							<fieldset >
								<legend>Login Form</legend>

								<s:textfield label="Email" name="email"
									cssClass="col-lg-12" placeholder="Email" cssStyle=" width:280px"/>

								<s:password label="Password" name="password"
									cssClass="col-lg-12" placeholder="Password" cssStyle=" width:280px" />

								<div class="col-lg-9 col-lg-offset-3" align="right">
									<s:submit cssClass="btn btn-default" value="Cancel" />
									<s:submit cssClass="btn btn-primary" value="Login" />
								</div><br></br><br></br>
								<p align="center"><u><a href="InscriptionPatForm" style="color: #00ba8b; font-size:0.5cm;">Signup</a></u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u><a href="" style="color: #00ba8b;font-size:0.5cm;">Mot de passe oubli&eacute;</a></u></p>
							
							</fieldset>
							</s:form>
							</div>
							</div>
							</div>
							
							
							
		

	<div id="footer">
		<div>
			<p>
				<span>2023 &copy; Illumelabs Diagnostic Center.</span><a href="#" >Terms of Service</a> | <a href="#" >Privacy Policy</a>
			</p>
			<ul>
				<li id="facebook">
					<a href="http://freewebsitetemplates.com/go/facebook/">facebook</a>
				</li>
				<li id="twitter">
					<a href="http://freewebsitetemplates.com/go/twitter/">twitter</a>
				</li>
				<li id="googleplus">
					<a href="http://freewebsitetemplates.com/go/googleplus/">googleplus</a>
				</li>
				<li id="rss">
					<a href="#" >rss</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>