var API_URL = "http://localhost:3000";
var serverBodyParts = [];

var xhrBodyPartsTemplate = new XMLHttpRequest();
xhrBodyPartsTemplate.open('GET', 'templates/bodyParts.mst');
xhrBodyPartsTemplate.onload = function() {
    if (xhrBodyPartsTemplate.status === 200) {
	//document.getElementById('foobar').parentNode.removeChild(document.getElementById('foobar'));
	//may be useful: http://stackoverflow.com/questions/30960225/mustache-js-external-template-without-jquery
	var rendered = Mustache.render(JSON.parse(xhrBodyPartsTemplate.responseText), { bodyParts: serverBodyParts });
	document.getElementById('body-parts').appendChild(rendered);
    }
    else {
        alert('Request failed.  Returned status of ' + xhrBodyPartsTemplate.status);
    }
};

var xhrServerBodyParts = new XMLHttpRequest();
xhrServerBodyParts.open('GET', apiUrl + '/body_parts');
xhrServerBodyParts.onload = function() {
    if (xhrServerBodyParts.status === 200) {
	serverBodyParts = JSON.parse(xhrServerBodyParts.responseText);
	xhrBodyPartsTemplate.send();
    }
    else {
        alert('Request failed.  Returned status of ' + xhrServerBodyParts.status);
    }
};


xhrServerBodyParts.send();
