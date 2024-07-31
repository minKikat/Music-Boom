/*import 'package:flutter/material.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/song/bloc/favourite_provider.dart';
import 'package:provider/provider.dart'; // Import your provider

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                favouriteProvider.addFavourite('Song 1');
              },
              child: const Text('Add Song 1 to Favourites'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyFavourite(),
                  ),
                );
              },
              child: const Text('Go to My Favourites'),
            ),
          ],
        ),
      ),
    );
  }
}*/
