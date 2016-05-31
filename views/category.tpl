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
            <a class="h1" href="/"><h1 class="h1">Blomstermåla dagblad</h1></a>
        </header>
        <div id="menybox">
            <h3 id="h3meny">MENY</h3>
        </div>
        <div id="menu">
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
			% for item in kategori_namn:
            <h3>{{ item }}</h3>
			% end
			% for puff in puffar:
				<div class="annonspuff">
					<h3> 
						<a href="/{{ puff[0] }}">{{ puff[1] }}</a>
					</h3>
					<p>{{ puff[2] }}</p>
				</div>
            % end
        </div>
        </div>
    </body>
</html>