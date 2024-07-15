import 'package:flutter/material.dart';
import 'package:music_app_boom/songlibraby.dart';

class SongLibrary extends StatelessWidget {
  const SongLibrary({Set? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // background
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Row(
          children: [
            const SizedBox(width: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'photo/logo.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 95),
            const Text(
              "HOME",
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Century Gothic",
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(57, 191, 212, 1),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: Image.asset(
              'photo/gulf of alaska.jpg',
              width: 390,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Center(child: Text(
            "Firdhaus - Gulf of Alaska",
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Century Gothic",
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 254, 254),
            ),
          ),
          ),
          const SizedBox(height: 20),
           const Padding(
            padding: EdgeInsets.only(left: 0.0), // Ensure text is padded from the left
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Type of Song",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Century Gothic",
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
              ),
            ],  
          ), 
              
           ),
           
          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 180,
              height: 100,
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
                        'picture/long.png',
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

            const SizedBox(width: 10),

            const SizedBox(height: 12),
            Container(
              width: 180,
              height: 100,
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
                        'picture/a friend like you.png',
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
          ],
          ),
        
          
        ],
      ),
    );
  }
}
