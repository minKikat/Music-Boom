import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/audio_links.dart';
import 'package:music_app_boom/mandopop/mandopop.dart';
import 'package:music_app_boom/mandopop/mandopop1.dart';
import 'package:music_app_boom/mandopop/mandopop3.dart';
import 'package:music_app_boom/picture_links.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app_boom/song_player/song_player_cubit.dart';
import 'package:music_app_boom/song_player/song_player_state.dart';
import 'package:music_app_boom/favourite_service/favourite_provider.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/service/firestore.dart';

class Mandopop2 extends StatefulWidget {
  Mandopop2({super.key});

  final FirestoreService firestoreService = FirestoreService();

  @override
  Mandopop2State createState() => Mandopop2State();
}

class Mandopop2State extends State<Mandopop2> {
  bool isPlaying = true;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;
  final Logger _logger = Logger('Mandopop2State');

  final String songName = 'Long';
  final String artistName = 'Zhang Bi Chen';
  final String imageUrl = PictureLinks.long;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    final cubit = context.read<SongPlayerCubit>();
    const songUrl = AudioLinks.long;

    cubit.loadSong(songUrl).then((_) {
      // Auto-play after the song is loaded
      cubit.playSong();
      setState(() {
        isPlaying = true;
      });
    });
    _checkIfFavourite(); // Check if the song is a favourite
  }

  Future<void> _checkIfFavourite() async {
    final isFav = await widget.firestoreService.isFavorite(songName);
    setState(() {
      isFavourite = isFav;
    });
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
        widget.firestoreService.addSong(songName, artistName, imageUrl);
      } else {
        _logger.info('Removing from favorites: $songName');
        favoriteProvider.removeFavourite(songName);
        widget.firestoreService
            .removeSong(songName); // Remove song from Firestore
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
                activeColor: const Color.fromRGBO(57, 191, 212, 1),
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
                            builder: (BuildContext context) =>
                                const Mandopop()));
                      },
                    ),
                    IconButton(
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : Colors.white,
                        ),
                        onPressed: toggleFavorite),
                  ],
                ),
                Text(
                  songName,
                  style: const TextStyle(
                    fontFamily: "Century Gothic",
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(57, 191, 212, 1),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 380, // Adjust as needed
                    height: 320, // Adjust as needed
                    decoration: BoxDecoration(
                      color: Colors.black, // Optional: background color
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 8, // Blur radius
                          offset: const Offset(0, 4), // Shadow offset
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit
                            .contain, // Ensures the whole image is visible
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  songName,
                  style: const TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                Text(
                  artistName,
                  style: const TextStyle(
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
                            builder: (BuildContext context) => Mandopop1()));
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
                            builder: (BuildContext context) => Mandopop3()));
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
