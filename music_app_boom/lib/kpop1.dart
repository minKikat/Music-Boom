import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop2.dart';
import 'package:music_app_boom/kpop5.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Kpop1 extends StatefulWidget {
  const Kpop1({super.key});

  @override
  Kpop1State createState() => Kpop1State();
}

class Kpop1State extends State<Kpop1> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/kpopSong%2FBoombayah.mp3?alt=media&token=34b947af-e8ac-41c6-8f16-a89f59948d85');
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
                  'Boombayah',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fboombayah.png?alt=media&token=0b168592-d682-4a34-97a1-7dac42040aa9',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Boombayah',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Blackpink',
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
                            builder: (BuildContext context) => const Kpop5()));
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
                            builder: (BuildContext context) => const Kpop2()));
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
BLACKPINK in your area
(Hot) BLACKPINK in your area

Been a bad girl, I know I am
And I'm so hot, I need a fan
I don't want a boy, I need a man

Click-clack, bada bing, bada boom
문을 박차면 모두 날 바라봄
굳이 애써 노력 안 해도
모든 남자들은 코피가 팡팡팡
(팡팡 파라파라 팡팡팡)
지금 날 위한 축배를 짠짠짠
(Hands up) 내 손엔 bottle full o' Henny
니가 말로만 듣던 걔가 나야 Jennie

춤추는 불빛은 날 감싸고 도네
Black to the Pink 어디서든 특별해
(Oh, yes) 쳐다 보든 말든 I wanna dance
Like 따라다라단딴 따라다라단딴 뚜루룹바우

좋아, 이 분위기가 좋아
좋아, 난 지금 니가 좋아
정말 반했어
오늘 밤 너와 춤추고 싶어

붐바야 (ah)
Yah-yah-yah 붐바야
Yah-yah-yah 붐바야 yah-yah-yah-yah
붐붐바 붐붐바 (오빠)

Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (loo-loo-loo-loo)
Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (오빠)
Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (loo-loo-loo-loo)
Yah-yah-yah, yah-yah-yah-yah 붐붐바 붐바야

BLACKPINK in your area

Oh 이제 달려야지, 뭘 어떡해?
난 철없어, 겁없어 man
Middle finger up, F-U pay me
'90s baby, I pump up the jam
달려봐, 달려봐, 오빠야 Lambo
오늘은 너와 나 젊음을 gamble
감히 날 막지마, 혹시나 누가 날 막아도
I'ma go brr, Rambo

니 손이 내 허리를 감싸고 도네
Front to my back 내 몸매는 특별해
(Oh, yes) 니 눈빛은 I know you wanna touch
Like touch, touch, tou-tou-touch 뚜루룹바우

좋아, 이 분위기가 좋아
좋아, 난 지금 니가 좋아
정말 멋있어
오늘 밤 너와 춤추고 싶어

붐바야 (ah)
Yah-yah-yah 붐바야
Yah-yah-yah 붐바야 yah-yah-yah-yah
붐붐바 붐붐바 (오빠)

Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (loo-loo-loo-loo)
Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (오빠)
Yah-yah-yah, yah-yah-yah, yah-yah-yah-yah (loo-loo-loo-loo)
Yah-yah-yah, yah-yah-yah-yah 붐붐바 붐바야

오늘은 맨 정신 따윈 버리고 (loo-loo-loo-loo)
하늘을 넘어서 올라 갈 거야 (loo-loo-loo-loo)
끝을 모르게 빨리 달리고 싶어
Let's go (hoo-ooh)
Let's go (hoo-ooh)

오늘은 맨 정신 따윈 버리고 (loo-loo-loo-loo)
하늘을 넘어서 올라 갈 거야 (loo-loo-loo-loo)
끝을 모르게 빨리 달리고 싶어
Let's go (hoo-ooh)
Let's go (hoo-ooh)
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
