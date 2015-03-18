<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Reinitialiser mot de passe - LHCS</title>
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
	<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$('#password, #confirmPasswordInput')
								.on(
										'keyup',
										function(e) {

											if ($('#password').val() == ''
													&& $(
															'#confirmPasswordInput')
															.val() == '') {
												$('#passwordStrength')
														.removeClass().html('');

												return false;
											}

											if ($('#password').val() != ''
													&& $(
															'#confirmPasswordInput')
															.val() != ''
													&& $('#password').val() != $(
															'#confirmPasswordInput')
															.val()) {
												$('#passwordStrength')
														.removeClass()
														.addClass(
																'alert alert-error')
														.html(
																'Passwords do not match!');
												return false;
											}

											// Must have capital letter, numbers and lowercase letters
											var strongRegex = new RegExp(
													"^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$",
													"g");

											// Must have either capitals and lowercase letters or lowercase and numbers
											var mediumRegex = new RegExp(
													"^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$",
													"g");

											// Must be at least 6 characters long
											var okRegex = new RegExp(
													"(?=.{6,}).*", "g");

											if (okRegex.test($(this).val()) === false) {
												// If ok regex doesn't match the password
												$('#passwordStrength')
														.removeClass()
														.addClass(
																'alert alert-error')
														.html(
																'Password must be at least 6 characters long.');

											} else if (strongRegex.test($(this)
													.val())) {
												// If reg ex matches strong password
												$('#passwordStrength')
														.removeClass()
														.addClass(
																'alert alert-success')
														.html('Good Password!');
											} else if (mediumRegex.test($(this)
													.val())) {
												// If medium password matches the reg ex
												$('#passwordStrength')
														.removeClass()
														.addClass(
																'alert alert-info')
														.html(
																'Make your password stronger with more capital letters, more numbers and special characters!');
											} else {
												// If password is ok
												$('#passwordStrength')
														.removeClass()
														.addClass(
																'alert alert-error')
														.html(
																'Weak Password, try using numbers and capital letters.');
											}

											return true;
										});
					});
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
			<h3 class="panel-title" align="center">Veuillez saisir votre nouveau mot de passe.</h3>
		</div>
		<div class="panel-body">
			<s:form id="myForm" action="UpdatePwd" theme="bootstrap"
							validate="true" cssClass="bs-example form-horizontal"
							method="post">
			<s:password label="Nouveau mot de passe" name="password"
									cssClass="col-lg-11" placeholder="Password" id="password" />
								<s:password label="Confirm Password" id="confirmPasswordInput"
									name="confirmPasswordInput" cssClass="col-lg-11"
									placeholder="Confirm Password" />
								<p>
								<div class="" id="passwordStrength"></div>
								</p>
									<div class="col-lg-9 col-lg-offset-3">
									<s:reset cssClass="btn btn-default" value="Annuler" />
									<s:submit cssClass="btn btn-primary" value="valider" />
								</div>
		</s:form>
		</div>
		
	</div>
	
	
		
		</div>
</body>
</html>