import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop3.dart';
import 'package:music_app_boom/kpop5.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Kpop4 extends StatefulWidget {
  const Kpop4({super.key});

  @override
  Kpop4State createState() => Kpop4State();
}

class Kpop4State extends State<Kpop4> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/kpopSong%2FSmart.mp3?alt=media&token=2386956e-65c5-45e2-acf0-040c241c89a5');
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
                  'Smart',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fsmart.png?alt=media&token=64fda355-32b8-486e-9a6c-d5d3495e48e0',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Smart',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Le Sserafim',
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
                            builder: (BuildContext context) => const Kpop3()));
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
                            builder: (BuildContext context) => const Kpop5()));
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
I'm a smarter, baby, smarter, smarter, baby, smarter
하날 보면 열까지, 간파해서 돌파하지
Wanna be a winner, wanna be a winner
계획대로 돼가지, 난 나비가 될 애송이

원하는 건 승리란 놈
I call it, "Sugar" (my sugar, sugar)
Plan대로라면 놓칠 리가 없지
내 sugar, sugar (my sugar)

누군 말해, 내가 mean, mean, mean, mean, mean
신경 안 써, 쉿, 쉿, 쉿, 쉿, 쉿
내 패배 위에 필 아름다움 대신
더 강한 이름 "Villain"을 택했지

So 그게 바로 me, me, me, me, me
내겐 보여, see, see, see, see, see
LE SSERAFIM, 날 이끌어 to victory

I'm a smarter, baby, smarter, smarter, baby, smarter
하날 보면 열까지, 간파해서 돌파하지
Wanna be a winner, wanna be a winner
계획대로 돼가지, 난 나비가 될 애송이, I'm a smarter, baby

Work hard in secret, 아귀가 착착 맞게
I planned that, don't be mad
Plan대로라면 난 될 수가 없지
그 loser, loser (that loser)

누군 말해, 내가 mean, mean, mean, mean, mean
신경 안 써, 쉿, 쉿, 쉿, 쉿, 쉿
내 패배 위에 필 아름다움 대신
더 강한 이름 "Villain"을 택했지

So I just wanna be me, me, me, me
내겐 보여, see, see, see, see, see
LE SSERAFIM, 날 이끌어 to victory

I'm a smarter, baby, smarter, smarter, baby, smarter
하날 보면 열까지, 간파해서 돌파하지
Wanna be a winner, wanna be a winner
계획대로 돼가지, 난 나비가 될 애송이, I'm a smarter, baby

내 시계는 tick-tock, 필요했던 shortcut
찾아내고 난 잡았지, huh
누구는 말해, "That's all luck", 난 말해, "No, it's not luck"
내 땀은 not lying, lying

Don't slow down, 이 삶은 superfast
Best scheme, 내 머릿속에
갓생, 난 준비를 끝냈어
Dinner of the winner, that is what I want to get, alright

Smarter, baby, smarter, smarter, baby, smarter
하날 보면 열까지, 간파해서 돌파하지
Wanna be a winner, wanna be a winner
계획대로 돼가지, 난 나비가 될 애송이, I'm smarter, baby
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
