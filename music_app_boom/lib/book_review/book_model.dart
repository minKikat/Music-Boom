/*class BookModel {
  final String title;
  final String author;
  final String imgPath;
  final String previewLink;

  BookModel({
    required this.title,
    required this.author,
    required this.imgPath,
    required this.previewLink,
  });

  // Convert a BookModel instance to a Map for Firestore
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'imgPath': imgPath,
      'previewLink': previewLink,
    };
  }

  // Create a BookModel instance from a Map
  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] ?? '',
      author: json['author'] ?? 'Unknown Author',
      imgPath: json['imgPath'] ?? '',
      previewLink: json['previewLink'] ?? '',
    );
  }
}*/

/*class BookModel {
  final String title;
  final String author;
  final String imgPath;
  final String previewLink;

  BookModel(
      {required this.title,
      required this.author,
      required this.imgPath,
      required this.previewLink});

  factory BookModel.fromMap(Map<String, dynamic> data) {
    return BookModel(
      title: data['title'] ?? '',
      author: data['author'] ?? '',
      imgPath: data['imgPath'] ?? '',
      previewLink: data['previewLink'] ?? '',
    );
  }
}*/

class BookModel {
  final String title;
  final String author;
  final String imgPath;
  final String previewLink;
  final String pdfLink;

  BookModel({
    required this.title,
    required this.author,
    required this.imgPath,
    required this.previewLink,
    required this.pdfLink,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] ?? {};
    final authors = volumeInfo['authors'] as List<dynamic>? ?? [];
    final thumbnail = volumeInfo['imageLinks']?['thumbnail'] ?? '';
    final previewLink = volumeInfo['previewLink'] ?? '';
    final pdfLink = volumeInfo['pdf']?['acsTokenLink'] ?? '';

    return BookModel(
      title: volumeInfo['title'] ?? 'No title',
      author: authors.isNotEmpty ? authors.join(', ') : 'Unknown author',
      imgPath: thumbnail,
      previewLink: previewLink,
      pdfLink: pdfLink,
    );
  }
}
