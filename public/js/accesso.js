const form= document.getElementById("nome_form");

const invioForm = document.getElementById("invia");

invioForm.addEventListener("click", checkLogin);

function checkLogin(event){
    event.preventDefault();
    let route = event.currentTarget;
    console.log(route)
    const formData = new FormData();

    formData.append('username', form.username.value);
    formData.append('password', form.password.value);
    formData.append('token', document.getElementById("token").value);
    console.log("Eseguo la fetch")
    fetch(route.getAttribute("url"), {method: 'POST', body: formData }).then(onResponse).then(onJson);
}

function onResponse(response) {
    console.log("Siamo nella onResponse")
    return response.json();
}

//In caso l'username è occupato spunta un simbolo che farà capire l'errore
function onJson(json) {
    console.log("Sono nella json, json ricevuto! ");
    console.log(json);
}
