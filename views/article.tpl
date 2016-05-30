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
            % for huvud in kategori:
            <a id="inrikes" class="huvudkategori" href="#" onclick="showHideInr()">
                {{huvud}}</a>
            % end
            <div id="inrikesmenu" class="undermeny">
                % for UKnamn in underkategori
                <a class="underkategori" href="#">{{ UKnamn }}</a>
                % end
            </div>
        </div>
        <div id="wrapper">
            <div class="article_annons">
                <h3 class="annons_titel">{{ Rubrik }}</h3>
                <p class="annons_text">{{ Ingress }}</p>
            </div>
            
            <div class="article_annons">
                <h1> {{ puffar[0] }} </h1>
                <p><b>{{ puffar[3] }}</b></p>
                <p>{{ puffar[4] }}</p>
                <p>{{ puffar[1] }}</p>
                <p>{{ puffar[2] }}</p>
            </div>
        </div>
    </body>
</html>