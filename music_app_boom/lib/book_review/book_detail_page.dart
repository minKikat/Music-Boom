import 'package:flutter/material.dart';
import 'package:music_app_boom/book_review/web_view_page.dart';

class BookDetailsPage extends StatelessWidget {
  final String title;
  final String author;
  final String thumbnailUrl;
  final String previewLink;

  const BookDetailsPage({
    super.key,
    required this.title,
    required this.author,
    required this.thumbnailUrl,
    required this.previewLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white, // Color of the back arrow
          onPressed: () =>
              Navigator.of(context).pop(), // Go back to the previous screen
        ),
        title: Text(
          title,
          style: const TextStyle(color: Color.fromRGBO(57, 191, 212, 1)),
        ),
      ),
      body: Container(
        color: Colors.black, // Black background for the entire page
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                thumbnailUrl,
                width: 200.0, // Adjust the size as needed
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color.fromRGBO(57, 191, 212, 1), // Title color
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            Text(
              'Author: $author',
              style: const TextStyle(
                color: Colors.white, // Author text color
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 8.0), // Increase padding
                  backgroundColor: const Color.fromRGBO(
                      57, 191, 212, 1), // Button background color
                  minimumSize: const Size(200, 10), // Set minimum size
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewPage(
                        initialUrl:
                            previewLink, // Pass the preview link to WebViewPage
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Read Book Online',
                  style: TextStyle(
                    color: Colors.white, // Button text color
                    fontSize: 18.0, // Increase font size
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}