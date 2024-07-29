import 'package:flutter/material.dart';
import 'package:music_app_boom/kpop.dart';
import 'package:music_app_boom/mandopop.dart';
import 'package:music_app_boom/mandopop1.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/screens/login.dart';
import 'package:music_app_boom/service/auth_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2Flogo.png?alt=media&token=f99d359e-f62e-40ce-8811-2dbf5f09053a',
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
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_outlined, color: Colors.white),
            onPressed: () async {
              AuthService().signOutUser();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const Mandopop1()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FhomeMV.png?alt=media&token=e62a0609-9050-4235-b21b-9a8485b110c4',
                width: 390,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
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
            padding: EdgeInsets.only(
                left: 0.0), // Ensure text is padded from the left
            child: Text(
              "Type of Song",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: "Century Gothic",
                color: Color.fromARGB(255, 255, 254, 254),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Mandopop(),
                    ),
                  );
                },
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FMandopop.png?alt=media&token=225ce276-51b9-4f48-bb01-5a9d6eb707aa'),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Kpop(),
                    ),
                  );
                },
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FK-pop.png?alt=media&token=4bec2569-a553-4319-96aa-124e1ead0b56'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Library",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Century Gothic",
                    color: Color.fromARGB(255, 255, 254, 254),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyFavourite(),
                      ),
                    );
                  },
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FMyFavourite.png?alt=media&token=a7112c8c-acaf-4d3f-af91-f613c7c0ac0e',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}