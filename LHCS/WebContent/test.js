/**
 * 
 */
$(document).ready(function(){ $("select[name='selectNiveau']").find("option").hide(); $("select[name='selectGroupe']").find("option").hide(); $("select[name='selectFiliere']").change(function(){ var idFilie = $(this).find(":selected").attr("value"); $("select[name='selectNiveau']").find("option").hide(); $("select[name='selectNiveau']").find("option.filie_" + idFilie).show(); }); $("select[name='selectNiveau']").change(function(){ var idNiveau = $(this).find(":selected").attr("value"); $("select[name='selectGroupe']").find("option").hide(); $("select[name='selectGroupe']").find("option.niveau_" + idNiveau).show(); }); });