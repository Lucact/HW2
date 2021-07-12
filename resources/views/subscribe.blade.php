<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="=width=device-width, initial-scale=1">
    <title>Subscribe</title>
    <link rel="stylesheet" href= "{{asset('css/style.css')}}">
    <script src="{{ asset('js/menu.js') }}" defer></script>
    <script src="{{ asset('js/subscribe.js') }}" defer></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&family=Roboto&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
</head>

<body>
<header>
    <div id="overlay"></div>
    <div id="Nome_sito">
        <h3>Cerca Lavoro</h3>
    </div>
    <nav>
        <div id="menuChiuso">
            <button onclick="apriMenu()" id="menuButton">
                <div></div>
                <div></div>
                <div></div>
            </button>
        </div>
        <div id="menuAperto">
            <button onclick="chiudiMenu()" id="menuButton2">
                <div></div>
                <div></div>
                <div></div>
            </button>
        </div>
        <div id="modale_menu">
            <a href='{{ url("home") }}'> Home </a>
            <a href='{{ url("subscribe") }}'>Subscribe</a>
            <a href='{{ url("accesso") }}'>Login</a>
        </div>
        <div id="links">
            <a href='{{ url("home") }}'> Home </a>
            <a href='{{ url("subscribe") }}'>Subscribe</a>
            <a href='{{ url("accesso") }}'>Login</a>
        </div>
    </nav>

</header>
<h2>Registrati per scoprire tante offerte di lavoro!</h2>
<main>
    <form id="form_" name="nome_form" method="post">

        <input type='hidden' name='_token' value='{{ $csrf_token }}'>
        <label>Username <input type='text' name="username" ></label>
        <label>Nome <input type='text' name='nome'></label>
        <label>Cognome <input type='text' name='cognome'></label>
        <label>Telefono <input type='tel' name='telefono'></label>
        <label>Password <input type='password' name='password'></label>
        <label>&nbsp;<input type='submit'></label>
        @if (isset($old_username))
            <c> Lo username {{ $old_username }} è già in uso!</c>
        @endif
    </form>
</main>
<p id="errore_pass3"><font color="red">Non hai inserito neanche un carettere speciale nella Password.</font></p>
<p id="errore_pass1"><font color="red">Password troppo corta! Inserirne una con almento sei caratteri.</font></p>
<p id="errore_pass2"><font color="red">Password troppo lunga! Inserirne una con massimo dodici caratteri.</font></p>
<p id="errore_campo"><font color="red">Compila tutti i campi per completare la registrazione!</font></p>
<b>
    <h4>La password deve contenere almeno un carattere speciale (Es: ! ? $ % ^ & # _ @). *</h4>
    <h4 align="center">Se sei già registrato <a href='{{ url("accesso") }}'> clicca qui </a> per effettuare l'accesso!</h4>
</b>

<footer>
    <h3 id="element1">Luca Rodolico O46001856</h3>
    <h3 id="element2">WebProgramming 2020/21</h3>
</footer>
</body>

</html>
