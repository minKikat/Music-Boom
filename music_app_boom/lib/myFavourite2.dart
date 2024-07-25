import 'package:flutter/material.dart';
import 'package:music_app_boom/myFavourite.dart';
import 'package:music_app_boom/myFavourite1.dart';
import 'package:music_app_boom/myFavourite3.dart';

class Myfavourite2 extends StatefulWidget {
  const Myfavourite2({super.key});

  @override
  State<Myfavourite2> createState() => _MyAppState();
}

class _MyAppState extends State<Myfavourite2> {
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
                          builder: (BuildContext context) =>
                              const MyFavourite()));
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
                      child: Image.asset(
                        'picture/I\'m too stupid.png',
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
                                      const Myfavourite1()));
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
                                      const Myfavourite3()));
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
      ),
    );
  }
}
