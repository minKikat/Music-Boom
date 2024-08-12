import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop/kpop.dart';
import 'package:music_app_boom/malay/malay1.dart';
import 'package:music_app_boom/malay/malay2.dart';
import 'package:music_app_boom/malay/malay3.dart';
import 'package:music_app_boom/malay/malay4.dart';
import 'package:music_app_boom/malay/malay5.dart';
import 'package:music_app_boom/mandopop/mandopop.dart';
import 'package:music_app_boom/home_page.dart';
//import 'package:flutter/widgets.dart';

class Malay extends StatelessWidget {
  const Malay({super.key});

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
                  const SizedBox(width: 40),
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
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Text(
                        "Malay",
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
                      builder: (BuildContext context) => Malay1()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/malay%2FAlibaba.jpeg?alt=media&token=846df024-de8c-4209-88f6-bfbce7a6cc8c',
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
                          "Alibaba",
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
                          "Playaz",
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
                      builder: (BuildContext context) => Malay2()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/malay%2FGemilang.jpg?alt=media&token=86248563-65ec-4b4f-b459-a794cf79c094',
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
                          "Gemilang",
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
                          "Ella",
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
                      builder: (BuildContext context) => Malay3()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/malay%2FGurindam%20Jiwa.jpg?alt=media&token=990d850b-697c-4550-b9a6-d5d7f047d343',
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
                          "Gurindam Jiwa",
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
                          "Dayang Nurfaizah, Hael Husaini",
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
                      builder: (BuildContext context) => Malay4()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/malay%2FIsabella%2098.jpeg?alt=media&token=bf1bee7c-ea58-40bd-9334-618b35a02c01',
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
                          "Isabella 98",
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
                          "Jamal Abdillah",
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
                      builder: (BuildContext context) => Malay5()));
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
                            'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/malay%2FMusafir%20Rindu.jpg?alt=media&token=824f2eb6-588d-43bd-969e-aabe3f7911eb',
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
                          "Musafir Rindu",
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
                          "Ramli Sarip",
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
