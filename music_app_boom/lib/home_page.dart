import 'package:flutter/material.dart';
import 'package:music_app_boom/Malay.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const SizedBox(height: 5),
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
            const Center(
              child: Text(
                "Browse All",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Century Gothic",
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Mandopop(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FMandopop.png?alt=media&token=225ce276-51b9-4f48-bb01-5a9d6eb707aa',
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Kpop(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FK-pop.png?alt=media&token=4bec2569-a553-4319-96aa-124e1ead0b56',
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Malay(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FMalay.png?alt=media&token=8940dfb4-6a21-47bd-8128-451a462473cd',
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyFavourite(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FMyFavourite.png?alt=media&token=218e6764-b69d-4398-91e3-b8d16aab1e51',
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const Mandopop(), // temporary lyrics
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2FLyrics.png?alt=media&token=270a6057-2916-48e5-a770-cabbb167a6c2',
                      width: 160,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
