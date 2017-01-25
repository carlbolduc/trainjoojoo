var API_URL = "http://localhost:3000";

$(function() {

    getBodyParts();

});


function getBodyParts() {
    $.ajax({
        url: apiUrl + "/body_parts",
        success: function(data) {
            loadBodyParts(data);
        }
    });
}

function loadBodyParts(serverBodyParts) {
  $.get('templates/bodyParts.mst', function(template) {
    var rendered = Mustache.render(template, { bodyParts: serverBodyParts });
    $('#body-parts').html(rendered);
  });
}
