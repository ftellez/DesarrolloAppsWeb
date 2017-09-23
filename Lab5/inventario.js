var isInput;

function showInv() {
	// Leer cookies
}

function modif(celda){
	var celdaElements = celda.childNodes;
	isInput = false;
	
	for(i = 0; i < celdaElements.length; i++){
		if(celdaElements[i].tagName == 'INPUT'){
			isInput = true;
		}
	}
	
	if(!isInput){
		console.log("Generating input...");
		var valorActual = parseInt(celda.innerHTML);
		var newInputText = document.createElement('input');
		newInputText.type = "text";
		newInputText.onblur = function(){
			saveValue(this.parentNode, this.value);
		};
		newInputText.onkeypress = function (){
			if(arguments[0].keyCode == 13){
				saveValue(this.parentNode, this.value);
			}
		}
		celda.innerHTML = "";
		celda.appendChild(newInputText);
		newInputText.value = valorActual;
		newInputText.focus();
		newInputText.select();
	}
}

function saveValue(celda, valor){
	var celdaElements = celda.childNodes;
	isInput = false;
	
	for(i = 0; i < celdaElements.length; i++){
		if(celdaElements[i].tagName == 'INPUT'){
			isInput = true;
		}
	}
	
	var now = new Date();
    now.setMonth(now.getMonth() + 1);
	var cookies = celda.id + "=" + valor + "; expires=" + now.toGMTString() + ";";
	document.cookie = cookies;
	
	if(isInput){
		celda.removeChild(celda.childNodes[0]);
		celda.innerHTML = valor;
	}
	
	alert(cookies);
}

function inc(varName){
	var incElement = document.getElementById(varName);
	incElement.innerHTML = parseInt(incElement.innerHTML) + 1;
	saveValue(incElement, incElement.innerHTML);
}

function dec(varName){
	var incElement = document.getElementById(varName);
	var valorDec = parseInt(incElement.innerHTML) - 1;
	if (valorDec < 0){
		incElement.innerHTML = 0;
	} else {
		incElement.innerHTML = valorDec;
	}
	saveValue(incElement, incElement.innerHTML);
}