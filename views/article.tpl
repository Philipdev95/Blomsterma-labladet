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
    <body>
        <header>
            <a class="h1" href="#"><h1 class="h1">Blomstermåla dagblad</h1></a>
        </header>
        <div id="menybox">
            <h3 id="h3meny">MENY</h3>
        </div>
        <div id="menu">
<<<<<<< HEAD
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
=======
            <% 
               for rad in allakategori:
               if rad in huvudkategori:
            %>
            <a class="huvudkategori">
                {{ rad }}</a>
            % else:
            <div class="undermeny">
                <a class="underkategori" href="/kategori/{{ rad }}">{{ rad }}</a>
            </div>
            % end
                % end
            
        </div>
        <div id="wrapper">
            % for stuff in article:
            <div class="article_annons">
                <h1>{{ article[0] }}</h1>
                <p><b>{{ article[1] }}</b></p>
                <p>{{ article[2] }}</p>
                <p>{{ article[3] }}</p>
                <p>{{ article[4] }}</p>
>>>>>>> origin/TPL
            </div>
            % end
        </div>
    </body>
</html>