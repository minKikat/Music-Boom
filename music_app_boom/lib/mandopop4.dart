import 'package:flutter/material.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop3.dart';
import 'package:music_app_boom/mandopop5.dart';

class Mandopop4 extends StatefulWidget {
  const Mandopop4({super.key});

  @override
  State<Mandopop4> createState() => _MyAppState();
}

class _MyAppState extends State<Mandopop4> {
  double _sliderValue = 0.0;

  bool isPlaying = false;
  bool isFavorite = false;

  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      child: Image.asset(
                        'picture/best friend.png',
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
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Slider(
                          value: _sliderValue,
                          max: 2.43,
                          onChanged: (value) {
                            setState(() {
                              _sliderValue = value;
                            });
                          },
                          activeColor: const Color.fromRGBO(57, 191, 212, 1),
                          inactiveColor: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: -10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: isFavorite
                                ? Colors.red
                                : Color.fromRGBO(57, 191, 212, 1),
                          ),
                          onPressed: toggleFavorite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          '0:00', // Left side text (start time)
                          style: TextStyle(
                              fontFamily: "Century Gothic",
                              color: Colors.white,
                              fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text(
                          '2:43', // Right side text (end time)
                          style: TextStyle(
                              fontFamily: "Century Gothic",
                              color: Colors.white,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                      height:
                          5), // Increased spacing between slider and text block
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
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Mandopop3()));
                        },
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(
                              57, 191, 212, 1), // Blue circle background
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow_outlined,
                            color: Colors.white,
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
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Mandopop5()));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                      height:
                          30), // Increased spacing between icons and text block
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
想当星辰 却像路灯
若爱一个人 切忌爱得太深
酒后传的讯息 你别当真
我总感情用事 忘了不可能

也委屈你 长期容忍
但我们之间 该用什么相称
难道非要我爱其他的人
你才心安理得 卸下了责任

我们不讨论的关系
很接近却不是爱情
拥有无数交集 要丢弃太可惜
我演的恨 真不诚恳
你最清楚 我是怎样的人

没人不羡慕的关系
只是没结局的续集
为什么太熟悉 反而变成距离
触不到的恋人 化身挚友也像搪塞
你明知道我不会等到 却放任我等

你正全心 对待的人
辗转找到我 劝我别再伤神
其实我真不想一一询问
从此默不出声 是我的责任

我们不说破的关系
很微妙却不是爱情
容许这种维系 是我不够争气
一再追问 何其愚笨
我也清楚你是怎样的人

荡气回肠 又能如何
我最不应该 还害你受困
进退不得
我们不讨论的关系
很接近却不是爱情
拥有无数交集 要丢弃太可惜
我演的恨 真不诚恳
你最清楚 我是怎样的人

没人不羡慕的关系
只是没结局的续集
为什么太熟悉 反而变成距离
触不到的恋人 化身挚友也像搪塞
你明知道我不会等到 却放任我等
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
      ),
    );
  }
}
