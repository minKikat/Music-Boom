import 'package:flutter/material.dart';

class Mandopop1 extends StatefulWidget {
  const Mandopop1({super.key});

  @override
  State<Mandopop1> createState() => _MyAppState();
}

class _MyAppState extends State<Mandopop1> {
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
                    'Gull of Alaska',
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
                        'picture/Gulf of Alaska.png',
                        width: 380,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Gulf of Alaska',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Firdaus',
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
                            '上天啊\n'
                            '难道你看不出我很爱她\n'
                            '怎么明明相爱的两个人\n'
                            '你要拆散他们啊\n\n'
                            '上天啊\n'
                            '你千万不要偷偷告诉她\n'
                            '在无数夜深人静的夜晚\n'
                            '有个人在想她\n\n'
                            '以后的日子你要好好照顾她\n'
                            '我不在她身旁你不能欺负她\n'
                            '别再让人走进她心里\n'
                            '最后却又离开她\n'
                            '因为我不愿再看她流泪啦\n\n'
                            '上天啊\n'
                            '你是不是在偷偷看笑话\n'
                            '明知我还没能力保护她\n'
                            '让我们相遇啊\n\n'
                            '上天啊\n'
                            '她最近是否不再失眠啦\n'
                            '愿世间温情化作一缕风\n'
                            '代替我拥抱她\n\n'
                            '以后的日子你要好好照顾她\n'
                            '我不在他身旁你不能欺负她\n'
                            '别再让人走进她心里\n'
                            '最后却又离开她\n'
                            '因为我不愿再看她流泪啦\n\n'
                            '希望我的努力能够赶上她\n'
                            '有天我能给她完整的一个家\n'
                            '可若妳安排了别人给她\n'
                            '我会祝福她\n'
                            '上天你别管我先让她幸福吧\n\n'
                            '上天啊\n'
                            '这些晚上我对你说的话\n'
                            '你别不小心漏嘴告诉她\n'
                            '我怕会吵醒她\n\n'
                            '上天啊\n'
                            '你千万不要偷偷告诉她\n'
                            '在无数夜深人静的夜晚\n'
                            '我依旧在想她',
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
