import 'package:flutter/material.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop1.dart';
import 'package:music_app_boom/mandopop3.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app_boom/song/bloc/song_player_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mandopop2 extends StatefulWidget {
  const Mandopop2({super.key});

  @override
  Mandopop2State createState() => Mandopop2State();
}

class Mandopop2State extends State<Mandopop2> {
  bool isPlaying = false;
  late AudioPlayer audioPlayer;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    context.read<SongPlayerCubit>().loadSong(
        'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopopSong%2FLong.mp3?alt=media&token=8b582971-e885-44ca-b94e-33c54f72cb16');
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
                            builder: (BuildContext context) =>
                                const Mandopop()));
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
                  'Long',
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
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Flong.png?alt=media&token=c44f57a2-e927-468c-96ed-604b6d8f771c',
                      width: 380,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Long',
                  style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Zhang Bi Chen',
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
                                const Mandopop1()));
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
                                const Mandopop3()));
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
                          '深海中 那点光 昏暗的诱惑\n'
                          '她以为 抓得住 名为爱的泡沫\n'
                          '人心 扑朔 晦涩 幽蓝如墨\n'
                          '怎么 猜透 看透 故事的结果\n\n'
                          '为何绚烂 叫人扑空\n'
                          '为何爱我者予我牢笼\n'
                          '为何等待 都徒劳无功\n'
                          '为何囚人者也像困兽（为什么）\n'
                          '越珍贵 越浪费\n'
                          '致命的伤 诞生于亲密\n'
                          '越追问 越无解\n'
                          '哪有答案 不过是咒语\n'
                          '都在笼中\n\n'
                          '出口就 在身后 只需要回头\n'
                          '为什么 人们却 亲手上一把锁\n'
                          '不甘 不得 不休 囚人自囚\n'
                          '为爱 为爱 为爱 都只是为我\n\n'
                          '为何绚烂 叫人扑空\n'
                          '为何爱我者予我牢笼\n'
                          '为何等待 都徒劳无功\n'
                          '为何囚人者也像困兽（为什么）\n'
                          '越珍贵 越浪费\n'
                          '致命的伤 诞生于亲密\n'
                          '越追问 越无解\n'
                          '答案写在笼中 只为困住你\n\n'
                          '为何拥抱 那么疼痛\n'
                          '为何爱我者把我葬送\n'
                          '为何港湾 会变作迷宫\n'
                          '为何镜中人失去面孔（为什么）\n'
                          '越珍贵 越浪费\n'
                          '致命的伤 诞生于亲密\n'
                          '越追问 越无解\n'
                          '哪有答案 不过是咒语\n'
                          '爱不爱我\n'
                          '谁邀你\n'
                          '入笼',
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
