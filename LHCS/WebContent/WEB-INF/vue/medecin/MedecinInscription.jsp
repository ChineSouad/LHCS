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
<title>Inscription Medecin - LHCS</title>
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
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".btn").click(function() {
			$("#myModal").modal('show');
		});
	});
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
												$('#passwordvalid')
														.removeClass()

														.html(
																'<img src="assets/images/false.ico" width="50"/>');
												return false;
											}

											if ($('#password').val() != ''
													&& $(
															'#confirmPasswordInput')
															.val() != ''
													&& $('#password').val() == $(
															'#confirmPasswordInput')
															.val()) {
												$('#passwordvalid')
														.removeClass()

														.html(
																'<img src="assets/images/true.ico" width="50"/>');
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

														.html(
																'<img src="assets/images/false.ico" width="50"/>');

											} else if (strongRegex.test($(this)
													.val())) {
												// If reg ex matches strong password
												$('#passwordStrength')
														.removeClass()

														.html(
																'<img src="assets/images/true.ico" width="50"/>');
											} else if (mediumRegex.test($(this)
													.val())) {
												// If medium password matches the reg ex
												$('#passwordStrength')
														.removeClass()

														.html(
																'<img src="assets/images/false.ico" width="50"/>');
											} else {
												// If password is ok
												$('#passwordStrength')
														.removeClass()

														.html(
																'<img src="assets/images/false.ico" width="50"/>');
											}

											return true;
										});
					});
</script>

