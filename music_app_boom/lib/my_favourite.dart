import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_app_boom/home_page.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  String getUserId() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw Exception('No user is logged in');
    }
    return user.uid;
  }

  void _removeFromFavorites(String documentId) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(getUserId())
        .collection('favorites')
        .doc(documentId)
        .delete();
  }

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
          title: const Text(
            "My Favourites",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Century Gothic",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
            .collection('users')
            .doc(getUserId())
            .collection('favorites')
            .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final songsList = snapshot.data!.docs;

            return ListView.builder(
              itemCount: songsList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot document = songsList[index];
                //String docID = document.id;

                /*Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;*/

                return GestureDetector(
                  onTap: () {
                    // Navigate to the music player page if needed
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(62, 102, 102, 102),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            document['imageUrl'],
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                document['songName'],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Century Gothic",
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                document['artistName'],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Century Gothic",
                                  color: Color.fromRGBO(138, 154, 157, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline,
                              color: Color.fromRGBO(57, 191, 212, 1), size: 30,),
                          onPressed: () {
                            _removeFromFavorites(
                                document.id); // Pass the document ID
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
