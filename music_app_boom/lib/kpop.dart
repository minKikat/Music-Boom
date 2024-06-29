import 'package:flutter/material.dart';
import 'package:music_app_boom/mandopop.dart';
//import 'package:flutter/widgets.dart';

class Kpop extends StatelessWidget {
  const Kpop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
              Container(
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
                        child: Image.asset(
                          'picture/boombayah.png',
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
              const SizedBox(height: 12),

              Container(
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
                        child: Image.asset(
                          'picture/easy.png',
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

              const SizedBox(height: 12),
              Container(
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
                        child: Image.asset(
                          'picture/bubble gum.png',
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
              const SizedBox(height: 12),
              Container(
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
                        child: Image.asset(
                          'picture/smart.png',
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
              const SizedBox(height: 12),
              Container(
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
                        child: Image.asset(
                          'picture/magnetic.png',
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
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
