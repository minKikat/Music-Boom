import 'package:flutter/material.dart';

class BookContentPage extends StatelessWidget {
  final String title;
  final String content; // Book content as text

  const BookContentPage({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(content), // Display book content
        ),
      ),
    );
  }
}
