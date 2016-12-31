var exercises = document.getElementById("exercises");
var getExercisesButton = document.getElementById("get-exercises");

var request = new XMLHttpRequest();

request.onreadystatechange = function() {
    if (request.readyState === 4) {
        if (request.status === 200) {
            var serverExercises = JSON.parse(request.responseText);
            for (var i =0; i<serverExercises.length; i++) {
                exercises.innerHTML += "<li>" + serverExercises[i].name + "</li>";
            }
            console.log(serverExercises[0].name);
        }
    }
}

request.open("GET", "http://localhost:3000/exercises");
request.setRequestHeader("Accept","application/json");

getExercisesButton.addEventListener("click", function() {
    request.send();
});
