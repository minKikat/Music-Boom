import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop1.dart';
import 'package:music_app_boom/kpop2.dart';
import 'package:music_app_boom/kpop3.dart';
import 'package:music_app_boom/kpop4.dart';
import 'package:music_app_boom/kpop5.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/home_page.dart';
//import 'package:flutter/widgets.dart';

class Kpop extends StatelessWidget {
  const Kpop({super.key});

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 5), // Space above texts

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Text(
                      "Mandopop",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Century Gothic",
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => const Mandopop()));
                    },
                  ),
                  const SizedBox(width: 80),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Text(
                        "K-pop",
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => const Kpop1()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fboombayah.png?alt=media&token=0b168592-d682-4a34-97a1-7dac42040aa9',
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
                          "#1",
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
                          "Boombayah",
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
                          "Blackpink",
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
                      builder: (BuildContext context) => const Kpop2()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Feasy.png?alt=media&token=bfcf24c3-8139-4a23-8184-d20c4d28bad8',
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
                          "#2",
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
                          "Easy",
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
                          "Le Sserafim",
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
                      builder: (BuildContext context) => const Kpop3()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fbubble%20gum.png?alt=media&token=3b614659-762d-46c7-8865-71ca7a3cbe35',
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
                          "#3",
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
                          "Bubble Gum",
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
                          "NewJeans",
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
                      builder: (BuildContext context) => const Kpop4()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fsmart.png?alt=media&token=64fda355-32b8-486e-9a6c-d5d3495e48e0',
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
                          "#4",
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
                          "Smart",
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
                          "Le Sserafim",
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
                      builder: (BuildContext context) => const Kpop5()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/Kpop%2Fmagnetic.png?alt=media&token=2e587065-0e54-4641-8a55-11a3c4214cc7',
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
                          "#5",
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
                          "Magnetic",
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
                          "ILLIT",
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
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
