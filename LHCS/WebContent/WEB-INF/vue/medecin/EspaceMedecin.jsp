<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<sb:head includeScripts="false" includeScriptsValidation="false"
	includeStylesResponsive="true" />
<sj:head jqueryui="true" />
<title>Espace Medecin - LHCS</title>
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
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
<style>
.datepicker {
	position: absolute;
}
</style>

</head>

<script type="text/javascript">
	$(document).ready(function() {
		$(".btn").click(function() {
			$("#myModal").modal('show');
		});
	});
</script>
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
	<div id="body" align="center" >
		<div class="well">
		<div style="width: 500px">
						<s:form id="myForm" action="loginMedecin" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							>
							<fieldset>
								<legend>Login Form</legend>

								<s:textfield label="Email" name="email"
									cssClass="col-lg-12" placeholder="Email" />

								<s:password label="Password" name="password"
									cssClass="col-lg-12" placeholder="Password" />

								<div class="col-lg-9 col-lg-offset-3" align="right">
									<s:submit cssClass="btn btn-default" value="Cancel" />
									<s:submit cssClass="btn btn-primary" value="Login" />
								</div><br></br><br></br>
								<p align="center"><u><a href="InscriptionMedForm" style="color: #00ba8b; font-size:0.5cm;">Signup</a></u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u><a href="#" data-toggle="modal" data-target="#basicModal" style="color: #00ba8b;font-size:0.5cm;">Mot de passe oubli&eacute;</a></u></p>
							
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
								<!-- ********* -->
	  <div class="modal fade" id="basicModal" style="margin: auto;height: 300px;overflow: hidden;" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="false">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Réinitialiser mot de passe</h4>
          </div>
          <s:form id="myForm" action="NewPassword" theme="bootstrap"
							validate="true"
							cssClass="bs-example form-horizontal" method="post">
          <div class="modal-body">
          
          <p>Veuillez saisir votre adresse email, </br>un mail vous serait envoyer pour vous permettre la réinitialisation de votre mot de passe. </p>
          
            <s:textfield label="Email" name="email" cssClass="col-lg-11"
									placeholder="Email" />
			
			         
                 <div class="col-lg-9 col-lg-offset-3" align="right">
								<s:submit cssClass="btn btn-default" value="Cancel" />
								<s:submit cssClass="btn btn-primary" value="Submit"/></div>
       </div>
      </s:form>
    </div>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- ********* -->
	
</body>
</html>