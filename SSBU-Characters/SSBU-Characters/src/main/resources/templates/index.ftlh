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
                    <li><a href="/">Home</a></li>
                    <li><a href="/details">Details</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/new">New Character</a></li>
                </ul>
            </nav>
        </header>

        <h1>Super Smash Bros Character Gallery</h1>
        <h2>
            Explore an amazing collection of characters from the Super Smash
            Bros videogame.
        </h2>
        <hr />

        <form action="/search" method="GET" class="search-card">
            <input
                type="text"
                name="query"
                placeholder="Search by name or universe"
                class="search-box"
            />
            <button type="submit" class="icon">🔍</button>
        </form>

        <main>
            <section class="characters">
                <!-- placeholder for search bar -->

                <!-- placeholder for filters -->
                <div class="character-container">
                    <#list charactersList as character>
                    <article class="character">
                        <h3>${character.name}</h3>
                        <img src="/images/${character.name}.png" alt="${character.name}" />
                        <p>
                            ${character.description}
                        </p>
                        <a href="/chars/${character.id}">
                            <button>View Details</button>
                        </a>
                    </article>
                    </#list>
                </div>
            </section>
        </main>
    </body>
</html>
