import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
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
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(thumbnailUrl),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8.0),
            Text('Author: $author'),
            const SizedBox(height: 16.0),
            ElevatedButton(
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
              child: const Text('Read Book Online'),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
