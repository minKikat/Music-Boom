import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop2.dart';
import 'package:music_app_boom/kpop4.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song_player/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app_boom/song_player/bloc/song_player_state.dart';

class Kpop3 extends StatefulWidget {
  const Kpop3({super.key});

  @override
  Kpop3State createState() => Kpop3State();
}

class Kpop3State extends State<Kpop3> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/kpopSong%2FBubble%20Gum.mp3?alt=media&token=2aa401af-1ea4-41d9-9070-08e8506281fc');
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
                  'Bubble Gum',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fbubble%20gum.png?alt=media&token=3b614659-762d-46c7-8865-71ca7a3cbe35',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Bubble Gum',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'NewJeans',
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
                            builder: (BuildContext context) => const Kpop2()));
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
                            builder: (BuildContext context) => const Kpop4()));
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
                          '''
You just get my heart pump, pumping
Every time that you're here around me
노랫 소리가 또 흘러나와, yeah (yeah)
오늘 오래 걸린 이유
I'm always so excited to meet you
내 향기가 널 먼저 찾아가, yeah (먼저 찾아가, yeah)

눈 감아도 기억나게, 어디라도 따라갈래
You're so delicate, 거품 속에 숨었네, uh-uh-uh-uh-uh
Oh, you make my heart melt away, you're a softie, 구름 같아
이건 말로 설명 못해, you got me, oh-oh-oh-oh-oh (oh!)
이미 우린 저기 멀리 높이 있는 풍선같이
Have you right here in a basket

Oh, my baby, sweet like bubble gum
Bouncin' like playin' ball
더 높이 올려줘
We're gonna fly away
Sweet like bubble, yum
So smooth, soft like a hug
더 멀리 날려줘
Let's go far away

You're my favorite flavor, bubble gum
Bubble, bubble, bubble, bubble, bubble, bubble
Bubble, bubble, bubble gum

얘기 늘어놓아 줄줄
Like I got nothing better to do
내 손바닥 안에 쏙 들어와, yeah (yeah)
나만 알고 싶은 비밀 (oh-oh)
All I know is I need this feeling (oh-oh)
내 윤기가 널 먼저 사로잡아, yeah (ooh, oh)

눈 감아도 기억나게, 어디라도 따라갈래
You're so delicate, 거품 속에 숨었네, uh-uh-uh-uh-uh
Oh, you make my heart melt away, you're a softie, 구름 같아
이건 말로 설명 못해, you got me, oh-oh-oh-oh-oh

Sweet like bubble gum
Bouncin' like playin' ball
더 높이 올려줘
We're gonna fly away
Sweet like bubble, yum
So smooth, soft like a hug
더 멀리 날려줘
Let's go far away

눈 감아도 기억나게, 어디라도 따라갈래
You're so delicate, 거품 속에 숨었네, uh-uh-uh-uh-uh
Oh, you make my heart melt away, you're a softie, 구름 같아
이건 말로 설명 못해, you got me, oh-oh-oh-oh-oh
이미 우린 저기 멀리 높이 있는 풍선같이
Have you right here in a basket
Oh, my baby, sweet like bubble gum
이미 우린 저기 멀리 높이 있는 풍선같이
Have you right here in a basket
Oh, my baby, sweet like bubble gum
                    ''',
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
