//AJAX Pour générer un meme une fois créé
var generer = document.getElementById('generer');
var template_id = document.getElementById('template_value');


generer.addEventListener("submit", function(e){
    var xhttp = new XMLHttpRequest();
    e.preventDefault();
    xhttp.open("POST", 'http://localhost/raleth/OneMeme/'+template_id.value, false);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send();
    generer.submit();
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
var txth = document.getElementById('textehaut');
var txtb = document.getElementById('textebas');
var image = document.getElementById('meme_genere');
var positioner = document.createElement("div");
positioner.setAttribute("id", "positioner");
var pdt = document.getElementById('plandetravail');
pdt.appendChild(positioner);
positioner.style.marginLeft = "auto";
positioner.style.marginRight = "auto";
positioner.style.position = "relative"; 


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
                compimageh = parseInt(window.getComputedStyle(image).height);
                compimagew = parseInt(window.getComputedStyle(image).width);
            }
        }
        else if(compimageh >= innerheight){
            image.style.height = innerheight+"px";
            image.style.width = "auto";
            compimageh = parseInt(window.getComputedStyle(image).height);
            compimagew = parseInt(window.getComputedStyle(image).width);
        }
        positioner.style.width = parseInt(compimagew)+"px";
        positioner.style.height = parseInt(compimageh)+"px";
        positioner.appendChild(image);
        positioner.appendChild(txth);
        positioner.appendChild(txtb);
    }
}

imageResize();
window.onresize = function(){
    imageResize();
}

// in js detect overflow vertical
// then store parseint de font size
// s'il y a overflow, textehaut.style.font-size = fontsize - 5 + "px";
// puis fontsize = parseInt(textehaut.style.fontSize);
// tout ça dans un event listener si ya overflow vertical 