var generer = document.getElementById('generer');
var template_id = document.getElementById('template_value');

generer.addEventListener("submit", function(e){
    var xhttp = new XMLHttpRequest();
    e.preventDefault();
    xhttp.open("POST", 'OneMeme/'+template_id.value, true);
    console.log(template_id.value);
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    console.log("test");
    xhttp.send();
    console.log("test");
});

var inputhaut = document.getElementById('input_txt_haut');
var inputbas = document.getElementById('input_txt_bas');
var textebas = document.getElementById('textebas');
var textehaut = document.getElementById('textehaut');

inputbas.addEventListener('input', function() {
    textebas.innerHTML = inputbas.value;
});

inputhaut.addEventListener('input', function() {
    textehaut.innerHTML = inputhaut.value;
});

var generatorinner = document.getElementsByClassName('generatorinner');
var genwidth = parseFloat(window.getComputedStyle(generatorinner[0]).width)/2;

var flexdiv = document.getElementsByClassName('flexdiv');

var image = document.getElementById('meme_genere');




if (imgheight > 800) {
    image.style.width = "auto";
    image.style.height = "800px";
}
else{
    flexdiv[0].style.maxWidth = genwidth+"px";
    image.style.width = (genwidth-.05*genwidth)+"px";
    window.onresize = function() {
        genwidth = parseFloat(window.getComputedStyle(generatorinner[0]).width)/2;
        console.log(genwidth);
        flexdiv[0].style.maxWidth = genwidth+"px";
        image.style.width = (genwidth-.05*genwidth)+"px";
    };
    
}

var imgheight = parseInt(window.getComputedStyle(image).height);
console.log(window.getComputedStyle(image).height);
console.log(image.height);
console.log(genwidth);

console.log('écouter levenement load de limage');
