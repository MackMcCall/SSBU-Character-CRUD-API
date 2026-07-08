<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="/style.css" />
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

        <a href="index.html">
            <button>Back to Gallery</button>
        </a>

        <h1>${character.name}</h1>

        <img
            src="/images/donkeyKong.png"
            class="details-img"
            alt="Donkey Kong"
        />

        <p>
            ${character.description}
        </p>
    </body>
</html>
