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


//Code pour resizer l'image en fonction de la taille du container
function imageResize(){
    var generatorinner = document.getElementsByClassName('generatorinner');
    var genwidth = parseFloat(window.getComputedStyle(generatorinner[0]).width)/2;
    var image = document.getElementById('meme_genere');
    var imgheight = parseInt(window.getComputedStyle(image).height);
    var flexdiv = document.getElementsByClassName('flexdiv');
    flexdiv[0].style.maxWidth = genwidth+"px";

    if(image.complete == true){
        console.log(genwidth);
        if (image.width > genwidth) {
            image.width = genwidth-20;
            imgheight = parseInt(window.getComputedStyle(image).height);
            if (imgheight > 430) {
            image.style.width = "auto";
            image.style.height = "430px";
            }
        }
        else if (imgheight > 430){
            image.style.width = "auto";
            image.style.height = "430px";
        }
    }
}
// Donner des heights et width en fonction de la taille du plan de travail, pas de genwidth ou fixe en pixels.
imageResize();

window.onresize = function() {
    imageResize();
}