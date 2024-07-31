import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference songsCollection =
      FirebaseFirestore.instance.collection('Favorites'); // collection name

  // CREATE
  Future<void> addSong(String songName, String artistName, String imageUrl) {
    return songsCollection.add({
      'songName': songName,
      'artistName': artistName,
      'imageUrl': imageUrl,
    });
  }

  Future<bool> isFavorite(String songName) async {
    final querySnapshot =
        await songsCollection.where('songName', isEqualTo: songName).get();
    return querySnapshot.docs.isNotEmpty;
  }

  // READ
  Stream<QuerySnapshot> getSongsStrem() {
    final songsStrem = songsCollection.snapshots();

    return songsStrem;
  }

  // UPDATE
  Future<void> updateSong(String docID, String newSongName,
      String newArtistName, String newImageUrl) {
    return songsCollection.doc(docID).update({
      'songName': newSongName,
      'artistName': newArtistName,
      'imageUrl': newImageUrl,
    });
  }
}
