import 'package:flutter/material.dart';
import 'package:music_app_boom/favourite_service/favourite_provider.dart';
//import 'package:music_app_boom/favourite_service/favourite_icon.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop2.dart';
import 'package:music_app_boom/mandopop5.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

class Mandopop1 extends StatefulWidget {
  const Mandopop1({super.key});

  @override
  Mandopop1State createState() => Mandopop1State();
}

class Mandopop1State extends State<Mandopop1> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;
  final Logger _logger = Logger('Mandopop1State');
  final String songId =
      'Gulf_of_Alaska'; // Use a unique identifier for the song

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopopSong%2FGulf%20of%20alaska.mp3?alt=media&token=1f674511-8390-493a-9404-2500668cf373');
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
        _logger.info('Adding to favorites: Gulf of Alaska');
        favoriteProvider.addFavourite("Gulf of Alaska");
      } else {
        _logger.info('Removing from favorites: Gulf of Alaska');
        favoriteProvider.removeFavourite("Gulf of Alaska");
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
                            builder: (BuildContext context) =>
                                const Mandopop()));
                      },
                    ),
                    // favourite icon
                    IconButton(
                      icon: Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_border,
                        color: isFavourite ? Colors.red : Colors.white,
                      ),
                      onPressed: toggleFavorite,
                    ),
                  ],
                ),
                const Text(
                  'Gulf of Alaska',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2FGulf%20of%20Alaska.png?alt=media&token=a5960dad-544a-4e0f-aaf5-c00289496f84',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Gulf of Alaska',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Firdaus',
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
                                const Mandopop5()));
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
                                const Mandopop2()));
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: const Color.fromRGBO(57, 191, 212, 1),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '上天啊\n'
                          '难道你看不出我很爱她\n'
                          '怎么明明相爱的两个人\n'
                          '你要拆散他们啊\n\n'
                          '上天啊\n'
                          '你千万不要偷偷告诉她\n'
                          '在无数夜深人静的夜晚\n'
                          '有个人在想她\n\n'
                          '以后的日子你要好好照顾她\n'
                          '我不在她身旁你不能欺负她\n'
                          '别再让人走进她心里\n'
                          '最后却又离开她\n'
                          '因为我不愿再看她流泪啦\n\n'
                          '上天啊\n'
                          '你是不是在偷偷看笑话\n'
                          '明知我还没能力保护她\n'
                          '让我们相遇啊\n\n'
                          '上天啊\n'
                          '她最近是否不再失眠啦\n'
                          '愿世间温情化作一缕风\n'
                          '代替我拥抱她\n\n'
                          '以后的日子你要好好照顾她\n'
                          '我不在他身旁你不能欺负她\n'
                          '别再让人走进她心里\n'
                          '最后却又离开她\n'
                          '因为我不愿再看她流泪啦\n\n'
                          '希望我的努力能够赶上她\n'
                          '有天我能给她完整的一个家\n'
                          '可若妳安排了别人给她\n'
                          '我会祝福她\n'
                          '上天你别管我先让她幸福吧\n\n'
                          '上天啊\n'
                          '这些晚上我对你说的话\n'
                          '你别不小心漏嘴告诉她\n'
                          '我怕会吵醒她\n\n'
                          '上天啊\n'
                          '你千万不要偷偷告诉她\n'
                          '在无数夜深人静的夜晚\n'
                          '我依旧在想她',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: navigateToFavorites,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(57, 191, 212, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                    ),
                    child: const Text(
                      'View Favorites',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