<body>
	<div id="header">
		<a href="index.html" class="logo"><img
			src="assets/images/logo.png" alt=""></a>
		<div class="clear"></div>
		<ul id="topnav">
			<div class="wrap">
				<li><a href="index.html">Accueil</a></li>
				<li><a href="about.html">A propos</a></li>
				<li><a href="services.html">Services</a></li>
				<li><a href="#">Portfolio</a></li>

				<li><a href="contact.html">Contact</a></li>
			</div>
		</ul>
	</div>
	<div id="body" align="center">


		<!-- img src="assets/images/laboratory.jpg" alt=""-->

 
		<div class="well">
		<div class="tabbable" style="margin-bottom: 18px;">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab">Donn&eacute;es d'authentification</a></li>
                <li><a href="#tab2" data-toggle="tab">Donn&eacute;es personnelles</a></li>
                <li><a href="#tab3" data-toggle="tab">Contact</a></li>
              </ul>
              <div class="tab-content" style="padding-bottom: 9px; border-bottom: 1px solid #ddd;">
                <div class="tab-pane active" id="tab1" style="width: 500px; margin:50px;">
                  <s:form id="myForm" action="InscriptionPatient" theme="bootstrap"
					validate="true" name="registerForm"
					cssClass="bs-example form-horizontal" method="post">
					
						<s:textfield label="N� d'ordre" name="numOrdre"
									cssClass="col-lg-11" placeholder="N� d'ordre" />
									<s:password label="Password" name="password"
									cssClass="col-lg-11" placeholder="Password" id="password" />
								<s:password label="Confirm Password" id="confirmPasswordInput"
									name="confirmPasswordInput" cssClass="col-lg-11"
									placeholder="Confirm Password" />
								<p>
								<div class="" id="passwordStrength"></div>
								</p>
					</s:form>
                </div>
                <div class="tab-pane" id="tab2" style="width: 500px;margin:50px;">
                  <s:form id="myForm" action="InscriptionPatient" theme="bootstrap"
					validate="true" name="registerForm"
					cssClass="bs-example form-horizontal" method="post">
					 
						 <s:textfield label="Nom" name="Nom" cssClass="col-lg-11"
									placeholder="Nom" />
								
								<s:textfield label="Pr�nom" name="prenom" cssClass="col-lg-11"
									placeholder="Pr�nom" />
                                  <s:select list="#{'Madame':'Madame','Mademoiselle':'Mademoiselle','Monsieur':'Monsieur'}" headerKey="None" headerValue="None" label="Civilit�"
									name="civilite" placeholder="Civilit�" cssClass="col-lg-11" />
								  <sj:datepicker id="dateNaissance" name="dateNaissance"
									label="Date de Naissance" cssClass="col-lg-11"
									 parentTheme="bootstrap"
									placeholder="Date de naissance" changeMonth="true"
									changeYear="true" buttonImageOnly="true" yearRange="c-100:c+0" timepicker="false" 
                                     timepickerShowSecond="false" timepickerFormat="hh:mm:ss" />
                                     <s:select list="#{'gastro':'gastro','psychiatre':'psychiatre','dermato':'dermato'}" label="Sp�cialit�"
									name="specialite" cssClass="col-lg-11"
									 emptyOption="true"
									headerKey="None" headerValue="None" />
                                   <s:select list="#{'FMS':'FMS', 'FMT':'FMT'}"
									label="Etablissement d'�tudes" name="etablissementEtude"
									cssClass="col-lg-11" 
									emptyOption="true" headerKey="None" headerValue="None" />
								<s:select list="#{'professeur':'professeur','Docteur':'Docteur'}"
									label="Titre" name="titre" cssClass="col-lg-11"
									emptyOption="true" headerKey="None" headerValue="None" />
								<s:select list="#{'Salari�':'Salari�','Lib�ral':'Lib�ral','Salari� et Lib�ral':'Salari� et Lib�ral','M�decin militaire':'M�decin militaire'}"
									label="Mode d'exercice" cssClass="col-lg-11" name="modeExercice"
									 emptyOption="true"
									headerKey="None" headerValue="None" />
									<s:textfield label="Lieu de Prestation" name="lieuPrestation"
									cssClass="col-lg-11" placeholder="Lieu de prestation"></s:textfield>
									<s:textarea name="adresse" label="Adresse" placeholder="Adresse" cssStyle="width:344px"></s:textarea>
								<h2>
									<s:checkbox name="adherentCnam" fieldValue="true"
										label="Adh�rent CNAM" />
								</h2>
							       
					 </s:form>
                </div>
                <div class="tab-pane" id="tab3" style="width: 500px;margin:50px;">
                   <s:form id="myForm" action="InscriptionPatient" theme="bootstrap"
					validate="true" name="registerForm"
					cssClass="bs-example form-horizontal" method="post">
					 
						<s:textfield label="Adresse email" name="email"
									cssClass="col-lg-11" placeholder="Email" />
								
								<s:textfield maxLength="8" size="8" label="Num�ro T�l�phone"
												name="phoneFixe" cssClass="col-lg-11" placeholder="Fixe"
												></s:textfield>
									<s:textfield maxLength="8" size="8" name="phoneMobile" label="Num�ro de t�l�phone"
												cssClass="col-lg-11" placeholder="Mobile"></s:textfield>
								
								<s:textfield maxLength="8" size="8" label="Num�ro de Fax" name="fax"
									cssClass="col-lg-11" placeholder="Fax"/>
								
								
							<div class="col-lg-9 col-lg-offset-3" align="right">
								<s:submit cssClass="btn btn-default" value="Cancel" />
								<s:submit cssClass="btn btn-primary" value="Submit"
									data-toggle="modal" data-target="#themodal" /></div>
								<div id="themodal" class="modal fade col-lg-9 col-lg-offset-3"
									data-backdrop="static">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h3>Signup Form Submission</h3>
											</div>
											<div class="modal-body">
												<p>Are you sure you want to do this?</p>
												<div class="progress progress-striped active">
													<div id="doitprogress" class="progress-bar"></div>
												</div>
											</div>
											<div class="modal-footer">
												<sj:submit cssClass="btn btn-default" value="Close"
													data-dismiss="modal" />
												<sj:submit cssClass="btn btn-primary" value="Yes"
													id="yesbutton" formId="myForm" data-loading-text="Saving.."
													data-complete-text="Submit Complete!" />
											</div>
										</div>
									</div>
								</div>
					</s:form>
                </div>
              </div>
            </div></div>
				
			</div>
	
	<div id="footer">
		<div>
			<p>
				<span>2023 &copy; Illumelabs Diagnostic Center.</span><a href="#">Terms
					of Service</a> | <a href="#">Privacy Policy</a>
			</p>
			<ul>
				<li id="facebook"><a
					href="http://freewebsitetemplates.com/go/facebook/">facebook</a></li>
				<li id="twitter"><a
					href="http://freewebsitetemplates.com/go/twitter/">twitter</a></li>
				<li id="googleplus"><a
					href="http://freewebsitetemplates.com/go/googleplus/">googleplus</a>
				</li>
				<li id="rss"><a href="#">rss</a></li>
			</ul>
		</div>


	</div>

	
</body>
</html>