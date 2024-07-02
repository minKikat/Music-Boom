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
                    'A Friend Like You',
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
                        'picture/a friend like you.png',
                        width: 380,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A Friend Like You',
                    style: TextStyle(
                        fontFamily: "Century Gothic",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Lu Hu',
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
开始斗嘴是我 作对是我
最不爽你就是我
没想到我们会成为好朋友
现在爱你是我 挺你是我
就算肉麻也是我
多幸运有像你这样的朋友

时光偷走遇见转角送来错过
四季飞快像坐过山车
那些沙雕的 深刻的
专属我们的
如果这辈子做朋友你都不嫌多
下辈子够不够
我还想要像你这样的朋友

相信只有我才能懂你的黑色幽默
我喜欢周杰伦你却说歌王是陶喆
意见不合 互不干涉
千千万万个孤立无援时刻
还是你罩我

隔壁爱你的圆脸女孩我偷偷爱着
听说你爱的漂亮姐姐疯狂迷恋我
你不必懂 恋爱功课
就算全世界不要你的时候
身后还有我

开始斗嘴是我 作对是我
最不爽你就是我
没想到我们会成为好朋友
现在爱你是我 挺你是我
就算肉麻也是我
多幸运有像你这样的朋友

时光偷走遇见转角送来错过
四季飞快像坐过山车
那些沙雕的 深刻的
专属我们的
如果这辈子做朋友你都不嫌多
下辈子够不够
我还想要像你这样的朋友

开始斗嘴是我 作对是我
最不爽你就是我
没想到我们会成为好朋友
现在爱你是我 挺你是我
就算肉麻也是我
多幸运有像你这样的朋友

时光偷走遇见转角送来错过
四季飞快像坐过山车
那些沙雕的 深刻的
专属我们的
如果这辈子做朋友你都不嫌多
下辈子够不够
我还想要像你这样的朋友
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
