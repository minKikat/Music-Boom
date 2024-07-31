import 'package:flutter/material.dart';
import 'package:music_app_boom/Malay.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/mandopop1.dart';
import 'package:music_app_boom/mandopop2.dart';
import 'package:music_app_boom/mandopop3.dart';
import 'package:music_app_boom/mandopop4.dart';
import 'package:music_app_boom/mandopop5.dart';
import 'package:music_app_boom/home_page.dart';
//import 'package:flutter/widgets.dart';

class Mandopop extends StatelessWidget {
  const Mandopop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
          ),
          title: const Center(
            child: Column(
              children: [
                Text(
                  "Top 5",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Century Gothic",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Past 30 Days",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5), // Space above the texts

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text(
                      "Mandopop",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Century Gothic",
                        color: Color.fromRGBO(57, 191, 212, 1),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 2,
                        color: const Color.fromRGBO(57, 191, 212, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 40), // Space between 'a' and 'b'

                GestureDetector(
                  child: const Text(
                    "K-pop",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Century Gothic",
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const Kpop()));
                  },
                ),
                const SizedBox(width: 40), // Space between text options

                GestureDetector(
                  child: const Text(
                    "Malay",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Century Gothic",
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const Malay())); // Assuming you have a Malay page
                  },
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mandopop1()));
              },
              child: Container(
                width: 350,
                height: 118,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(62, 102, 102, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2FGulf%20of%20Alaska.png?alt=media&token=a5960dad-544a-4e0f-aaf5-c00289496f84',
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 15,
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 185,
                      child: Text(
                        "Gulf of Alaska",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 185,
                      child: Text(
                        "Firdhaus",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Color.fromRGBO(138, 154, 157, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mandopop2()));
              },
              child: Container(
                width: 350,
                height: 118,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(62, 102, 102, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Flong.png?alt=media&token=c44f57a2-e927-468c-96ed-604b6d8f771c',
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 15,
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 185,
                      child: Text(
                        "Long",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 185,
                      child: Text(
                        "Zhang Bi Chen",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Color.fromRGBO(138, 154, 157, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mandopop3()));
              },
              child: Container(
                width: 350,
                height: 118,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(62, 102, 102, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Fa%20friend%20like%20you.png?alt=media&token=9ecebf3a-6718-4489-a9e4-4a610b9bc33f',
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 15,
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 185,
                      child: Text(
                        "A Friend Like You",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 185,
                      child: Text(
                        "Lu Hu",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Color.fromRGBO(138, 154, 157, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mandopop4()));
              },
              child: Container(
                width: 350,
                height: 118,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(62, 102, 102, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2Fbest%20friend.png?alt=media&token=1bd82dd2-6854-4c84-97f5-b4b2e094c836',
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 15,
                      child: Text(
                        "4",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 185,
                      child: Text(
                        "Best Friend",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 185,
                      child: Text(
                        "Eric Chou",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Color.fromRGBO(138, 154, 157, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Mandopop5()));
              },
              child: Container(
                width: 350,
                height: 118,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(62, 102, 102, 102),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/mandopop%2FI\'m%20too%20stupid.png?alt=media&token=dfd2b725-64b1-49cb-9243-fff67134ed82',
                          width: 120,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 15,
                      child: Text(
                        "5",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 185,
                      child: Text(
                        "I'm too Stupid",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      left: 185,
                      child: Text(
                        "Chuina Lisha",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Century Gothic",
                            color: Color.fromRGBO(138, 154, 157, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
