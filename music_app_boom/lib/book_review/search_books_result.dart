class SearchBooksResult {
  final List<BookItem> items;

  SearchBooksResult({required this.items});

  factory SearchBooksResult.fromJson(Map<String, dynamic> json) {
    var list = json['items'] as List;
    List<BookItem> itemsList = list.map((i) => BookItem.fromJson(i)).toList();

    return SearchBooksResult(
      items: itemsList,
    );
  }
}

class BookItem {
  final VolumeInfo volumeInfo;

  BookItem({required this.volumeInfo});

  factory BookItem.fromJson(Map<String, dynamic> json) {
    return BookItem(
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
    );
  }
}

class VolumeInfo {
  final String title;
  final List<String>? authors;
  final ImageLinks? imageLinks;
  final String? previewLink; // Add this line

  VolumeInfo({
    required this.title,
    this.authors,
    this.imageLinks,
    this.previewLink, // Add this line
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors:
          json['authors'] != null ? List<String>.from(json['authors']) : null,
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      previewLink: json['previewLink'], // Add this line
    );
  }
}

class ImageLinks {
  final String? thumbnail;

  ImageLinks({this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      thumbnail: json['thumbnail'],
    );
  }
}
