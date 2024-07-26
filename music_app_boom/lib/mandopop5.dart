import 'package:flutter/material.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop1.dart';
import 'package:music_app_boom/mandopop4.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mandopop5 extends StatefulWidget {
  const Mandopop5({super.key});

  @override
  Mandopop5State createState() => Mandopop5State();
}

class Mandopop5State extends State<Mandopop5> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopopSong%2FI%20am%20too%20stupid.mp3?alt=media&token=5c35951e-d815-49c2-91a2-bd7dbd08199b');
  }

  void togglePlayPause() {
    final cubit = context.read<SongPlayerCubit>();
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? cubit.playSong() : cubit.pauseSong();
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
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Mandopop()));
                  },
                ),
                const Text(
                  'I’m too Stupid',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2FI\'m%20too%20stupid.png?alt=media&token=dfd2b725-64b1-49cb-9243-fff67134ed82',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'I’m too Stupid',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Chuina Lisha',
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
                                const Mandopop4()));
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
                                const Mandopop1()));
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
                          '别忘记了还会等你回家的人\n'
                          '她要等不管夜多深\n'
                          '有些事尽量别过分\n'
                          '也能找到一个平衡\n'
                          '仅存的天真留它一个完整\n\n'
                          '不想懂爱怎变成这样的\n'
                          '情愿是要我去为爱负责\n'
                          '就算自己痛了不想你走了\n\n'
                          '是不是我太笨\n'
                          '给不了你最渴望的安稳\n'
                          '才让你忐忑不安跳动着的心\n'
                          '才想去越格\n\n'
                          '是不是我太笨\n'
                          '只要你说的我全都信任\n'
                          '不能去拆穿的又何必追问\n\n'
                          '寂寞的人总是都有它的可恨\n'
                          '所以看开了也算了\n'
                          '怎样才是爱一个人\n'
                          '谁能解开这个疑问\n'
                          '爱没对错的只有值不值得\n\n'
                          '不想懂爱怎变成这样的\n'
                          '情愿是要我去为爱负责\n'
                          '就算自己痛了不想你走了\n\n'
                          '是不是我太笨\n'
                          '给不了你最渴望的安稳\n'
                          '才让你忐忑不安跳动着的心\n'
                          '才想去越格\n\n'
                          '是不是我太笨\n'
                          '只要你说的我全都信任\n'
                          '不能去拆穿的又何必追问\n\n'
                          '是不是我太笨\n'
                          '给不了你最渴望的安稳\n'
                          '才让你忐忑不安跳动着的心\n'
                          '才想去越格\n\n'
                          '是不是我太笨\n'
                          '只要你说的我全都信任\n'
                          '不能去拆穿的又何必追问\n'
                          '谁叫我爱你呢什么都能忍',
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
