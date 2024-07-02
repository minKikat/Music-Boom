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
                    'I’m too Stupid',
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
                        'picture/I\'m too stupid.png',
                        width: 380,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'I’m too Stupid',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Chuina Lisha',
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
