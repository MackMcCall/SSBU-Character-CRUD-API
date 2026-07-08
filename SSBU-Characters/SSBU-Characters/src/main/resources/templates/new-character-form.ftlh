<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <header class="site-header">
            <h1 class="site-title">Super Smash Bros Gallery</h1>

            <nav>
                <ul class="nav-links">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="details.html">Details</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="new-character-form.html">New Character</a></li>
                </ul>
            </nav>
        </header>

        <h1>Add a New Super Smash Bros Character</h1>
        <h2>
            Update the gallery to include your favorite Super Smash Bros
            character!
        </h2>
        <hr />

        <form action="/submit-data" method="POST">
            <label for="character-name">Character Name:</label>
            <input
                type="text"
                id="character-name"
                name="character-name"
                required
            />

            <label for="description">Description:</label>
            <input type="text" id="description" name="description" required />

            <label for="image-url">Image URL:</label>
            <input type="text" id="image-url" name="image-url" required />

            <button type="submit">Submit</button>
        </form>
    </body>
</html>
