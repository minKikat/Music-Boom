class BookModel {
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

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final volumeInfo = json['volumeInfo'] ?? {};
    final authors = volumeInfo['authors'] as List<dynamic>? ?? [];
    final thumbnail = volumeInfo['imageLinks']?['thumbnail'] ?? '';
    final previewLink = volumeInfo['previewLink'] ?? '';

    return BookModel(
      title: volumeInfo['title'] ?? 'No title',
      author: authors.isNotEmpty ? authors.join(', ') : 'Unknown author',
      imgPath: thumbnail,
      previewLink: previewLink,
    );
  }
}
