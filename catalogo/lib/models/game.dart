class Game {
  final String id;
  final String title;
  final String developer;
  final String shortDescription;
  final String fullDescription;
  final String imageUrl;
  final double rating;
  final String price;
  final String category;
  final String platforms;

  Game({
    required this.id,
    required this.title,
    required this.developer,
    required this.shortDescription,
    required this.fullDescription,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.category,
    required this.platforms,
  });
}


final List<Game> mockGames = [
  Game(
    id: '1',
    title: 'Elden Ring',
    developer: 'FromSoftware',
    shortDescription: 'Un RPG de acción y fantasía en un vasto mundo abierto.',
    fullDescription: 'Explora las Tierras Intermedias, desentraña los misterios del Poder del Anillo de Elden y enfréntate a temibles criaturas en esta aclamada aventura de rol y combate desafiante.',
    imageUrl: 'https://i.blogs.es/ce5c99/elden-ring-tarnished-edition/1200_800.jpeg',
    rating: 4.9,
    price: '\$1229 MXN',
    category: 'RPG',
    platforms: 'PC, PS5, Xbox',
  ),
  Game(
    id: '2',
    title: 'Cyberpunk 2077',
    developer: 'CD Projekt Red',
    shortDescription: 'Aventura de acción en la megalópolis de Night City.',
    fullDescription: 'Conviértete en un mercenario urbano equipado con mejoras cibernéticas y construye tu propio camino en una ciudad obsesionada con el poder, el glamur y las modificaciones corporales.',
    imageUrl: 'https://seagm-media.seagmcdn.com/icon_400/3579.jpg?x-oss-process=image/resize,w_240',
    rating: 4.5,
    price: '\$861.21 MXN',
    category: 'Shooter',
    platforms: 'PC, PS5, Xbox',
  ),
  Game(
    id: '3',
    title: 'Hollow Knight',
    developer: 'Team Cherry',
    shortDescription: 'Forja tu propio camino en un reino olvidado de insectos.',
    fullDescription: 'Una aventura de acción clásica en 2D ambientada en un vasto mundo interconectado. Explora cavernas retorcidas, combate contra criaturas corrompidas y entabla amistad con extraños bichos.',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/d/de/Hollow_Knight_2026_cover_art.jpg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original',
    rating: 4.8,
    price: '\$329 MXN',
    category: 'Indies',
    platforms: 'PC, Switch, PS4, XBOX',
  ),
  Game(
    id: '4',
    title: 'Mortal Kombat 1',
    developer: 'NetherRealm Studios',
    shortDescription: 'Descubre un Universo de Mortal Kombat renacido.',
    fullDescription: 'Mortal Kombat 1 marca el comienzo de una nueva era para la icónica franquicia con un nuevo sistema de combate, modos de juego redefinidos y remates "Fatality" espectaculares.',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/5/5b/Mortal_Kombat_1_key_art.jpeg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original', 
    rating: 4.7,
    price: '\$699 MXN',
    category: 'Lucha',
    platforms: 'PC, PS5, Xbox, Switch',
  ),
  Game(
    id: '5',
    title: 'The Legend of Zelda: Tears of the Kingdom',
    developer: 'Nintendo',
    shortDescription: 'Una épica aventura por la tierra y los cielos de Hyrule.',
    fullDescription: 'Embárcate en una peligrosa misión para descubrir la verdad detrás de un evento catastrófico que ha sumido al reino en el caos. Crea tus propias armas y vehículos con las nuevas habilidades de Link.',
    imageUrl: 'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_656/b_white/f_auto/q_auto/store/software/switch2/70010000096821/f20258999e8d852a496dad2961a87faf2b119488f97fb81442f378043e58b000',
    rating: 4.9,
    price: '\$1649 MXN',
    category: 'RPG',
    platforms: 'Nintendo Switch, Nintendo Switch 2',
  ),
  Game(
    id: '6',
    title: 'God of War Ragnarök',
    developer: 'Santa Monica Studio',
    shortDescription: 'Kratos y Atreus deben viajar a cada uno de los Nueve Reinos.',
    fullDescription: 'Embárcate en un viaje mítico en busca de respuestas antes de la llegada del Ragnarök. Juntos, Kratos y Atreus deben ponerlo todo en juego mientras viajan a cada uno de los Nueve Reinos.',
    imageUrl: 'https://static.wikia.nocookie.net/godofwar/images/c/ca/Portada_God_of_War_Ragnarok.png/revision/latest?cb=20211008000423&path-prefix=es',
    rating: 4.8,
    price: '\$1203 MXN',
    category: 'RPG',
    platforms: 'PS4, PS5, PC',
  ),
  Game(
    id: '7',
    title: 'Resident Evil 4 Remake',
    developer: 'Capcom',
    shortDescription: 'Sobrevive al pesadilla en un aislado pueblo europeo.',
    fullDescription: 'Leon S. Kennedy es enviado a rescatar a la hija del presidente. El camino lo lleva a un pueblo remoto donde los aldeanos sufren una terrible infección por un parásito.',
    imageUrl: 'https://m.media-amazon.com/images/I/712XPl7+qKL._AC_SX342_SY445_QL70_ML2_.jpg',
    rating: 4.8,
    price: '\$688.79 MXN',
    category: 'Shooter',
    platforms: 'PC, PS5, Xbox',
  ),
  Game(
    id: '8',
    title: 'Minecraft',
    developer: 'Mojang Studios',
    shortDescription: 'Construye, explora y sobrevive en mundos infinitos.',
    fullDescription: 'Explora mundos generados aleatoriamente y construye cosas increíbles, desde la casa más sencilla hasta el más grandioso de los castillos. Juega en modo creativo con recursos ilimitados o en el modo supervivencia.',
    imageUrl: 'https://zonagamerslatam.com/wp-content/uploads/2025/08/Minecraft.jpg',
    rating: 4.8,
    price: '\$403.49 MXN',
    category: 'Indies',
    platforms: 'PC, XBOX, Mobile ',
  ),
];