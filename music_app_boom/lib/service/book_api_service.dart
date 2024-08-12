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
    }




    {
      "kind": "books#volume",
      "id": "p7mHEAAAQBAJ",
      "etag": "NtYAAmdp6b8",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/p7mHEAAAQBAJ",
      "volumeInfo": {
        "title": "The Joy of Search",
        "subtitle": "A Google Insider's Guide to Going Beyond the Basics",
        "authors": [
          "Daniel M. Russell"
        ],
        "publisher": "MIT Press",
        "publishedDate": "2023-06-06",
        "description": "How to be a great online searcher, demonstrated with step-by-step searches for answers to a series of intriguing questions (for example, “Is that plant poisonous?”). We all know how to look up something online by typing words into a search engine. We do this so often that we have made the most famous search engine a verb: we Google it—“Japan population” or “Nobel Peace Prize” or “poison ivy” or whatever we want to know. But knowing how to Google something doesn't make us search experts; there's much more we can do to access the massive collective knowledge available online. In The Joy of Search, Daniel Russell shows us how to be great online researchers. We don't have to be computer geeks or a scholar searching out obscure facts; we just need to know some basic methods. Russell demonstrates these methods with step-by-step searches for answers to a series of intriguing questions—from “what is the wrong side of a towel?” to “what is the most likely way you will die?” Along the way, readers will discover essential tools for effective online searches—and learn some fascinating facts and interesting stories. Russell explains how to frame search queries so they will yield information and describes the best ways to use such resources as Google Earth, Google Scholar, Wikipedia, and Wikimedia. He shows when to put search terms in double quotes, how to use the operator (*), why metadata is important, and how to triangulate information from multiple sources. By the end of this engaging journey of discovering, readers will have the definitive answer to why the best online searches involve more than typing a few words into Google.",
        "industryIdentifiers": [
          {
            "type": "ISBN_13",
            "identifier": "9780262546072"
          },
          {
            "type": "ISBN_10",
            "identifier": "0262546078"
          }
        ],
        "readingModes": {
          "text": false,
          "image": true
        },
        "pageCount": 337,
        "printType": "BOOK",
        "categories": [
          "Computers"
        ],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "1.1.1.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/content?id=p7mHEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail": "http://books.google.com/books/content?id=p7mHEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "en",
        "previewLink": "http://books.google.com.my/books?id=p7mHEAAAQBAJ&printsec=frontcover&dq=search+terms&hl=&cd=2&source=gbs_api",
        "infoLink": "http://books.google.com.my/books?id=p7mHEAAAQBAJ&dq=search+terms&hl=&source=gbs_api",
        "canonicalVolumeLink": "https://books.google.com/books/about/The_Joy_of_Search.html?hl=&id=p7mHEAAAQBAJ"
      },
      "saleInfo": {
        "country": "MY",
        "saleability": "NOT_FOR_SALE",
        "isEbook": false
      },
      "accessInfo": {
        "country": "MY",
        "viewability": "PARTIAL",
        "embeddable": true,
        "publicDomain": false,
        "textToSpeechPermission": "ALLOWED",
        "epub": {
          "isAvailable": false
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink": "http://books.google.com.my/books/download/The_Joy_of_Search-sample-pdf.acsm?id=p7mHEAAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink": "http://play.google.com/books/reader?id=p7mHEAAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet": "But knowing how to Google something doesn&#39;t make us search experts; there&#39;s much more we can do to access the massive collective knowledge available online. In The Joy of Search, Daniel Russell shows us how to be great online researchers."
      }
    },
    {
      "kind": "books#volume",
      "id": "LD9tCQAAQBAJ",
      "etag": "xPuy+B5fKd4",
      "selfLink": "https://www.googleapis.com/books/v1/volumes/LD9tCQAAQBAJ",
      "volumeInfo": {
        "title": "Advances in Information Retrieval",
        "subtitle": "24th BCS-IRSG European Colloquium on IR Research Glasgow, UK, March 25-27, 2002 Proceedings",
        "authors": [
          "Fabio Crestani",
          "Mark Girolami",
          "C.J.van Rijsbergen"
        ],
        "publisher": "Springer",
        "publishedDate": "2003-07-31",
        "description": "The annual colloquium on information retrieval research provides an opportunity for both new and established researchers to present papers describing work in progress or ?nal results. This colloquium was established by the BCS IRSG(B- tish Computer Society Information Retrieval Specialist Group), and named the Annual Colloquium on Information Retrieval Research. Recently, the location of the colloquium has alternated between the United Kingdom and continental Europe. To re?ect the growing European orientation of the event, the colloquium was renamed “European Annual Colloquium on Information Retrieval Research” from 2001. Since the inception of the colloquium in 1979 the event has been hosted in the city of Glasgow on four separate occasions. However, this was the ?rst time that the organization of the colloquium had been jointly undertaken by three separate computer and information science departments; an indication of the collaborative nature and diversity of IR research within the universities of the West of Scotland. The organizers of ECIR 2002 saw a sharp increase in the number of go- quality submissions in answer to the call for papers over previous years and as such 52 submitted papers were each allocated 3 members of the program committee for double blind review of the manuscripts. A total of 23 papers were eventually selected for oral presentation at the colloquium in Glasgow which gave an acceptance rate of less than 45% and ensured a very high standard of the papers presented.",
        "industryIdentifiers": [
          {
            "type": "ISBN_13",
            "identifier": "9783540458869"
          },
          {
            "type": "ISBN_10",
            "identifier": "3540458867"
          }
        ],
        "readingModes": {
          "text": false,
          "image": true
        },
        "pageCount": 376,
        "printType": "BOOK",
        "categories": [
          "Computers"
        ],
        "maturityRating": "NOT_MATURE",
        "allowAnonLogging": false,
        "contentVersion": "0.1.1.0.preview.1",
        "panelizationSummary": {
          "containsEpubBubbles": false,
          "containsImageBubbles": false
        },
        "imageLinks": {
          "smallThumbnail": "http://books.google.com/books/content?id=LD9tCQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
          "thumbnail": "http://books.google.com/books/content?id=LD9tCQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
        },
        "language": "en",
        "previewLink": "http://books.google.com.my/books?id=LD9tCQAAQBAJ&pg=PA112&dq=search+terms&hl=&cd=3&source=gbs_api",
        "infoLink": "https://play.google.com/store/books/details?id=LD9tCQAAQBAJ&source=gbs_api",
        "canonicalVolumeLink": "https://play.google.com/store/books/details?id=LD9tCQAAQBAJ"
      },
      "saleInfo": {
        "country": "MY",
        "saleability": "FOR_SALE",
        "isEbook": true,
        "listPrice": {
          "amount": 273.94,
          "currencyCode": "MYR"
        },
        "retailPrice": {
          "amount": 191.76,
          "currencyCode": "MYR"
        },
        "buyLink": "https://play.google.com/store/books/details?id=LD9tCQAAQBAJ&rdid=book-LD9tCQAAQBAJ&rdot=1&source=gbs_api",
        "offers": [
          {
            "finskyOfferType": 1,
            "listPrice": {
              "amountInMicros": 273940000,
              "currencyCode": "MYR"
            },
            "retailPrice": {
              "amountInMicros": 191760000,
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
          "isAvailable": false
        },
        "pdf": {
          "isAvailable": true,
          "acsTokenLink": "http://books.google.com.my/books/download/Advances_in_Information_Retrieval-sample-pdf.acsm?id=LD9tCQAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
        },
        "webReaderLink": "http://play.google.com/books/reader?id=LD9tCQAAQBAJ&hl=&source=gbs_api",
        "accessViewStatus": "SAMPLE",
        "quoteSharingAllowed": false
      },
      "searchInfo": {
        "textSnippet": "... terms in AQE. Term extraction based on a proportionally high quantity of non-relevant documents generates inappropriate <b>search terms</b> impairing search effectiveness [28]. Blind AQE especially is more sensitive to this bias. IQE performs&nbsp;..."
      }
    },
  ],
}*/