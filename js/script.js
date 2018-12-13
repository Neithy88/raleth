//AJAX Pour générer un meme une fois créé
var generer = document.getElementById('generer');
var template_id = document.getElementById('template_value');

generer.addEventListener("submit", function(e){
    var xhttp = new XMLHttpRequest();
    e.preventDefault();
    xhttp.open("POST", 'OneMeme/'+template_id.value, true);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send();
});

//Code pour placer les éléments de texte sur l'image
var inputhaut = document.getElementById('input_txt_haut');
var inputbas = document.getElementById('input_txt_bas');
var textebas = document.getElementById('textebas');
var textehaut = document.getElementById('textehaut');

inputbas.addEventListener('input', function(e) {
    e.preventDefault();
    textebas.innerHTML = inputbas.value;
});

inputhaut.addEventListener('input', function(e) {
    e.preventDefault();
    textehaut.innerHTML = inputhaut.value;
});

//set image width to half of container
var generatorinner = document.getElementsByClassName('generatorinner');
var image = document.getElementById('meme_genere');


function imageResize(){
    if(image.complete === true){
        var innerhalf = parseInt(window.getComputedStyle(generatorinner[0]).width)/2;
        var innerheight = parseInt(window.getComputedStyle(generatorinner[0]).height);
        var compimageh = parseInt(window.getComputedStyle(image).height);
        var compimagew = parseInt(window.getComputedStyle(image).width);

        if(compimagew >= innerhalf){
            image.style.width = innerhalf+"px";
            image.style.height = "auto";
            compimageh = parseInt(window.getComputedStyle(image).height);
            compimagew = parseInt(window.getComputedStyle(image).width);

            if(compimageh >= innerheight){
                image.style.height = innerheight+"px";
                image.style.width = "auto";

            }
        }
        else if(compimageh >= innerheight){
            image.style.height = innerheight+"px";
            image.style.width = "auto";
        }
    }
}
    
imageResize();
window.onresize = function(){
    imageResize();
}
