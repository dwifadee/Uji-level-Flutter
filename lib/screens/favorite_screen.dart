import 'package:flutter/material.dart';
import 'package:movieui_design_starter/data/movie.dart';
import 'package:movieui_design_starter/utils/colors.dart';

class FavoriteScreen extends StatefulWidget {
  final ValueChanged<MovieModel>? onAddToFavorites; // Tambahkan parameter fungsi
  const FavoriteScreen({Key? key, this.onAddToFavorites}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<MovieModel> favoriteMovies = [];

  // Fungsi untuk menambah film ke daftar favorit
  void addToFavorites(MovieModel movie) {
    setState(() {
      favoriteMovies.add(movie);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor, // Set background color to dark
      appBar: AppBar(
        title: const Text('Keranjang'),
        backgroundColor: kBackgroundColor, // Set AppBar background to dark
      ),
      body: favoriteMovies.isEmpty
          ? Center(
              child: Text(
                'Keranjang Kosong.',
                style: TextStyle(
                  color: Colors.white, // Set text color to white for dark mode
                ),
              ),
            )
          : ListView.builder(
              itemCount: favoriteMovies.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    favoriteMovies[index].imageAsset!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    favoriteMovies[index].movieName!,
                    style: TextStyle(
                      color: Colors.white, // Set text color to white for dark mode
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.white), // Set icon color to white for dark mode
                    onPressed: () {
                      setState(() {
                        favoriteMovies.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Logika untuk checkout
          // Misalnya, navigasi ke halaman checkout
        },
        label: const Text('Checkout'),
        icon: const Icon(Icons.shopping_cart),
        backgroundColor: kButtonColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
