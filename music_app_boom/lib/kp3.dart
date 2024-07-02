import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  Text(
                    'Bubble Gum',
                    style: TextStyle(
                      fontFamily: "Century Gothic",
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 191, 212, 1),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                  Text(
                    'Bubble Gum',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'NewJeans',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  SizedBox(height: 20),
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
                          activeColor: Color.fromRGBO(57, 191, 212, 1),
                          inactiveColor: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 10,
                        child: Icon(
                          Icons.favorite_border,
                          color: Color.fromRGBO(57, 191, 212, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          '0:00', // Left side text (start time)
                          style: TextStyle(
                              fontFamily: "Century Gothic",
                              color: Colors.white,
                              fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
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
                  SizedBox(
                      height:
                          5), // Increased spacing between slider and text block
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.skip_previous, color: Colors.white),
                        onPressed: () {},
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(
                              57, 191, 212, 1), // Blue circle background
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.play_arrow_outlined,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_next, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          30), // Increased spacing between icons and text block
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      color: Color.fromRGBO(57, 191, 212, 1),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
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
