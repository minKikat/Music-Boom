import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black12, //set background
      body: Center(
        child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/logo.png?alt=media&token=70010884-e651-4380-8f59-7dabd98c8212',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      )
      );
  }
}