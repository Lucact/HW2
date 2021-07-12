<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="=width=device-width, initial-scale=1">
    <title>Accesso</title>
    <link rel="stylesheet" href= "{{asset('css/style.css')}}">
    <script src="{{ asset('js/menu.js') }}" defer></script>
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
<main id="form_">
    <h5 class="errore">E-mail o Password errati. Riprova.</h5>
    <form id= "nome_form" action="{{route('checkLogin')}}" name="nome_form" method="POST">
        <input type="hidden" name="_token" value='{{ $csrf_token }}'>
        <label>Username <input type='text' name='username'></label>
        <label>Password <input type='password' name='password'></label>
        <label>&nbsp;<input type='submit'></label>
    </form>

    <b>
        <h4> Se non sei registrato <a href='{{ url("subscribe") }}'> clicca qui </a> per iscriverti!</h4>
    </b>
    <img src="https://servizi.sardegnalavoro.it/sardinianjobday/images/sjd_cerca_offerte.png" />
</main>

<footer>
    <h3 id="element1">Luca Rodolico O46001856</h3>
    <h3 id="element2">WebProgramming 2020/21</h3>
</footer>
</body>

</html>
