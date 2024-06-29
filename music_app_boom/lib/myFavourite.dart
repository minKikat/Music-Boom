// ignore: file_names
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'picture/logo.png',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 50),
            const Text(
              "My Favoutire",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Century Gothic",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(57, 191, 212, 1),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            children: [
              SizedBox(width: 20),
              Icon(Icons.swap_vert, color: Colors.grey),
              SizedBox(height: 30), //?
              Text(
                "Recently added",
                style: TextStyle(
                    fontFamily: "Century Gothic",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(57, 191, 212, 1)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'picture/Gulf of Alaska.png',
                      width: 120,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 25,
                  left: 165,
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
                  left: 165,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'picture/I\'m too stupid.png',
                      width: 120,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 25,
                  left: 165,
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
                  left: 165,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
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
                  left: 165,
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
                  left: 165,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
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
                  left: 165,
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
                  left: 165,
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
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            height: 118,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'picture/long.png',
                      width: 120,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  top: 25,
                  left: 165,
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
                  left: 165,
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
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
