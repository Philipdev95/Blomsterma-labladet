<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <title>Blomstermåla dagblad || Philip & Emma</title>
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
        <link href="../static/main.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="DBProjekt.js"></script>
    </head>
    <body onload="setUp()">
        <header>
            <a class="h1" href="#"><h1 class="h1">Blomstermåla dagblad</h1></a>
        </header>
        <div id="menybox">
            <h3 id="h3meny">MENY</h3>
        </div>
        <div id="menu">
                <a id="inrikes" class="huvudkategori" href="#" onclick="showHideInr()">
                    Inrikes
                </a>
                <div id="inrikesmenu" class="undermeny">
                    <a class="underkategori" href="#">Politik</a>
                    <a class="underkategori" href="#">Nyheter</a>
                </div>
            
                <a id="utrikes" class="huvudkategori" href="#" onclick="showHideUtr()">
                    Utrikes
                </a>
                <div id="utrikesmenu" class="undermeny">
                    <a class="underkategori" href="#">Politik</a>
                    <a class="underkategori" href="#">Nyheter</a>
                </div>
            
                <a id="lokalt" class="huvudkategori" href="#" onclick="showHideLok()">
                    Lokalt
                </a>
                <div id="lokaltmenu" class="undermeny">
                    <a class="underkategori" href="#">Nyheter</a>
                    <a class="underkategori" href="#">Väder</a>
                    <a class="underkategori" href="#">Evenemang</a>
                </div>
            
                <a id="kultur" class="huvudkategori" href="#" onclick="showHideKul()">
                    Kultur
                </a>
                <div id="kulturmenu" class="undermeny">
                    <a class="underkategori" href="#">Musik</a>
                    <a class="underkategori" href="#">Film</a>
                    <a class="underkategori" href="#">Teater</a>
                    <a class="underkategori" href="#">Konst</a>
                    <a class="underkategori" href="#">Litteratur</a>
                </div>
            
                <a id="sport" class="huvudkategori" href="#" onclick="showHideSpo()">
                    Sport
                </a>
                <div id="sportmenu" class="undermeny">
                    <a class="underkategori" href="#">Fotboll</a>
                    <a class="underkategori" href="#">Hockey</a>
                    <a class="underkategori" href="#">Tennis</a>
                    <a class="underkategori" href="#">Handboll</a>
                    <a class="underkategori" href="#">Trav</a>
                </div>
                
                <a id="ekonomi" class="huvudkategori" href="#" onclick="showHideEko()">
                    Ekonomi
                </a>
                <div id="ekonomimenu" class="undermeny">
                    <a class="underkategori" href="#">Börsen</a>
                    <a class="underkategori" href="#">Valutor</a>
                    <a class="underkategori" href="#">Din Ekonomi</a>
                </div>
            
            </div>
            
        <div id="wrapper">
            <div class="annonspuff">
                <h3 class="puff_titel">Titel 1</h3>
                <p class="puff_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec leo in purus sollicitudin blandit in ut ipsum. Cras placerat, elit eu iaculis laoreet, metus magna congue urna, eget feugiat sapien justo eget lacus</p>
            </div>
        </div>
    </body>
</html>