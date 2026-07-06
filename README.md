# SSBU-Character-CRUD-API

## API Endpoints

All endpoints use the base URL: `https://ssbu-character-crud-api.onrender.com/api/characters`

### 1. Get All Characters

```http
GET /api/characters
```

**Response:**

```json
[
    {
        "contentPack": "Base Game",
        "description": "The well-loved koopa-stomping plumber that started it all.",
        "id": 1,
        "name": "Mario",
        "universe": "Mario"
    },
    {
        "contentPack": "Base Game",
        "description": "A cute pink puffball that can absorb the power of thier enemies by sucking them in.",
        "id": 3,
        "name": "Kirby",
        "universe": "Kirby"
    }
]
```

### 2. Get Character by ID

```http
GET /api/characters/{id}
```

**Response:**

```json
{
    "contentPack": "Base Game",
    "description": "The well-loved koopa-stomping plumber that started it all.",
    "id": 1,
    "name": "Mario",
    "universe": "Mario"
}
```

### 3. Create a New Character

```http
POST /api/characters
request body:
{
  "name": "Pikachu",
  "description": "An energetic Electric-type Pokémon known for storing electricity in its cheeks and unleashing powerful lightning attacks.",
  "contentPack": "Base Game",
  "universe": "Pokemon"
}
```

**Response:**

```json
{
    "contentPack": "Base Game",
    "description": "An energetic Electric-type Pokémon known for storing electricity in its cheeks and unleashing powerful lightning attacks.",
    "id": 5,
    "name": "Pikachu",
    "universe": "Pokemon"
}
```

### 4. Update an Existing Character

```http
PUT /api/characters/{id}
request body:
{
  "name": "Pikachu",
  "description": "Updated description.",
  "contentPack": "Base Game",
  "universe": "Pokemon"
}
```

**Response:**

```json
{
    "contentPack": "Base Game",
    "description": "Updated description.",
    "id": 5,
    "name": "Pikachu",
    "universe": "Pokemon"
}
```

### 5. Delete a Character

```http
DELETE /api/characters/{id}
```

**Response:** <Empty>

### 6. Search Characters by Title or Content

```http
GET /api/characters/search?query={searchTerm}
```

**Response:**

```json
[
    {
        "contentPack": "Base Game",
        "description": "The well-loved koopa-stomping plumber that started it all.",
        "id": 1,
        "name": "Mario",
        "universe": "Mario"
    }
]
```

### 7. Search Characters by Universe

```http
GET /api/characters/search?universe={universeName}
```

**Response:**

```json
[
    {
        "contentPack": "DLC Pack 1",
        "description": "The leader of the Phantom Thieves from Persona 5, Joker fights with swift dagger attacks, a pistol, and the power of his Persona, Arsène.",
        "id": 6,
        "name": "Joker",
        "universe": "Persona"
    }
]
```
