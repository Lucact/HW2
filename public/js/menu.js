let modaleMenu = document.getElementById("modale_menu");
let menuChiuso = document.getElementById("menuChiuso");
let menuAperto = document.getElementById("menuAperto");

modaleMenu.style.display = "none";
menuAperto.style.display = "none";

function apriMenu(event){

    console.log("Sono apri commenti");

    overlay.style.display = "block";
    modaleMenu.style.display = "flex";
    modaleMenu.style.fontSize="large";
    menuChiuso.style.display="none";
    menuAperto.style.display="inline-block";
}


function chiudiMenu(event){
    overlay.style.display = "none";
    modaleMenu.style.display = "none";
    menuChiuso.style.display="inline-block";
    menuAperto.style.display="none";
}

