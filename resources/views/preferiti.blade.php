<?php
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="=width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Work</title>
    <link rel="stylesheet" href= "{{asset('css/style.css')}}">
    <script src="{{ asset('js/menu.js') }}" defer></script>
    <script src="{{ asset('js/preferiti.js') }}" defer></script>
    <script src="{{ asset('js/cerca_lavoro.js') }}" defer></script>
    <link href= "{{asset('css/fontawesome-free-5.15.3-web/CSS/fontawesome.CSS')}}" rel="stylesheet">
    <link href="{{asset('css/fontawesome-free-5.15.3-web/CSS/solid.CSS')}}" rel="stylesheet">
    <link href="{{asset('css/fontawesome-free-5.15.3-web/CSS/brands.CSS')}}" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&family=Roboto&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
</head>

<body>

<div id="overlay_commenti"></div>
<div id="modale_commenti">
    <p id="avviso_commenti">Non ci sono commenti</p>
    <div id="commenti">
    </div>
    <form name="inviaCommento" id="formCommento">
        <label>
            <input name="commento" type="text" id="testo_commento"/>
            <input type="submit" id="invia_commento"/>
        </label>
    </form>
</div>
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
            <a href='{{ url("cerca_lavoro") }}'>Home</a>
            <a href='{{ url("preferiti") }}'>Preferiti</a>
            <a href='{{ url("ricerca") }}'>Ricerca</a>
            <a href='{{ url("logout") }}'>Logout</a>
        </div>
        <div id="links">
            <a href='{{ url("cerca_lavoro") }}'>Home</a>
            <a href='{{ url("preferiti") }}'>Preferiti</a>
            <a href='{{ url("ricerca") }}'>Ricerca</a>
            <a href='{{ url("logout") }}'>Logout</a>
        </div>
    </nav>
</header>
<div id="container">
    <div class="separatore"> <h1>OFFERTE PREFERITE</h1>

    </div>
    <div id="main">
    </div>
    <p id="avviso">Non ci sono altre offerte.</p>
</div>
<article id="offerte-view">

</article>
</body>

</html>
