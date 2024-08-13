/*import 'dart:convert';
import 'package:http/http.dart' as http;

class GoogleBooksService {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<List<dynamic>> fetchBookInfo(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl?q=$query'));

    if (response.statusCode == 200) {
      // Decode the JSON response
      final data = json.decode(response.body);
      // Return the list of items
      return data['items'] as List<dynamic>;
    } else {
      // Throw an exception if the response status is not 200
      throw Exception('Failed to load book info');
    }
  }
}*/

/*import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:music_app_boom/book_review/search_books_result.dart'; // Import your SearchBooksResult model


// Replace `Globals.booksAPIKey` with your actual API key or ensure that `Globals` is defined
Future<SearchBooksResult> searchGoogleBooks({
  required String term,
  required int limit,
}) async {
  const baseUrl = 'https://www.googleapis.com/books/v1/volumes';
  final endpoint =
      '$baseUrl?q=$term&maxResults=$limit&key=AIzaSyDRvkPm7ZWTXh5mCB1WxKBLqyvOfY84H0Y';

  try {
    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      final results = json.decode(response.body);
      if (results['error'] != null) {
        throw Exception(results['error']['message']);
      }
      return SearchBooksResult.fromJson(results);
    } else {
      throw Exception('Failed to load books');
    }
  } catch (e) {
    rethrow;
  }
}*/

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
















/*
{
  "kind": "books#volumes",
  "totalItems": 1753,
  "items": [
    {
      "kind": "books#volume",
      "id": "mFT_CgAAQBAJ",
      "etag": "sFOL94v+e3Y",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/mFT_CgAAQBAJ",
      "volumeInfo": {
        "title": "Search Terms: Alpha",
        "authors": [
          "Travis Hill"
        ],
        "publisher": "Travis Hill",
        "description": "College sophomore Tyler Gallagher loves computers, video games, and Thanksgiving Break. He's timed the arrival of his computer components with the holiday vacation from school to blast aliens and enemy soldiers alike on his brand new, high-end gaming computer. When the parts arrive, it soon becomes apparent that they aren't what he ordered from TechTerritory. Thinking he's the butt of a practical joke, Tyler plays along, and builds the computer with the obviously fake components. His annoyance turns to shock when the computer powers on. His shock turns to a mix of disbelief and wonder when he learns the strange \"quantum\" computer can pull web pages from the near future. Disbelief and wonder soon become fear and uncertainty when he discovers the future might not be so bright. \"Search Terms: Alpha\" is the first half of a new time travel thriller. 52,000 word novel Adult themes / language / mild sexual content",
        "readingModes": {
          "text": true,
          "image": true
        },
        "pageCount": 218,
        "printType": "BOOK",
        "categories": [
          "Fiction"
        ],
        "maturityRating": "MATURE",
        "allowAnonLogging": false,
        "contentVersion": "1.3.3.0.preview.3",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/content?id=mFT_CgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail": "http://books.google.com/books/content?id=mFT_CgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "en",
        "previewLink": "http://books.google.com.my/books?id=mFT_CgAAQBAJ&pg=PT19&dq=search+terms&hl=&cd=1&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=mFT_CgAAQBAJ&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=mFT_CgAAQBAJ"
      },
      "saleInfo": {
        "country": "MY",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {
          "amount": 4.98,
          "currencyCode": "MYR"
        },
        "retailPrice": {
          "amount": 4.98,
          "currencyCode": "MYR"
        },
        "buyLink": "https://play.google.com/store/books/details?id=mFT_CgAAQBAJ&rdid=book-mFT_CgAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {
              "amountInMicros": 4980000,
              "currencyCode": "MYR"
            },
            "retailPrice": {
              "amountInMicros": 4980000,
              "currencyCode": "MYR"
            }
          }
        ]
      },
      "accessInfo": {
        "country": "MY",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": true
        },
        "pdf": {
          "isAvailable": true
        },
        "webReaderLink": "http://play.google.com/books/reader?id=mFT_CgAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet": "... <b>words</b> that were liberally sprinkled throughout the movie. My father had warned me when I was eight that if I ever ... <b>searching</b> through the two components&#39; manuals, I found out why there was no cable. Apparently, the peripherals of&nbsp;..."
      }
    },
    ],
    }*/