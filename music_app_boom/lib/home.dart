import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, //set background
      body: Center(
        child: Image.network(
          'https://firebasestorage.googleapis.com/v0/b/music-app-boom.appspot.com/o/homePage%2Flogo.png?alt=media&token=c2a660d6-39cd-4c55-adf0-fa76a2c4da84',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
