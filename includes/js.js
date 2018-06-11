function getEstado() {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("estadoList").innerHTML=xmlhttp3.responseText;
			resetPasantia(1);
		}
	}
	xmlhttp3.open("GET","includes/getEstado.php",true);
	xmlhttp3.send();
}

function getMunicipio(estado_id) {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("municipioList").innerHTML=xmlhttp3.responseText;
			resetPasantia(2);
		}
	}
	xmlhttp3.open("GET","includes/getMunicipio.php?estado_id="+estado_id,true);
	xmlhttp3.send();
}

function getrubro(municipio_id, pais_id) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("rubroList").innerHTML=xmlhttp3.responseText;
			resetPasantia(3);
		}
	}
	xmlhttp3.open("GET","includes/getLocalidad.php?municipio_id="+municipio_id+"&pais_id="+pais_id+"");
	xmlhttp3.send();
}

function getempresa(empresa_id) {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("empresaList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/getEmpresa.php?rubro_id="+rubro_id,true);
	xmlhttp3.send();
}
function getpasantia(rubroId, paisId, aretematicaId) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("pasantiaList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/getEmpresas.php?rubroId="+rubroId+"&paisId="+paisId+"&aretematicaId="+aretematicaId+"");
	xmlhttp3.send();
}
function resetPasantia(fase) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("pasantiaList").innerHTML=xmlhttp3.responseText;
		}
	}
	if (fase==1) {xmlhttp3.open("GET","includes/resetPasantia.php?pais="+fase);}else if (fase==2) {xmlhttp3.open("GET","includes/resetPasantia.php?areaTematica="+fase);}else if (fase==3) {xmlhttp3.open("GET","includes/resetPasantia.php?rubro="+fase);}
	
	xmlhttp3.send();
}
///////////////////////////////////////////////

function getPais() {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("paisList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getPais.php",true);
	xmlhttp3.send();
}

function getEmpresa(pais) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("empresaList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getEmpresa.php?pais_id="+pais+"");
	xmlhttp3.send();
}

function getAreaTematica() {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("atlist").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getAreaTematica.php");
	xmlhttp3.send();
}



function getRubroNew(at) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("rubroList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getRubro.php?rubro_id="+at+"");
	xmlhttp3.send();
}

function getCultivo(rubro,rubroName,aT,aTName) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("cultivoList").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getCultivo.php?rubro_id="+rubro+"&rubroName="+rubroName+"&aT="+aT+"&aTName="+aTName+"");
	xmlhttp3.send();
}

function buttonnew() {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("buttonnew").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/buttonnew.php");
	xmlhttp3.send();
}

function nuevaEmpresa(pais_id, empresa_nom) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("formEmpresa").innerHTML=xmlhttp3.responseText;
			getEmpresa(pais_id);
		}
	}
	xmlhttp3.open("GET","includes/new/nuevaEmpresa.php?pais_id="+pais_id+"&empresa_nom="+empresa_nom+"");
	xmlhttp3.send();
}

function nuevoCultivo(id_rubro,rubroName,aTName,cultivo_nom) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("formEmpresa").innerHTML=xmlhttp3.responseText;
			getCultivo(id_rubro,rubroName,1,aTName);
		}
	}
	xmlhttp3.open("GET","includes/new/nuevoCultivo.php?id_rubro="+id_rubro+"&cultivo_nom="+cultivo_nom+"");
	xmlhttp3.send();
}

function formCultivo(id_rubro,rubroName,aTName) {
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("formEmpresa").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/formCultivo.php?id_rubro="+id_rubro+"&rubroName="+rubroName+"&aTName="+aTName);
	xmlhttp3.send();
}

function formEmpresa(nameEmpresa) {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("formEmpresa").innerHTML=xmlhttp3.responseText;

		}
	}
	xmlhttp3.open("GET","includes/new/formEmpresa.php?nameEmpresa="+nameEmpresa+"",true);
	xmlhttp3.send();
}


function getFormEmpresa(idPais, paisNom) {
	
	if (window.XMLHttpRequest) {
		xmlhttp3 = new XMLHttpRequest();
		} else { 
		xmlhttp3 = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlhttp3.onreadystatechange=function() {
		if (xmlhttp3.readyState==4 && xmlhttp3.status==200) {
			document.getElementById("formEmpresa").innerHTML=xmlhttp3.responseText;
		}
	}
	xmlhttp3.open("GET","includes/new/getFormEmpresa.php?pais_id="+idPais+"&pais_name="+paisNom+"",true);
	xmlhttp3.send();
}

function reload() {
    location.reload();
}