import 'package:flutter/material.dart';
import 'package:music_app_boom/service/book_api_service.dart';
import 'package:music_app_boom/book_review/book_model.dart';
import 'package:music_app_boom/book_review/book_detail_page.dart';
class BookListPage extends StatefulWidget {
  const BookListPage({super.key});

  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  final BookService _bookService = BookService();
  List<BookModel> _books = [];
  final TextEditingController _searchController = TextEditingController();

  Future<void> _searchBooks() async {
    if (_searchController.text.isEmpty) {
      return;
    }

    try {
      final books = await _bookService.searchBooks(_searchController.text);
      setState(() {
        _books = books;
      });
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to fetch books. Error: $e'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for books',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchBooks,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _books.length,
        itemBuilder: (context, index) {
          final book = _books[index];
          return ListTile(
            leading:
                book.imgPath.isNotEmpty ? Image.network(book.imgPath) : null,
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
    );
  }
}