import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop1.dart';
import 'package:music_app_boom/kpop3.dart';

class Kpop2 extends StatefulWidget {
  const Kpop2({super.key});

  @override
  State<Kpop2> createState() => _MyAppState();
}

class _MyAppState extends State<Kpop2> {
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
                          builder: (BuildContext context) => const Kpop()));
                    },
                  ),
                  const Text(
                    'Easy',
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
                        'picture/kpop/easy.png',
                        width: 380,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Easy',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Le  Sserafim',
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
                                      const Kpop1()));
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
                                      const Kpop3()));
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
다친대도, 길을 걸어, kiss me
쉽지 않음 내가 쉽게 easy
Stage 위엔 불이 튀어 내 body
Pull up and I rip it up like ballet
Damn, I really make it look easy
Yuh, know that I make it look easy

Clap your hands, 너도 나와 같다면
Clap your hands now (dream, dream, dream)
의구심 따윈 그냥 치워
그냥 말해, "I'm the real one" (sheesh, sheesh, sheesh)

조명 꺼진 뒤의, 난 wander in the night
Don't know what is right, don't know 'bout my rights
시기심, 의심, 불신, 이젠 friends of me, yeah
세상에게 난 반쪽짜리 seraphim, yeah

Mmm, mmm-mmm, mmm
I've been tryin' so long to show you, show you, show you (oh)
(I'm the one that you need)

다친대도, 길을 걸어, kiss me
쉽지 않음 내가 쉽게 easy
Stage 위엔 불이 튀어 내 body
Pull up and I rip it up like ballet
Damn, I really make it look easy
Yuh, know that I make it look easy

Yuh, know that I make it look easy
수면 위의 백조가 돼, whippin'
때론 풀려 나의 다리, but I keep it
Get set, go, come and see me, I'm the fearless, mmm

나의 발걸음은 매 순간 history, 이건 my way
영웅처럼 걸어, even if I am not flawless
편하게만 왔다고?
날 몰라봤다면, you have to know

Mmm
I've been tryin' so long to show you, show you, show you
(I'm the one that you need)

다친대도, 길을 걸어, kiss me (kiss)
쉽지 않음 내가 쉽게 easy (쉽지 않음 내가 쉽게 easy)
Stage 위엔 불이 튀어 내 body (that's my body, that's my body)
Pull up and I rip it up like ballet (yeah, yeah)
Damn, I really make it look easy (damn, I really make it look easy)
Yuh, know that I make it look easy
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
