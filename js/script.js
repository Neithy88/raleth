//AJAX Pour générer un meme une fois créé
var generer = document.getElementById('generer');
var template_id = document.getElementById('template_value');

generer.addEventListener("submit", function(e){
    var vatxthaut = document.getElementById('input_txt_haut').value;
    var vatxtbas = document.getElementById('input_txt_bas').value;
    var color = document.getElementById('color').value;
    var fsz = parseInt(document.getElementById('fsz').value);
    console.log(fsz);
    var xhttp = new XMLHttpRequest();
    e.preventDefault();
    xhttp.open("POST", 'http://localhost/raleth/OneMeme/'+template_id.value, false);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhttp.send('txthaut='+vatxthaut+'&txtbas='+vatxtbas+'&color='+color+'&fsz='+fsz);
    generer.submit();
});

//Code pour placer les éléments de texte sur l'image
var inputhaut = document.getElementById('input_txt_haut');
var inputbas = document.getElementById('input_txt_bas');
var txth = document.getElementById('textehaut');
var txtb = document.getElementById('textebas');

inputbas.addEventListener('input', function(e) {
    e.preventDefault();
    txtb.innerHTML = inputbas.value;
});

inputhaut.addEventListener('input', function(e) {
    e.preventDefault();
    txth.innerHTML = inputhaut.value;
});





//set image width to half of container
var generatorinner = document.getElementsByClassName('generatorinner');

var fsz = document.getElementById('fsz');
fsz.addEventListener('change', function(){
    txth.style.fontSize = fsz.value + "px";
    txtb.style.fontSize = fsz.value + "px";
});
var color = document.getElementById('color');
color.addEventListener('change', function(){
    txth.style.color = color.value;
    txtb.style.color = color.value;
});
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
    var innerhalf = parseInt(window.getComputedStyle(generatorinner[0]).width)/2;
    image.style.width = innerhalf+"px";
    image.style.height = "auto";
    imageResize();
}

console.log(txth.style.top);
console.log(txth.style.left);

function curseurh(event){
        var y = event.clientY;
        var x = event.clientX;
        var oui = txth.style.top - y;
        console.log(oui);
        // txth.style.top = y + 'px';
        // txth.style.left = x + 'px'; 
}
function curseurb(event){
    var y = event.clientX;
    var x = event.clientY;
    // txth.style.top = y + 'px';
    // txth.style.left = x + 'px';
}