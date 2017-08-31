function hello(){
	alert("hello");
}

function guessNum(){
	//alert("guess");
	if(isWin){
		var saveNum = document.getElementsByName('num')[0].value;
		giveUp();
		document.getElementsByName('num')[0].value = saveNum;
	}
	var imgDown = document.createElement('img');
	var imgUp = document.createElement('img');
	var imgWin = document.createElement('img');
	imgDown.src = 'thumbs_down.png';
	imgUp.src = 'thumbs_up.png';
	imgWin.src = 'win.png';
	imgDown.setAttribute('width','10%');
	imgDown.setAttribute('height','10%');
	imgUp.setAttribute('width','10%');
	imgUp.setAttribute('height','10%');
	imgWin.setAttribute('width','10%');
	imgWin.setAttribute('height','10%');
	var numero = document.getElementsByName('num')[0].value;
	numIntentos++;
	document.getElementsByName('numInt')[0].value = numIntentos;
	document.getElementsByName('num')[0].focus();
	document.getElementsByName('num')[0].select();
	if(numero < numGoal){
		document.getElementById('imgSec').appendChild(imgUp);
	} else if(numero > numGoal) {
		document.getElementById('imgSec').appendChild(imgDown);
	} else {
		isWin = true;
		document.getElementById('imgSec').appendChild(imgWin);
	}
}

function giveUp(){
	//alert("giveUp");
	numIntentos = 0;
	var myNode = document.getElementById('imgSec');
	while (myNode.firstChild) {
		myNode.removeChild(myNode.firstChild);
	}
	document.getElementsByName('num')[0].value = "";
	document.getElementsByName('numInt')[0].value = 0;
	numGoal = Math.round(Math.random()*100);
	//alert(numGoal);
}

var numIntentos = 0;
document.getElementsByName('numInt')[0].value = 0;
var numGoal = Math.round(Math.random()*100);
var isWin = false;
//alert(numGoal);