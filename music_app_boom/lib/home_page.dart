import 'package:flutter/material.dart';
import 'package:music_app_boom/book_review/book_list.dart';
import 'package:music_app_boom/kpop/kpop.dart';
import 'package:music_app_boom/malay/malay.dart';
import 'package:music_app_boom/mandopop/mandopop.dart';
import 'package:music_app_boom/mandopop/mandopop1.dart';
import 'package:music_app_boom/my_favourite.dart';
import 'package:music_app_boom/screens/login.dart';
import 'package:music_app_boom/service/auth_services.dart';
import 'package:music_app_boom/picture_links.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String imageUrl = PictureLinks.logo;
  final String imageUrl2 = PictureLinks.gulfOfAlaska;
  final String imageUrl3 = PictureLinks.mandopop;
  final String imageUrl4 = PictureLinks.kpop;
  final String imageUrl5 = PictureLinks.malay;
  final String imageUrl6 = PictureLinks.myFavourite;
  final String imageUrl7 = PictureLinks.eBook;

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
                imageUrl,
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
                    builder: (BuildContext context) => Mandopop1()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1),
                child: Image.network(
                  imageUrl2,
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
                      imageUrl3,
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
                      imageUrl4,
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
                      imageUrl5,
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
                      imageUrl6,
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
                        builder: (BuildContext context) => const BookListPage(),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrl7,
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
