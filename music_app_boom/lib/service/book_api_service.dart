import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:music_app_boom/book_review/book_model.dart';

class BookService {
  final String _apiKey = 'AIzaSyDbXpr5Xb243IFVXbp-vzMq8Ia7vzlWeRw';
  final String _baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<List<BookModel>> searchBooks(String query) async {
    try {
      final encodedQuery = Uri.encodeComponent(query);
      final response =
          await http.get(Uri.parse('$_baseUrl?q=$encodedQuery&key=$_apiKey'));

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['items'] != null) {
          final items = jsonResponse['items'] as List<dynamic>;
          return items.map((item) => BookModel.fromJson(item)).toList();
        } else {
          print('No items found in response');
          return [];
        }
      } else {
        print('Failed to load books. Status code: ${response.statusCode}');
        throw Exception('Failed to load books');
      }
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}