<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Profil Medecin - LHCS</title>
	<link rel="stylesheet" href="assets/css/style.css" type="text/css">
	<sb:head includeScripts="false" includeScriptsValidation="false"
	includeStylesResponsive="true" />

<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<script type="text/javascript" src="jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="jquery/jquery-migrate-1.2.1.min.js"></script>

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

<script src="bootstrap/js/bootstrap.js"> </script>
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
				//toggle_switch.html('Créer dossier');
			  }else{
                                //change the button label to be 'Hide'
				//toggle_switch.html('Créer dossier');
			  }
			});
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
	
<div id="body">
<!-- div class="navbar navbar-default">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#collapse1" class="nav-toggle">Cr&eacute;er dossier</a></li>
				<li><a href="#collapse2" class="nav-toggle" >Signup</a></li>
				<li ><a href="login-input">Login</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Explore<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Contact us</a></li>
						<li class="divider"></li>
						<li><a href="#">Further Actions</a></li>
					</ul></li>
			</ul>
		<!-- /div-->
		<!-- /div-->
		<div class="sidebar" style="height: 500px; border-radius:5px;">
			<h3>Menu</h3>
			<ul>
				<li>
					<ul>
						
						<li>
							<a href="#collapse1" class="nav-toggle">Créer dossier</a>
						</li>
					</ul>
				</li>
				<li>
					<ul>
						<li>
							<a href="#collapse2" class="nav-toggle" >Ajouter Ordonnance</a>
						</li>
					</ul>
				</li>
				<li>
				<ul>
						
					</ul>
				</li>
				<li>
					<ul>
					</ul>
				</li>
				<li>
					
				</li>
			</ul>
		</div>
				<div id="di">
   
               </div>
		<div class="content">
		<div id="collapse1" style="display:none">
			<div class="well">
			<div class="container" >
				<div class="row">
					<div class="col-lg-6">
				<s:form id="myForm" action="#" theme="bootstrap"
							validate="true" name="registerForm" cssClass="bs-example form-horizontal"
							method="post">
							<fieldset>
								<legend>Cr&eacute;ation du nouveau dossier médical</legend>

                                      <s:combobox label="Liste de patients" name="listePatient" list="nomPatients"
									cssClass="col-lg-12" cssStyle="width:344px"  emptyOption="true"
									headerKey="None" headerValue="None" />

                                   <s:textfield label="First Name" name="firstName"
									cssClass="col-lg-11" placeholder="First Name" />

								<s:textfield label="Last Name" name="lastName"
									cssClass="col-lg-11" placeholder="Last Name" />
								<div class="col-lg-9 col-lg-offset-3">
									<s:submit cssClass="btn btn-default" value="Cancel" />
									<s:submit cssClass="btn btn-primary" value="Submit"
										data-toggle="modal" data-target="#themodal" />
		
								</div>
							</fieldset>
						</s:form>
						</div>
						</div>
						</div>
						</div>
			</div>
			<div id="collapse2" style="display: none">
			<img src="assets/images/laboratory.jpg" alt="">
	
			<h2>about</h2>
			<h3>We Have Free Templates for Everyone</h3>
			<p>
				Our website templates are created with inspiration, checked for quality and originality and meticulously sliced and coded. Whatâ€™s more, theyâ€™re absolutely free! You can do a lot with them. You can modify them. You can use them to design websites for clients, so long as you agree with the <a href="http://www.freewebsitetemplates.com/about/terms">Terms of Use</a>. You can even remove all our links if you want to.
			</p>
			<h3>We Have More Templates for You</h3></div>
			
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