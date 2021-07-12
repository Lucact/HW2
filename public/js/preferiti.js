let main = document.getElementById("main");
let stellaPiena="https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Red_star.svg/260px-Red_star.svg.png";
let stellaVuota="https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Stellone_d%27Italia.svg/1200px-Stellone_d%27Italia.svg.png";


let avviso = document.getElementById("avviso");
let overlay = document.getElementById("overlay_commenti");
let modaleCommenti = document.getElementById("modale_commenti");
let formCommento = document.getElementById("formCommento");
let bottoneInviaCommento = document.getElementById("invia_commento");
let avvisoCommenti = document.getElementById("avviso_commenti");

avviso.classList.add("hide");
overlay.style.display = "none";
modaleCommenti.style.display = "none";

overlay.addEventListener("click", chiudiCommenti);
formCommento.addEventListener("submit", aggiungiCommento)

fetch("mostraPreferiti").then(onResponse).then(onMostraPreferiti);
/*
let route = "mostraPreferiti";
const formData = new FormData();

fetch(route.getAttribute("url"), {method: 'POST', body: formData}).then(onResponse).then(onMostraPreferiti);

*/
function onResponse(response){
console.log('Risposta ricevuta');
return response.json();
}
let numOfferte=0;

function onMostraPreferiti(json){
console.log(json)

numOfferte=0;

for(let i=0; i<json.length; i++){
let title=json[i].titolo;
let description=json[i].descrizione;
let redirect_url=json[i].link;
let id= json[i].id

let titolo = document.createElement("h1");
let descrizione = document.createElement("p");
let link = document.createElement("a");
let contenitore = document.createElement("div");
let testo = document.createElement("div");
let mostra = document.createElement("button");
let nascondi = document.createElement("button");
let stella = document.createElement("img");
let commentIcon=document.createElement("img");

contenitore.classList.add("offerta");
testo.classList.add("testo");
titolo.classList.add("titolo");
descrizione.classList.add("corpo");
mostra.classList.add("bottone");
nascondi.classList.add("bottone");
nascondi.classList.add("hide");
descrizione.classList.add("hide");
stella.classList.add("stella");
commentIcon.src="img/comment.png"
commentIcon.classList.add("commentIcon");

stella.src = stellaPiena;
titolo.textContent = title;
descrizione.textContent = description;
link.href = redirect_url;
link.textContent = "Link Offerta";
mostra.textContent = "Mostra Descrizione";
nascondi.textContent = "Nascondi Descrizione";

contenitore.dataset.titolo=title;
contenitore.dataset.link=link;
contenitore.dataset.descrizione=description;
contenitore.dataset.id=id;

mostra.addEventListener("click", mostraDescrizione);
nascondi.addEventListener("click", nascondiDescrizione);
stella.addEventListener("click", rimuoviPreferiti);
commentIcon.addEventListener("click", apriCommenti);


testo.appendChild(link);
testo.appendChild(titolo);
testo.appendChild(descrizione);
testo.appendChild(mostra);
testo.appendChild(nascondi);
contenitore.appendChild(testo);
contenitore.appendChild(stella);
contenitore.appendChild(commentIcon);



main.appendChild(contenitore);

numOfferte++;
}

if(numOfferte==0)
avviso.classList.remove("hide");
else
avviso.classList.add("hide");
}

function aggiungiCommento(event){

event.preventDefault();
console.log("Aggiungo "+ formCommento.dataset.id)

if(formCommento.commento.value.length > 0){
let url="funzioni/aggiungiCommento.php";
let formData = new FormData();

formData.append("id", formCommento.dataset.id);
formData.append("commento", formCommento.commento.value)

formCommento.commento.value="";

fetch(url, {
method: "POST",
body: formData
}).then(onResponse).then(onAggiungiCommento);
}
else{
alert("Non puoi inserire un commento vuoto!");
}
}

function onAggiungiCommento(json){
console.log(json);

if(json==1){
aggiornaCommenti(formCommento.dataset.id);
}
}

function apriCommenti(event){
let offerta= event.currentTarget.parentNode;
console.log("Sono apri commenti di "+offerta.dataset.id);

overlay.style.display = "block";
modaleCommenti.style.display = "flex";
formCommento.dataset.id = offerta.dataset.id;
fetch("funzioni/cercaCommenti.php?id="+offerta.dataset.id).then(onResponse).then(onApriCommenti);
}

function aggiornaCommenti(id){
console.log("Sono apri commenti di "+id);

overlay.style.display = "block";
modaleCommenti.style.display = "flex";
formCommento.dataset.id = id;
fetch("funzioni/cercaCommenti.php?id="+id).then(onResponse).then(onApriCommenti);
}

function onApriCommenti(json){
console.log(json)

window.scrollTo(0,0);

let commenti = document.getElementById("commenti");
commenti.innerHTML="";

if(json==-1){
avvisoCommenti.classList.remove("hide")
}
else{
avvisoCommenti.classList.add("hide")
}

for(let i=0; i<json.length; i++){
let data_commento = json[i].data_commento;
let contenuto = json[i].contenuto;
let email_utente = json[i].email_utente;

let commento = document.createElement("div");
let testo = document.createElement("div");

commento.classList.add("commento");

let label = document.createElement("label");

testo.textContent=contenuto;
label.textContent=email_utente+" "+data_commento;

commento.appendChild(label);
commento.appendChild(testo);

commenti.appendChild(commento);

console.log("ho appeso tutto");
}
}

function chiudiCommenti(event){
overlay.style.display = "none";
modaleCommenti.style.display = "none";


}

function mostraDescrizione(event){
console.log("Ho cliccato")
console.log(event.currentTarget);
let descrizione= event.currentTarget.parentNode.childNodes[2];
let nascondi= event.currentTarget.parentNode.childNodes[4];
console.log(descrizione)
descrizione.classList.remove("hide");
event.currentTarget.classList.add("hide");
nascondi.classList.remove("hide");

}

function nascondiDescrizione(event){

console.log("Ho cliccato")
console.log(event.currentTarget);
let descrizione= event.currentTarget.parentNode.childNodes[2];
let mostra= event.currentTarget.parentNode.childNodes[3];
console.log(descrizione)
descrizione.classList.add("hide");
event.currentTarget.classList.add("hide");
mostra.classList.remove("hide");
}

function rimuoviPreferiti(event){

    let offerta = event.currentTarget.parentNode;

    let offerte = document.getElementById("main");

    let preferiti = document.getElementById("preferiti");


    let stella = offerta.childNodes[1];
    stella.src=stellaVuota;

    stella.removeEventListener("click", rimuoviPreferiti);
    stella.addEventListener("click", aggiungiPreferiti);

    let route="rimuoviPreferiti";

    let token = document.querySelector("meta[name='csrf-token']").getAttribute("content");
    let formData = new FormData();
    let titolo = offerta.dataset.titolo;
    console.log(titolo)

    formData.append("titolo", titolo);
    formData.append('_token', token);


//ora eseguiamo il fetch:
    fetch(route, {
        method: "POST",
        body: formData,
    }).then(onResponse).then(onRimuoviPreferiti);


}

function onRimuoviPreferiti(json){
console.log(json)
if(json===1){
main.innerHTML="";

fetch("mostraPreferiti").then(onResponse).then(onMostraPreferiti);
}
}

