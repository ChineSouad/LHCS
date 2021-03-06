<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ page isELIgnored ="false" %>
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
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
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


</head>

<script type="text/javascript">
$(document).ready(function(){
	$(".btn").click(function(){
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
	                 <div id="body" align="center" >
	                 <h3>Formulaire d'inscription</h3>
		             <div class="well" align="left">
			         <div class="container" >
				     <div class="row"  >
					 <div class="col-lg-6" >
						<s:form id="myForm" action="InscriptionMedecin" theme="bootstrap"
							validate="true" name="registerForm"
							cssClass="bs-example form-horizontal" method="post">
							<fieldset><legend>Donn&eacute;es d'authentification</legend>
							<s:textfield label="Identifiant" name="identifiant"
									cssClass="col-lg-11" placeholder="Cin/Passeport" />
									<s:password label="Password" name="password"
									cssClass="col-lg-11" placeholder="Password" id="password" />
								<s:password label="Confirm Password" id="confirmPasswordInput"
									name="confirmPasswordInput" cssClass="col-lg-11"
									placeholder="Confirm Password" />
								<p>
								<div class="" id="passwordStrength"></div>
								</p>
							</fieldset>
							<fieldset>
								<legend>Donn&eacute;es Personnelles</legend>

								
								<s:textfield label="Nom" name="Nom" cssClass="col-lg-11"
									placeholder="Nom" />
								
								<s:textfield label="Prénom" name="prenom" cssClass="col-lg-11"
									placeholder="Prénom" />
									<s:textfield label="Prénom du père" name="prenomPere" cssClass="col-lg-11"
									placeholder="Prénom du père" />
									<s:textfield label="Nom de mère" name="nomMere" cssClass="col-lg-11"
									placeholder="Nom de mère" />
								
								<s:textfield label="Prénom de mère" name="prenomMere" cssClass="col-lg-11"
									placeholder="Prénom de mère" />
									<s:textfield label="Nom d'époux(se)" name="nomEpoux" cssClass="col-lg-11"
									placeholder="Nom d'époux(se)" />
									<table><tr><td><s:select list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}" label="Tuteur"
									name="tuteur" cssClass="col-lg-11"
									 emptyOption="true"
									headerKey="None" headerValue="None" cssStyle=" width:200px"/></td><td><a  href="#" data-toggle="modal" data-target="#basicModal"> <img alt="ajouter tuteur"  src="assets/images/plus.ico" width="30" style="display: inline;"></a></td></tr></table>
								<s:select list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}" label="Lien familial avec le tuteur"
									name="lienFamilialTuteur" cssClass="col-lg-11"
									 emptyOption="true"
									headerKey="None" headerValue="None" cssStyle=" width:200px"/>
									 <s:select list="#{'homme':'homme','femme':'femme'}" headerKey="None" headerValue="None" label="Sexe"
									name="sexe" placeholder="Sexe" cssClass="col-lg-11" />
                                  <s:select list="#{'Madame':'Madame','Mademoiselle':'Mademoiselle','Monsieur':'Monsieur'}" headerKey="None" headerValue="None" label="Civilité"
									name="civilite" placeholder="Civilité" cssClass="col-lg-11" />
								  <sj:datepicker id="dateNaissance" name="dateNaissance"
									label="Date de Naissance" cssClass="col-lg-11"
									displayFormat="mm-dd-yy" parentTheme="bootstrap"
									placeholder="Date de naissance" changeMonth="true"
									changeYear="true" buttonImageOnly="true" yearRange="c-100:c+0" timepicker="false" 
                                     timepickerShowSecond="false" timepickerFormat="hh:mm:ss" />
                                     <s:textfield label="Lieu de naissance" name="lieuNaissance"
									cssClass="col-lg-11" placeholder="Lieu de naissance"></s:textfield>
								<s:select list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}" label="Nationalité"
									name="nationalite" cssClass="col-lg-11"
									 emptyOption="true"
									headerKey="None" headerValue="None" cssStyle=" width:200px"/>
                                     <s:select list="#{'A+':'A+','A-':'A-', 'B+':'B+', 'B-':'B-','AB+':'AB+', 'AB-':'AB-', 'O+':'O+', 'O-':'O-'}" label="Type du sang"
									name="typeSang" cssClass="col-lg-11"
									 emptyOption="true"
									headerKey="None" headerValue="None" cssStyle=" width:100px"/>
                                   
									<s:textfield label="Poids" name="poids"
									cssClass="col-lg-11" placeholder="Poids"></s:textfield>
									<s:textfield label="Profession" name="profession"
									cssClass="col-lg-11" placeholder="Profession"></s:textfield>
									<s:textarea name="adresseProfession" label="Adresse du travail" placeholder="Adresse du travail" cssStyle="width:344px"></s:textarea>
								<h2>
									<s:checkbox name="beneficiaireCNAM" fieldValue="true"
										label="Bénéficiaire CNAM" />
								</h2>
								<h2>
									<s:checkbox name="fumeur" fieldValue="true"
										label="fumeur" />
								</h2>
							        </fieldset>
							           <fieldset>
							      	<legend>Contact</legend>

									<s:textfield label="Adresse email" name="email"
									cssClass="col-lg-11" placeholder="Email" />
								
								<s:textfield maxLength="8" size="8" label="Numéro Téléphone"
												name="telephoneFixe" cssClass="col-lg-11" placeholder="Fixe"
												></s:textfield>
									<s:textfield maxLength="8" size="8" name="telephoneMobile" label="Numéro de téléphone"
												cssClass="col-lg-11" placeholder="Mobile"></s:textfield>
								
						
								
								
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
							
							
							</fieldset>
						</s:form>
					</div>
				</div>
				
			</div>
			
		</div>
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
	  <div class="modal fade" id="basicModal" style="margin: auto;height: 500px;overflow: hidden;" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="false">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Ajout Tuteur</h4>
          </div>
          <s:form id="myForm" action="AjoutTuteur" theme="bootstrap"
							validate="true" name="registerForm"
							cssClass="bs-example form-horizontal" method="post">
          <div class="modal-body">
            <s:textfield label="Identifiant" name="identifiant" cssClass="col-lg-11"
									placeholder="Identifiant" /> 
            <s:textfield label="Nom" name="nom" cssClass="col-lg-11"
									placeholder="Nom" />
			<s:textfield label="Prénom" name="prenom" cssClass="col-lg-11"
									placeholder="Prénom" />	
			<sj:datepicker id="dateNaissance" name="dateNaissance"
					label="Date de Naissance" cssClass="col-lg-11"
					 parentTheme="bootstrap"
					placeholder="Date de naissance" changeMonth="true"
					changeYear="true" buttonImageOnly="true" yearRange="c-100:c+0" timepicker="false" 
                    timepickerShowSecond="false" timepickerFormat="hh:mm:ss" />	
			<s:textfield label="Profession" name="profession" cssClass="col-lg-11"
						placeholder="Profession" />
		   <s:textfield label="Lieu du travail" name="lieuProfession" cssClass="col-lg-11"
									placeholder="Lieu du travail" />		
            <s:textfield label="Email" name="email" cssClass="col-lg-11"
									placeholder="Email" />
			<s:textfield label="Téléphone Fixe" name="telephoneFixe" cssClass="col-lg-11"
									placeholder="Téléphone fixe" /> 
			<s:textfield label="Téléphone mobile" name="telephoneMobile" cssClass="col-lg-11"
									placeholder="Téléphone mobile" />
			<s:textfield label="Adresse" name="adresse" cssClass="col-lg-11"
									placeholder="Adresse" />
			         
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