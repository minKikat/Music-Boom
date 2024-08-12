/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_app_boom/book_review/book_model.dart'; // Adjust the import path as needed

class BookService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> storeBookInFirebase(BookModel book) async {
    await _firestore.collection('books').add(book.toJson());
  }

  Future<List<BookModel>> getBooksFromFirebase() async {
    final snapshot = await _firestore.collection('books').get();
    return snapshot.docs.map((doc) {
      // Ensure that the document data is correctly converted to BookModel
      final data = doc.data() as Map<String, dynamic>;
      return BookModel.fromJson(data);
    }).toList();
  }
}
*/