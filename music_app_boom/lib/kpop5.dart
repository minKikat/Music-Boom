import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop1.dart';
import 'package:music_app_boom/kpop4.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app_boom/song/bloc/song_player_state.dart';

class Kpop5 extends StatefulWidget {
  const Kpop5({super.key});

  @override
  Kpop5State createState() => Kpop5State();
}

class Kpop5State extends State<Kpop5> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/kpopSong%2FMagnetic.mp3?alt=media&token=ade321ae-3599-4344-8b6e-414d1c147607');
  }

  void togglePlayPause() {
    final cubit = context.read<SongPlayerCubit>();
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? cubit.playSong() : cubit.pauseSong();
    });
  }

  void toggleFavorite() {
    setState(() {
      isFavourite = !isFavourite;
    });
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
                        builder: (BuildContext context) => const Kpop()));
                  },
                ),
                IconButton(
                      icon: Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed:
                          toggleFavorite, // Added icon button for favorite
                    ),
                  ],
                ),
                const Text(
                  'Magnetic',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fmagnetic.png?alt=media&token=2e587065-0e54-4641-8a55-11a3c4214cc7',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                
                const Text(
                  'Magnetic',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'ILLIT',
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
                            builder: (BuildContext context) => const Kpop4()));
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
                            builder: (BuildContext context) => const Kpop1()));
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
                          'Baby, I\'m just trying to play it cool\n'
                          'But I just can\'t hide that I want you\n\n'
                          'Wait a minute, 이게 뭐지? (뭐지?)\n'
                          '내 심장이 lub-dub, 자꾸만 뛰어 (뛰어)\n'
                          '저 멀리서도, oh, (oh) my (my) gosh (gosh)\n'
                          '끌어당겨, you\'re my crush, 초능력처럼\n\n'
                          '거대한 자석이 된 것만 같아 my heart\n'
                          '네 모든 게 내 맘에 달라붙어버려, boy\n'
                          'We\'re magnetized, 인정할게\n'
                          'This time, I want\n\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                          'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                          'Dash-da-da, dash-da-da, dash-da, like it\'s magnetic\n'
                          'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                          'Dash-da-da, dash-da-da, baby, don\'t say no\n\n'
                          '정반대 같아 our type, 넌 J, 난 완전 P\n'
                          'S와 N 극이지만, 그래서 끌리지\n'
                          '내가 만들래 green light, 여잔 배짱이지\n'
                          'So let\'s go, let\'s go, let\'s go, let\'s go\n\n'
                          '숨기고 싶지 않아 자석 같은 my heart\n'
                          '내 맘의 끌림대로 너를 향해 갈게, boy\n'
                          'We\'re magnetized, 인정할게\n'
                          'This time, I want\n\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                          'No push and pull, 전속력으로 너에게 갈게 (in a rush, in a rush)\n'
                          'Our chemistry, 난 과몰입해 지금 순간에 (baby, you\'re my crush, you\'re my crush)\n'
                          'No push and pull, 네게 집중 후회는 안 할래 (gonna dash, gonna dash)\n'
                          'Never holding back, 직진해, yeah (직진해, yeah), this time, I want\n\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n'
                          'You, you, you, you, like it\'s magnetic\n'
                          'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                          'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                          'Dash-da-da, dash-da-da, dash-da, like it\'s magnetic\n'
                          'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                          'Dash-da-da, dash-da-da, baby, don\'t say no',
                          style: TextStyle(
                              fontFamily: "Century Gothic",
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
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
}
