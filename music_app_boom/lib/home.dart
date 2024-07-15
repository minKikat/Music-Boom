import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black12, //set background
      body: Center(
        child: Image.asset(
          'photo/logo.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      )
      );
  }
}