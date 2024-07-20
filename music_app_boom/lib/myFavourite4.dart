import 'package:flutter/material.dart';

class myFavourite5 extends StatefulWidget {
  const myFavourite5({super.key});

  @override
  State<myFavourite5> createState() => _MyAppState();
}

class _MyAppState extends State<myFavourite5> {
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
                      child: Image.asset(
                        'picture/boombayah.png',
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
                  SizedBox(height: 5),
                  Text(
                    'Blackpink',
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
                          color: Colors.red,
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
      ),
    );
  }
}
