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
<title>Profile Patient - LHCS</title>
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

<script src="assets/js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
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
<table width="100%" style="background: fuchsia;">
<tr><td>	<img style=" width : 150px; position: relative;bottom: 5px; height: 150px;" src="assets/images/photo.jpg"><b><br><br><s:property value="#session.patient"/></b>
<br><br>
<div class="sidebar" style="height: 500px; border-radius:5px; position: relative;
  bottom: 5px;">
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
		</div></td>
<td> 
		<div class="well" style="width: 90%;" >
		<div class="tabbable" style="margin-bottom: 18px;">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab">Profil</a></li>
                <li><a href="#tab2" data-toggle="tab">Dossier courant</a></li>
                <li><a href="#tab3" data-toggle="tab">Activités récentes</a></li>
              </ul>
              <div class="tab-content" style="padding-bottom: 9px; border-bottom: 1px solid #ddd;">
                <div class="tab-pane active" id="tab1" style="margin:50px;">
                  <table border="0" cellpadding="0" cellspacing="0"  id="id-form" width="100%" align="center">
			<tr><td><p style="color: #0A996E;">Nom & Prénom</p></td><td><p style="color: black;"><s:property value="#session.patient"/></p></td><td>public</td></tr>
			<tr><td><p style="color: #0A996E;">Date de naissance</p></td><td><p style="color: black;"> <s:property value="#session.dateNaissance"/></p></td><td>public</td></tr>
			<tr><td><p style="color: #0A996E;">Lieu de Naissance</p></td><td><p style="color: black;"><s:property value="#session.lieuNaissance"/></p></td><td>public</td></tr>
			
			<tr><td><p style="color: #0A996E;">Tuteur</p></td><td><p style="color: black;"> <s:property value="#session.tuteur"/></p></td><td>moi uniquement</td></tr>	
			
			<tr><td><p style="color: #0A996E;">Lien familial du tuteur</p></td><td><p style="color: black;"><s:property value="#session.lienTuteur"/></p></td><td>moi uniquement</td></tr>
			
			<tr><td><p style="color: #0A996E;">Téléphone fixe</p></td><td><p  style="color: black;"><s:property value="#session.fixe"/></p></td><td>public</td></tr>
			
			<tr><td><p style="color: #0A996E;">Téléphone mobile</p></td><td><p style="color: black;"><s:property value="#session.mobile"/></p></td><td>public</td></tr>
			
			<tr><td><p style="color: #0A996E;">Email</p></td><td><p style="color: black;"><s:property value="#session.mail"/></p></td><td><p>professionnels de santé</p></td></tr>
			
			<tr><td><p style="color: #0A996E;">Adresse</p></td><td><p style="color: black;"><s:property value="#session.adresse"/></p></td><td>public</td>
			</tr>
			<tr align="right">
			
		<td width="33%"></td><td width="33%"></td><td align="right" colspan="5">
								<s:submit cssClass="btn btn-primary" value="Editer profil"
									data-toggle="modal" data-target="#themodal" /></td>
	</tr>
	</table>
              </div>
                <div class="tab-pane" id="tab2" style="margin:50px;">
                  <table border="0" cellpadding="0" cellspacing="0"  id="id-form" width="100%"  align="center">
		
		
		
	<tr>
	<td>Ordonnances récentes <a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
	<div class="widget widget-table action-table" style="width:100%;">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste des ordonnances</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered" width="100%">
<tr class="even">
<th>Num&eacute;ro d'ordonnance</th>
<th>Date</th>
<th>Maladie concernée</th>
<th>Médecin responsable</th>

</tr>


<s:iterator  value="listeOrdo">
<tr>
<td><s:property value="id" /></td>
<td><s:property value="date" /></td>

<td><s:property value="maladie" /></td>
<td><s:property value="medecinResponsable" /></td>
<td><a href="#" style="color: #00ba8b;" ><i class="icon-large icon-file"></i>&nbsp;&nbsp;display</a></td>
<td><a href="#" style="color: #00ba8b;"><i class="icon-large icon-print"></i>&nbsp;&nbsp;print</a></td>

</tr>

</s:iterator>
</table>

</div></div>
	Résultats des analyses récentes<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
			<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste des résultats des analyses</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Nom</th>
<th>Prenom</th>
<th>status</th>

</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div></div>
   Images médicales récentes<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
    		<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Listes des images médicales</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Nom</th>
<th>Prenom</th>
<th>status</th>

</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div>
</div>
	Synthèses des massages médicaux récents<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
			<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste des synthèses des massages médicaux</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Nom</th>
<th>Prenom</th>
<th>status</th>

</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div></div>
	
</td>	</tr>
		<!-- ****************************** -->
	<tr>
		
		<td></td>
	</tr>
	</table>
                </div>
                <div class="tab-pane" id="tab3" style="margin:50px;">
                   <table border="0" cellpadding="0" cellspacing="0"  id="id-form" style="width:100%;">
		<tr>
	<td>Consultations médicales <a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
	<div class="widget widget-table action-table" style="width:100%;">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste des consultations médicales récentes</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered" width="100%">
<tr class="even">
<th>Num&eacute;ro de consultation</th>
<th>Date de consultation</th>
<th>Médecin Responsable</th>
<th>lieu de consultation</th>
<th>Adresse</th>
<th>Contact</th>
</tr>


<s:iterator  value="">
<tr>
<td><s:property value="id" /></td>
<td><s:property value="date" /></td>

<td><s:property value="maladie" /></td>
<td><s:property value="medecinResponsable" /></td>
<td><a href="#"><i class="icon-large icon-file"></i></a></td>
<td><a href="#"><i class="icon-large icon-print"></i></a></td>

</tr>

</s:iterator>
</table>

</div></div>
	Analyses récentes<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
			<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste d'analyses</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Numéro d'analyse</th>
<th>Date d'analyse</th>
<th>Biologiste Responsable</th>
<th>Centre d'analyse</th>
<th>Adresse</th>
<th>Contact</th>
</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div></div>
   Imageries médicales récentes<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
    		<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Listes des images médicales</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Numéro d'imagerie</th>
<th>Date d'imagerie</th>
<th>Radiologue Responsable</th>
<th>Centre d'imagerie</th>
<th>Adresse</th>
<th>Contact</th>

</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div>
</div>
	Séances des kinésithérapie récentes<a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
			<div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>Liste des séances de kinésithérapie</h3>
            </div>
            <!-- /widget-header -->
           
	<div class="widget-content" >
    <table class="table table-striped table-bordered">
<tr class="even">
<th>Numéro de massage</th>
<th>Date de massage</th>
<th>Masseur Responsable </th>
<th>Centre de Kiné </th>
<th>Adresse </th>
<th>Contact </th>

</tr>
<s:iterator value="" status="userStatus">
<tr>
<td><s:property value="nom" /></td>
<td><s:property value="prenom" /></td>
<td><s:property value="isadmin" /></td>
</tr>
</s:iterator>
</table>

</div></div>
	
</td>	</tr>
		<!-- ****************************** -->
	<tr>
		<td></td>
	</tr>
	</table>
	</div>
                </div>
              </div>
            </div></td></tr>
				</table>
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