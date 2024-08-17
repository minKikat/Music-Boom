import 'package:flutter/material.dart';
import 'package:music_app_boom/home_page.dart';
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
        backgroundColor: Colors.black,
        title: const Text(
          'Book List',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Set the title color
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white, // Set the back arrow color
          ),
          onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()));
            },
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Color.fromRGBO(57, 191, 212, 1)),
              decoration: InputDecoration(
                hintText: 'Search for books',
                hintStyle:
                    const TextStyle(color: Color.fromRGBO(57, 191, 212, 1)),
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
      body: Container(
        color: Colors.black, // Background color for the list
        child: _books.isEmpty
            ? const Center(
                child: Text(
                  'No books found',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : ListView.builder(
                itemCount: _books.length,
                itemBuilder: (context, index) {
                  final book = _books[index];
                  return ListTile(
                    leading: book.imgPath.isNotEmpty
                        ? Image.network(book.imgPath)
                        : null,
                    title: Text(
                      book.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      book.author,
                      style: const TextStyle(color: Colors.white),
                    ),
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
    );
  }
}
