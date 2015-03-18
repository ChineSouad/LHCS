<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags" %>


<html>
 <head>
 <head>
	<meta charset="UTF-8">
	<title>Esapce Medecin - LHCS</title>
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
	$(document).ready(function() {
		 
	    $('#password, #confirmPasswordInput').on('keyup', function(e) {
	 
	        if($('#password').val() == '' && $('#confirmPasswordInput').val() == '')
	        {
	            $('#passwordStrength').removeClass().html('');
	 
	            return false;
	        }
	 
	     if($('#password').val() != '' && $('#confirmPasswordInput').val() != '' && $('#password').val() != $('#confirmPasswordInput').val())
	    	{
	    		$('#passwordStrength').removeClass().addClass('alert alert-error').html('Passwords do not match!');
	        	return false;
	    	}
	 
	        // Must have capital letter, numbers and lowercase letters
	        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
	 
	        // Must have either capitals and lowercase letters or lowercase and numbers
	        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
	 
	        // Must be at least 6 characters long
	        var okRegex = new RegExp("(?=.{6,}).*", "g");
	 
	        if (okRegex.test($(this).val()) === false) {
	            // If ok regex doesn't match the password
	        	$('#passwordStrength').removeClass().addClass('alert alert-error').html('Password must be at least 6 characters long.');
	 
	        } else if (strongRegex.test($(this).val())) {
	            // If reg ex matches strong password
	            $('#passwordStrength').removeClass().addClass('alert alert-success').html('Good Password!');
	        } else if (mediumRegex.test($(this).val())) {
	            // If medium password matches the reg ex
	            $('#passwordStrength').removeClass().addClass('alert alert-info').html('Make your password stronger with more capital letters, more numbers and special characters!');
	        } else {
	            // If password is ok
	            $('#passwordStrength').removeClass().addClass('alert alert-error').html('Weak Password, try using numbers and capital letters.');
	        }
	        
	        return true;
	    });
	});
	    </script>
	<title>jQuery toggle to display and hide content</title>
 
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
	<script>
		$(document).ready(function() {
		  $('.nav-toggle').click(function(){
			//get collapse content selector
			var collapse_content_selector = $(this).attr('href');					
 
			//make the collapse content to be shown or hide
			var toggle_switch = $(this);
			$(collapse_content_selector).toggle(function(){
			  if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
				toggle_switch.html('Show');
			  }else{
                                //change the button label to be 'Hide'
				toggle_switch.html('Hide');
			  }
			});
		  });
 
		});	
		</script>
		<style>	
		.round-border {
			border: 1px solid #eee;
			border: 1px solid rgba(0, 0, 0, 0.05);
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			padding: 10px;
			margin-bottom: 5px;
		}
		</style>
	</head>
	<body>
		<section class="round-border">
			<h2>Creer nouveau dossier</h2>
			<div>
				<a href="#collapse1" class="nav-toggle">Show</a>
			</div>
			<div id="collapse1" style="display:none">
			<div class="well">
			<div class="container" >
				<div class="row">
					<div class="col-lg-6">
				<s:form id="myForm" action="InscriptionMedecin" theme="bootstrap"
							validate="true" name="registerForm" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<legend>Signup Form</legend>

                                   <s:textfield label="First Name" name="firstName"
									cssClass="col-lg-11" placeholder="First Name" />

								<s:textfield label="Last Name" name="lastName"
									cssClass="col-lg-11" placeholder="Last Name" />

								<s:textfield label="Email Address" name="emailAddress"
									cssClass="col-lg-11" placeholder="Email Address" />
								<s:password label="Password" name="password"
									cssClass="col-lg-11" placeholder="Password" id="password" />
									<s:password label="Confirm Password" id="confirmPasswordInput" name="confirmPasswordInput"
									cssClass="col-lg-11" placeholder="Confirm Password"/>
									<p><div class="" id="passwordStrength"></div></p>
                                 <sj:textfield maxLength="2" size="2" label="Age" name="age"
									cssClass="col-lg-11" placeholder="Age"></sj:textfield>					

								<div class="col-lg-9 col-lg-offset-3">
									<s:submit cssClass="btn btn-default" value="Cancel" />
									<s:submit cssClass="btn btn-primary" value="Submit"
										data-toggle="modal" data-target="#themodal" />
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
														id="yesbutton" formId="myForm"
														data-loading-text="Saving.."
														data-complete-text="Submit Complete!" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<s:hidden name="pageName" value="signup" />
							</fieldset>
						</s:form>
						</div>
						</div>
						</div>
						</div>
			</div>
		</section>
	</body>
</html>