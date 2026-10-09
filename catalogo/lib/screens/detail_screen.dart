import 'package:flutter/material.dart';
import '../models/game.dart';

class DetailScreen extends StatefulWidget {
  final Game game;

  const DetailScreen({super.key, required this.game});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    final game = widget.game;

    return Scaffold(
      appBar: AppBar(
        title: Text(game.title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            Hero(
              tag: game.id,
              child: Image.network(
                game.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          game.title,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isWishlist ? Icons.bookmark : Icons.bookmark_border,
                          color: isWishlist ? Colors.deepPurple : Colors.grey,
                          size: 32,
                        ),
                        onPressed: () {
                          setState(() {
                            isWishlist = !isWishlist;
                          });
                        },
                      )
                    ],
                  ),
                  Text(
                    'Desarrollado por: ${game.developer}',
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const SizedBox(height: 20),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildInfoTile(Icons.star, game.rating.toString(), 'Valoración', Colors.amber),
                      _buildInfoTile(Icons.attach_money, game.price, 'Precio', Colors.green),
                      _buildInfoTile(Icons.devices, game.platforms, 'Plataformas', Colors.blue),
                    ],
                  ),
                  const Divider(height: 32),

                 
                  const Text(
                    'Acerca del juego',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    game.fullDescription,
                    style: const TextStyle(fontSize: 15, height: 1.4),
                  ),
                  const SizedBox(height: 30),

              
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text('Comprar Ahora', style: TextStyle(fontSize: 16)),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('¡Añadido al carrito: ${game.title}!')),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String value, String label, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
      ],
    );
  }
}