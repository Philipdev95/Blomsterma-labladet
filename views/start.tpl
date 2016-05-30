<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <title>Blomstermåla dagblad || Philip & Emma</title>
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<<<<<<< HEAD
        <link href="/static/main.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="DBProjekt.js"></script>
=======
        <link href="../static/main.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="../static/DBProjekt.js"></script>
>>>>>>> origin/TPL
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
                % for UKnamn in underkategori:
                <a class="underkategori" href="#">{{ UKnamn }}</a>
                % end
            </div>
        </div>
            <div class="annonspuff">
                <h1> <a href="{{ puffar[0] }}">{{ puffar[0] }}</a></h1>
                <p>{{ puffar[3] }}</p>
            </div>
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
            % for puff in puffar:
            <div class="annonspuff">
            <h3> 
                <a href="{{ puffar[0] }}">{{ puffar[1] }}</a>
            </h3>
                <p>{{ puffar[2] }}</p>
            </div>
            % end
>>>>>>> origin/TPL
        </div>
    </body>
</html>