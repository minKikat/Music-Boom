import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop/kpop.dart';
import 'package:music_app_boom/malay/Malay.dart';
import 'package:music_app_boom/mandopop/mandopop1.dart';
import 'package:music_app_boom/mandopop/mandopop2.dart';
import 'package:music_app_boom/mandopop/mandopop3.dart';
import 'package:music_app_boom/mandopop/mandopop4.dart';
import 'package:music_app_boom/mandopop/mandopop5.dart';
import 'package:music_app_boom/home_page.dart';
import 'package:music_app_boom/picture_links.dart';
//import 'package:flutter/widgets.dart';

class Mandopop extends StatelessWidget {
  const Mandopop({super.key});

  final String imageUrl = PictureLinks.gulfOfAlaska;
  final String imageUrl2 = PictureLinks.long;
  final String imageUrl3 = PictureLinks.aFriendLikeYou;
  final String imageUrl4 = PictureLinks.bestFriend;
  final String imageUrl5 = PictureLinks.iAmTooStupid;

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
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Top 5",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Century Gothic",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Past 30 Days",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          centerTitle: true,
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
                          imageUrl,
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
                          imageUrl2,
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
                          imageUrl3,
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
                          imageUrl4,
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
                          imageUrl5,
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
