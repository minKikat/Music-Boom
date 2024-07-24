import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/kpop3.dart';
import 'package:music_app_boom/kpop5.dart';

class Kpop4 extends StatefulWidget {
  const Kpop4({super.key});

  @override
  State<Kpop4> createState() => _MyAppState();
}

class _MyAppState extends State<Kpop4> {
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
                      child: Image.asset(
                        'picture/smart.png',
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
                                      const Kpop3()));
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
                                      const Kpop5()));
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
      ),
    );
  }
}
