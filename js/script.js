var generer = document.getElementById('generer');
var template_id = document.getElementById('template_value');

generer.addEventListener("submit", function(e){
    var xhttp = new XMLHttpRequest();
    e.preventDefault();
    xhttp.open("POST", 'OneMeme/'+template_id.value, true);
    console.log(template_id);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send();
});