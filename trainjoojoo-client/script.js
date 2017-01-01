var bodyParts = document.getElementById("body-parts");
var getExercisesButton = document.getElementById("get-exercises");

var request = new XMLHttpRequest();

request.onreadystatechange = function() {
    if (request.readyState === 4) {
        if (request.status === 200) {
            var serverBodyParts = JSON.parse(request.responseText);
            for (var i =0; i < serverBodyParts.length; i++) {
              var newDiv = document.createElement('div');
              newDiv.setAttribute('class', 'body-part');
              newDiv.innerHTML = serverBodyParts[i].name;
              bodyParts.appendChild(newDiv);
            }
        }
    }
}

request.open("GET", "http://localhost:3000/body_parts");
request.setRequestHeader("Accept","application/json");
request.send();
