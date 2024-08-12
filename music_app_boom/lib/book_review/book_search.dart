/*import 'package:flutter/material.dart';
import 'package:music_app_boom/book_review/book_detail_page.dart';
import 'package:music_app_boom/book_review/book_model.dart';
import 'package:music_app_boom/service/book_api_service.dart'; // Ensure this is where you have searchGoogleBooks defined

class BookSearchPage extends StatefulWidget {
  const BookSearchPage({super.key});

  @override
  _BookSearchPageState createState() => _BookSearchPageState();
}

class _BookSearchPageState extends State<BookSearchPage> {
  final _searchController = TextEditingController();
  List<BookModel> _books = [];

  Future<void> _searchBooks() async {
    final term = _searchController.text;
    try {
      final results = await searchGoogleBooks(term: term, limit: 10);
      setState(() {
        _books = results.items.map((item) {
          return BookModel(
            title: item.volumeInfo.title,
            author: item.volumeInfo.authors?.join(', ') ?? 'Unknown Author',
            imgPath: item.volumeInfo.imageLinks?.thumbnail ?? '',
            previewLink: item.volumeInfo.previewLink ?? '',
          );
        }).toList();
      });
    } catch (e) {
      // Handle errors, e.g., show an error message to the user
      print('Error searching books: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Search')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search for books',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchBooks,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                final book = _books[index];
                return ListTile(
                  leading: book.imgPath.isNotEmpty
                      ? Image.network(book.imgPath)
                      : null,
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailsPage(
                          title: book.title,
                          author: book.author,
                          thumbnailUrl: book.imgPath,
                          previewLink: book.previewLink,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
*/