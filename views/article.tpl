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
			% for item in article:
            <div class="article_annons">
                <h1>{{ item[0] }}</h1>
                <p>{{ item[1] }}</p>
                <p>{{ item[2] }}</p>
                <p>{{ item[3] }}</p>
                <p>{{ item[4] }}</p>
            </div>
			% end
			<form action="/comment/{{ item[5] }}" method="POST">
				<label for="author">Namn: </label>
				<input type="text" name="author" id="author">
				<label for="comment_text">Kommentar: </label>
				<textarea rows="4" cols="20" name="comment_text" id="comment_text"></textarea>
				<input type="submit" value="Skicka">
			</form>
			% for item in kommentarer:
            <div class="article_annons">
                <h3>{{ item[0] }}</h3>
                <p>{{ item[1] }}</p>
            </div>
			% end
		</div>
    </body>
</html>