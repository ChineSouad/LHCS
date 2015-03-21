   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.ArrayList"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dossier Courant Patient - LHCS</title>
<link rel="stylesheet" href="assets/css/screen.css" type="text/css" media="screen" title="default" />
<script src="assets/js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

<!--  checkbox styling script -->
<script src="assets/js/jquery/ui.core.js" type="text/javascript"></script>
<script src="assets/js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="assets/js/jquery/jquery.bind.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$('input').checkBox();
	$('#toggle-all').click(function(){
 	$('#toggle-all').toggleClass('toggle-checked');
	$('#mainform input[type=checkbox]').checkBox('toggle');
	return false;
	});
});
</script>  


<![if !IE 7]>

<!--  styled select box script version 1 -->
<script src="assets/js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
});
</script>
 

<![endif]>


<!--  styled select box script version 2 --> 
<script src="assets/js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<!--  styled select box script version 3 --> 
<script src="assets/js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<!--  styled file upload script --> 
<script src="assets/js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
$(function() {
	$("input.file_1").filestyle({ 
	image: "assets/images/forms/upload_file.gif",
	imageheight : 29,
	imagewidth : 78,
	width : 300
	});
});
</script>

<!-- Custom jquery scripts -->
<script src="assets/js/jquery/custom_jquery.js" type="text/javascript"></script>
 
<!-- Tooltips -->
<script src="assets/js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="assets/js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('a.info-tooltip ').tooltip({
		track: true,
		delay: 0,
		fixPNG: true, 
		showURL: false,
		showBody: " - ",
		top: -35,
		left: 5
	});
});
</script> 

<!--  date picker script -->
<link rel="stylesheet" href="assets/css/datePicker.css" type="text/css" />
<script src="assets/js/jquery/date.js" type="text/javascript"></script>

<!-- MUST BE THE LAST SCRIPT IN <HEAD></HEAD></HEAD> png fix -->
<script src="assets/js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>
<sb:head includeScripts="false" includeScriptsValidation="false"
	includeStylesResponsive="true" />

<title>Inscription Patient - LHCS</title>
<link rel="stylesheet" href="assets/css/style.css" type="text/css">

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

</style></head>
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
    		<ul></ul>
	</div>
	<div  height: 2px;"></div>
<!-- start content-outer -->
<div id="content-outer" align="center">
<!-- start content -->
<table background="#00ba8b" width="3px"></table>
<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="assets/images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="assets/images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0"  width="100%" cellpadding="0" cellspacing="0">
	
	
	<tr valign="top">
	<td><img  src="assets/images/photo.jpg" width="150" height="150"/></br><s:text name="nom">Chine Nour</s:text></td>
	<td>
	
	
		<!--  start step-holder -->
		<div id="step-holder">
			<div class="step-no-off">1</div>
			<div class="step-light-left" style="width: 120px"><a href="ProfilePatient">Profil</a></div>
			<div class="step-light-right">&nbsp;</div>
			<div class="step-no">2</div>
			<div class="step-dark-left" style="width: 120px"><a href="DossierCourant">Dossier Courant</a></div>
			<div class="step-dark-right">&nbsp;</div>
			<div class="step-no-off">3</div>
			<div class="step-light-left" style="width: 120px"><a href="ActivitesRecentes">Activités récentes</a></div>
			<div class="step-light-round">&nbsp;</div>
			<div class="clear"></div>
		</div>
		<!--  end step-holder -->
	<div class="clear"></div>
	<div class="clear" style="height: 80px">&nbsp;</div>
		<!-- start id-form -->
		<div class="well"  align="center">
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form" width="100%"  align="center">
		
		
		
	<tr>
	<td width="700px">Ordonnances récentes <a href="" style="color: #00ba8b;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;afficher plus<br><br></a>
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
    <table class="table table-striped table-bordered" width="500">
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
    <table class="table table-striped table-bordered" width="500">
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
    <table class="table table-striped table-bordered" width="500">
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
		<th>&nbsp;</th>
		<td valign="top">
			<input type="button" value="" class="form-submit" />
			<input type="reset" value="" class="form-reset"  />
		</td>
		<td></td>
	</tr>
	</table>
	</div>
	<!-- end id-form  -->

	</td>
	<td>
<div class="clear" style="height: 120px">&nbsp;</div>
	<!--  start related-activities -->
	<div id="related-activities">
		
		<!--  start related-act-top -->
		<div id="related-act-top">
		<img src="assets/images/forms/header_related_act.gif" width="271" height="43" alt="" />
		</div>
		<!-- end related-act-top -->
		
		<!--  start related-act-bottom -->
		<div id="related-act-bottom">
		
			<!--  start related-act-inner -->
			<div id="related-act-inner">
			
				<div class="left"><a href=""><i class="icon-large icon-plus"></i></a></div>
				<div class="right">
					<h5>Importer nouveau document</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				
				<div class="clear"></div>
				<div class="lines-dotted-short"></div>
				
				<div class="left"><a href=""><i class="icon-large icon-remove"></i></a></div>
				<div class="right">
					<h5>Supprimer un document</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>				
				<div class="left"><a href=""><i class="icon-large icon-edit"></i></a></div>
				<div class="right">
					<h5>Edit categories</h5>
					Lorem ipsum dolor sit amet consectetur
					adipisicing elitsed do eiusmod tempor.
					<ul class="greyarrow">
						<li><a href="">Click here to visit</a></li> 
						<li><a href="">Click here to visit</a> </li>
					</ul>
				</div>
				<div class="clear"></div>
				
			</div>
			<!-- end related-act-inner -->
			<div class="clear"></div>
		
		</div>
		<!-- end related-act-bottom -->
	
	</div>
	<!-- end related-activities -->

</td>
</tr>

</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>
<div class="clear">&nbsp;</div>

</div>
<!--  end content -->


<!--  end content-outer -->

 

<div class="clear">&nbsp;</div>
    
<div id="footer" align="center">
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