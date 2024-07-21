import 'package:flutter/material.dart';

class Kpop5 extends StatefulWidget {
  const Kpop5({super.key});

  @override
  State<Kpop5> createState() => _MyAppState();
}

class _MyAppState extends State<Kpop5> {
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
                    'Magnetic',
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
                        'picture/magnetic.png',
                        width: 380,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Magnetic',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'ILLIT',
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
                            'Baby, I\'m just trying to play it cool\n'
                            'But I just can\'t hide that I want you\n\n'
                            'Wait a minute, 이게 뭐지? (뭐지?)\n'
                            '내 심장이 lub-dub, 자꾸만 뛰어 (뛰어)\n'
                            '저 멀리서도, oh, (oh) my (my) gosh (gosh)\n'
                            '끌어당겨, you\'re my crush, 초능력처럼\n\n'
                            '거대한 자석이 된 것만 같아 my heart\n'
                            '네 모든 게 내 맘에 달라붙어버려, boy\n'
                            'We\'re magnetized, 인정할게\n'
                            'This time, I want\n\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                            'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                            'Dash-da-da, dash-da-da, dash-da, like it\'s magnetic\n'
                            'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                            'Dash-da-da, dash-da-da, baby, don\'t say no\n\n'
                            '정반대 같아 our type, 넌 J, 난 완전 P\n'
                            'S와 N 극이지만, 그래서 끌리지\n'
                            '내가 만들래 green light, 여잔 배짱이지\n'
                            'So let\'s go, let\'s go, let\'s go, let\'s go\n\n'
                            '숨기고 싶지 않아 자석 같은 my heart\n'
                            '내 맘의 끌림대로 너를 향해 갈게, boy\n'
                            'We\'re magnetized, 인정할게\n'
                            'This time, I want\n\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                            'No push and pull, 전속력으로 너에게 갈게 (in a rush, in a rush)\n'
                            'Our chemistry, 난 과몰입해 지금 순간에 (baby, you\'re my crush, you\'re my crush)\n'
                            'No push and pull, 네게 집중 후회는 안 할래 (gonna dash, gonna dash)\n'
                            'Never holding back, 직진해, yeah (직진해, yeah), this time, I want\n\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n'
                            'You, you, you, you, like it\'s magnetic\n'
                            'You, you, you, you, you, you, you, you, super 이끌림\n\n'
                            'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                            'Dash-da-da, dash-da-da, dash-da, like it\'s magnetic\n'
                            'Bae, bae, bae, bae, bae, bae, bae, bae, bae\n'
                            'Dash-da-da, dash-da-da, baby, don\'t say no',
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
