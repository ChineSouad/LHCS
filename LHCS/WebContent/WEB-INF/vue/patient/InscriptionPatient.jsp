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
<title>Inscription Patient - LHCS</title>
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
					
						<s:textfield label="Identifiant" name="identifiant"
							cssClass="col-lg-11" placeholder="Cin/Passeport" cssStyle="width:312px" />
						<table>
							<tr>
								<td><s:password label="Password" name="password"
										cssClass="col-lg-11" cssStyle="width:315px"
										tooltip="votre mot de passe doit etre plus que 8 caract�res de longueur dont les chiffres, les mins, les maj et les caract�res sp�ciaux"
										placeholder="Password" id="password" /></td>
								<td id="passwordStrength"></td>
							</tr>
							
						</table>
						<table>
							<tr>
								<td><s:password label="Confirm Password"
										id="confirmPasswordInput" name="confirmPasswordInput"
										cssStyle="width:315px" cssClass="col-lg-11"
										placeholder="Confirm Password" /></td>
								<td id="passwordvalid"></td>
							</tr>
						</table>
				
					</s:form>
                </div>
                <div class="tab-pane" id="tab2" style="width: 500px;margin:50px;">
                  <s:form id="myForm" action="InscriptionPatient" theme="bootstrap"
					validate="true" name="registerForm"
					cssClass="bs-example form-horizontal" method="post">
					 
						<s:select list="#{'homme':'homme','femme':'femme'}"
							headerKey="None" headerValue="None" label="Sexe" name="sexe"
							placeholder="Sexe" cssClass="col-lg-11" />
						<s:select
							list="#{'Madame':'Madame','Mademoiselle':'Mademoiselle','Monsieur':'Monsieur'}"
							headerKey="None" headerValue="None" label="Civilit�"
							name="civilite" placeholder="Civilit�" cssClass="col-lg-11" />
						<s:textfield label="Nom" name="Nom" cssClass="col-lg-11"
							placeholder="Nom" />
							
						<s:textfield label="Pr�nom" name="prenom" cssClass="col-lg-11"
							placeholder="Pr�nom" />
						<s:textfield label="Pr�nom du p�re" name="prenomPere"
							cssClass="col-lg-11" placeholder="Pr�nom du p�re" />
						<s:textfield label="Nom de m�re" name="nomMere"
							cssClass="col-lg-11" placeholder="Nom de m�re" />

						<s:textfield label="Pr�nom de m�re" name="prenomMere"
							cssClass="col-lg-11" placeholder="Pr�nom de m�re" />
						<s:textfield label="Nom d'�poux(se)" name="prenomEpoux"
							cssClass="col-lg-11" placeholder="Nom d'�poux(se)" />
						<table>
							<tr>
								<td>Ajouter Tuteur</td>
								<td><a href="#" data-toggle="modal"
									data-target="#basicModal"> <img alt="ajouter tuteur"
										src="assets/images/plus.ico" width="40"
										style="display: inline;"></a></td>
							</tr>
						</table>
						<s:select
							list="#{'Parent':'Parent','Epoux':'Epoux(se)', 'fils':'fils/fille', 'Ami':'Ami(e)'}"
							label="Lien familial avec le tuteur" name="lienFamilialTuteur"
							cssClass="col-lg-11" emptyOption="true" headerKey="None"
							headerValue="None" />

						<sj:datepicker id="dateNaissance" name="dateNaissance"
							label="Date de Naissance" cssClass="col-lg-11"
							parentTheme="bootstrap" placeholder="Date de naissance"
							changeMonth="true" changeYear="true" buttonImageOnly="true"
							yearRange="c-100:c+0" timepicker="false"
							timepickerShowSecond="false" timepickerFormat="hh:mm:ss" />
						<s:textfield label="Lieu de naissance" name="lieuNaissance"
							cssClass="col-lg-11" placeholder="Lieu de naissance"></s:textfield>
						<s:select
							list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}"
							label="Nationalit�" name="nationalite" cssClass="col-lg-11"
							emptyOption="true" headerKey="None" headerValue="None"
							 />
						<s:select
							list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}"
							label="Type du sang" name="typeSang" cssClass="col-lg-11"
							emptyOption="true" headerKey="None" headerValue="None"
							 />

						<s:textfield label="Poids" name="poids" cssClass="col-lg-11"
							placeholder="Poids"></s:textfield>
						<s:textfield label="Profession" name="profession"
							cssClass="col-lg-11" placeholder="Profession"></s:textfield>
						<s:textarea name="adresseProfession" label="Adresse du travail"
							placeholder="Adresse du travail" cssStyle="width:344px"></s:textarea>
						<h2>
							<s:checkbox name="beneficiaireCNAM" fieldValue="true"
								label="B�n�ficiaire CNAM" />
						</h2>
						<h2>
					
							<s:checkbox name="fumeur" fieldValue="true" label="fumeur" />
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
							name="telephoneFixe" cssClass="col-lg-11" placeholder="Fixe"></s:textfield>
						<s:textfield maxLength="8" size="8" name="telephonePortable"
							label="Num�ro de t�l�phone" cssClass="col-lg-11"
							placeholder="Mobile"></s:textfield>

						<div class="col-lg-9 col-lg-offset-3" align="right">
							<s:submit cssClass="btn btn-default" value="Cancel" />
							<s:submit cssClass="btn btn-primary" value="Submit"
								data-toggle="modal" data-target="#themodal" />
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

	<!-- ********* -->
	<div class="modal fade" id="basicModal"
		style="margin: auto; height: 500px; overflow: hidden;" tabindex="-1"
		role="dialog" aria-labelledby="basicModal" aria-hidden="false">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h4 class="modal-title" id="myModalLabel">Ajouter un Tuteur</h4>
		</div>
		<s:form id="myForm" action="AjoutTuteur" theme="bootstrap"
			validate="true" name="registerForm"
			cssClass="bs-example form-horizontal" method="post">
			<div class="modal-body">
				<s:textfield label="Identifiant" name="identifiant"
					cssClass="col-lg-11" placeholder="Identifiant" />
				<s:textfield label="Nom" name="nom" cssClass="col-lg-11"
					placeholder="Nom" />
				<s:textfield label="Pr�nom" name="prenom" cssClass="col-lg-11"
					placeholder="Pr�nom" />
				<sj:datepicker id="dateNaissance" name="dateNaissance"
					label="Date de Naissance" cssClass="col-lg-11"
					parentTheme="bootstrap" placeholder="jj/mm/aa" changeMonth="true"
					changeYear="true" buttonImageOnly="true" yearRange="c-100:c+0"
					timepicker="false" timepickerShowSecond="false"
					timepickerFormat="hh:mm:ss" />
				<s:textfield label="Profession" name="profession"
					cssClass="col-lg-11" placeholder="Profession" />
				<s:textfield label="Lieu du travail" name="lieuProfession"
					cssClass="col-lg-11" placeholder="Lieu du travail" />
				<s:textfield label="Email" name="email" cssClass="col-lg-11"
					placeholder="Email" />
				<s:textfield label="T�l�phone Fixe" name="telephoneFixe"
					cssClass="col-lg-11" placeholder="T�l�phone fixe" />
				<s:textfield label="T�l�phone mobile" name="telephoneMobile"
					cssClass="col-lg-11" placeholder="T�l�phone mobile" />
				<s:textfield label="Adresse" name="adresse" cssClass="col-lg-11"
					placeholder="Adresse" />

				<div class="col-lg-9 col-lg-offset-3" align="right">
					<s:submit cssClass="btn btn-default" value="Cancel" />
					<s:submit cssClass="btn btn-primary" value="Submit" />
				</div>
			</div>
		</s:form>
	</div>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- ********* -->
</body>
</html>