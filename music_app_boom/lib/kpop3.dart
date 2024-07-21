import 'package:flutter/material.dart';

class Kpop3 extends StatefulWidget {
  const Kpop3({super.key});

  @override
  State<Kpop3> createState() => _MyAppState();
}

class _MyAppState extends State<Kpop3> {
  double _sliderValue = 0.0;

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
                      child: Image.asset(
                        'picture/bubble gum.png',
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
                      const Positioned(
                        top: 0,
                        right: 10,
                        child: Icon(
                          Icons.favorite_border,
                          color: Color.fromRGBO(57, 191, 212, 1),
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
                        icon: const Icon(Icons.skip_previous, color: Colors.white),
                        onPressed: () {},
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(
                              57, 191, 212, 1), // Blue circle background
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.play_arrow_outlined,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_next, color: Colors.white),
                        onPressed: () {},
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
      ),
    );
  }
}
