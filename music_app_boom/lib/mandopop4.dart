import 'package:flutter/material.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop3.dart';
import 'package:music_app_boom/mandopop5.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app_boom/song_player/bloc/song_player_cubit.dart';
import 'package:music_app_boom/song_player/bloc/song_player_state.dart';
import 'package:music_app_boom/favourite_service/favourite_provider.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/service/firestore.dart';

class Mandopop4 extends StatefulWidget {
  Mandopop4({super.key});

  final FirestoreService firestoreService = FirestoreService();

  @override
  Mandopop4State createState() => Mandopop4State();
}

class Mandopop4State extends State<Mandopop4> {
   bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;
  final Logger _logger = Logger('Mandopop4State');

  final String songName = 'Best Friend';
  final String artistName = 'Eric Chou';
  final String imageUrl =
      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Fbest%20friend.png?alt=media&token=1bd82dd2-6854-4c84-97f5-b4b2e094c836';
  
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'assets/audio/mandopop/Best Friend.mp3');
        _checkIfFavourite(); // Check if the song is a favourite
  }

  Future<void> _checkIfFavourite() async {
    final isFav = await widget.firestoreService.isFavorite(songName);
    setState(() {
      isFavourite = isFav;
    });
  }

  // ignore: unused_element
  Future<void> _loadLocalAsset() async {
    try {
      await audioPlayer.setAsset('assets/audio/mandopop/Best Friend.mp3');
    } catch (e) {
      print('Error loading asset: $e');
    }
  }

  void togglePlayPause() {
    final cubit = context.read<SongPlayerCubit>();
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? cubit.playSong() : cubit.pauseSong();
    });
  }

  void toggleFavorite() {
    final favoriteProvider =
        Provider.of<FavouriteProvider>(context, listen: false);
    setState(() {
      isFavourite = !isFavourite;
      if (isFavourite) {
        _logger.info('Adding to favorites: $songName');
        favoriteProvider.addFavourite(songName);
        widget.firestoreService
            .addSong(songName, artistName, imageUrl); // Add song to Firestore
      } else {
        _logger.info('Removing from favorites: $songName');
        favoriteProvider.removeFavourite(songName);
      }
    });
  }

  void navigateToFavorites() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MyFavourite(),
      ),
    );
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  Widget _songPlayer(BuildContext context) {
    return BlocBuilder<SongPlayerCubit, SongPlayerState>(
      builder: (context, state) {
        if (state is SongPlayerLoaded) {
          return Column(
            children: [
              Slider(
                min: 0,
                max: state.songDuration.inSeconds.toDouble(),
                value: state.songPosition.inSeconds.toDouble(),
                onChanged: (value) {
                  final position = Duration(seconds: value.toInt());
                  context.read<SongPlayerCubit>().seekSong(position);
                },
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
              ),
              const SizedBox(height: 10),
            ],
          );
        }
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Mandopop()));
                  },
                ),
                // favourite icon
                    IconButton(
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : Colors.white,
                        ),
                        onPressed: toggleFavorite),
                  ],
                ),
                const Text(
                  'Best Friend',
                  style: TextStyle(
                    fontFamily: "Century Gothic",
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(57, 191, 212, 1),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Fbest%20friend.png?alt=media&token=1bd82dd2-6854-4c84-97f5-b4b2e094c836',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Best Friend',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Eric Chou',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(height: 20),
                _songPlayer(context),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<SongPlayerCubit, SongPlayerState>(
                      builder: (context, state) {
                        if (state is SongPlayerLoaded) {
                          return Text(
                            formatDuration(state.songPosition),
                            style: const TextStyle(color: Colors.white),
                          );
                        }
                        return Container();
                      },
                    ),
                    BlocBuilder<SongPlayerCubit, SongPlayerState>(
                      builder: (context, state) {
                        if (state is SongPlayerLoaded) {
                          return Text(
                            formatDuration(state.songDuration),
                            style: const TextStyle(color: Colors.white),
                          );
                        }
                        return Container();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 Mandopop3()));
                      },
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(57, 191, 212, 1),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: togglePlayPause,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 Mandopop5()));
                       },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
