function onJson(json){
    console.log('JSON off ricevuto');
    console.log(json);

    if(json===1)
        window.location.href="../../resources/views/conferma.blade.php";
    else {
        console.log("Errore nel json");
        err_username = document.getElementById("errore_username").style.display = 'block';
    }
}

function onResponse(response){
    console.log('Risposta ricevuta');
    return response.json();
}

function confronto(event)
{
    let form= document.getElementById("form_");

    let username= form.username.value;
    let nome= form.nome.value;
    let cognome= form.cognome.value;
    let password= form.password.value;
    let telefono= form.telefono.value;

    console.log(nome);

    if (form.username.value.length === 0 ||
        form.nome.value.length === 0 ||
        form.cognome.value.length === 0 ||
        form.password.value.length === 0 ||
        form.telefono.value.length === 0 )
    {
        err_campo = document.getElementById("errore_campo").style.display = 'block';
        event.preventDefault();
        return;
    }

    if (form.password.value.length < 6){
        err_pass1 = document.getElementById("errore_pass1").style.display = 'block';
        event.preventDefault();
        return;
    }
    if(form.password.value.length > 12){
        err_pass2 = document.getElementById("errore_pass2").style.display = 'block';
        event.preventDefault();
        return;
    }
    let flag=0;
    for(let j=0; j < password.length; j++){

        if(password[j]==='?'|| password[j]==='!'||password[j]==='&'||password[j]==='%'||password[j]==='$'||
            password[j]==='^'||password[j]==='_'||password[j]==='#'||password[j]==='@')
            flag=1;

    }
    if(flag===0) {
        err_pass3 = document.getElementById("errore_pass3").style.display = 'block';
        event.preventDefault();
        return false;
    }

    else {/*
        let formData = new FormData();

        formData.append("username", username);
        formData.append("nome", nome);
        formData.append("cognome", cognome);
        formData.append("password", password);
        formData.append("telefono", telefono);

        fetch("register", {
            method: "POST",
            body: formData
        }).then(onResponse).then(onJson);*/
        console.log("ok");
    }
}

const formReg = document.getElementById('form_');
formReg.addEventListener('submit', confronto);
let err_campo = document.getElementById("errore_campo").classList.add("hide");
let err_pass1 = document.getElementById("errore_pass1").classList.add("hide");
let err_pass2 = document.getElementById("errore_pass2").classList.add("hide");
let err_pass3 = document.getElementById("errore_pass3").classList.add("hide");
//let err_campo = document.getElementById("errore_campo").style.display = 'none';
//let err_pass1 = document.getElementById("errore_pass1").style.display = 'none';
//let err_pass2 = document.getElementById("errore_pass2").style.display = 'none';
//let err_pass3 = document.getElementById("errore_pass3").style.display = 'none';
