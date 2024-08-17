/*import 'package:cloud_firestore/cloud_firestore.dart';

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

  // DELETE
  Future<void> removeSong(String songName) async {
    final snapshot =
        await songsCollection.where('songName', isEqualTo: songName).get();
    for (var doc in snapshot.docs) {
      await doc.reference.delete();
    }
  }
}*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String getUserId() {
    User? user = _auth.currentUser;
    if (user == null) {
      throw Exception('No user is logged in');
    }
    return user.uid;
  }

  // Add song to favorites
  Future<void> addSong(
      String songName, String artistName, String imageUrl) async {
    final userId = getUserId();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .add({
      'songName': songName,
      'artistName': artistName,
      'imageUrl': imageUrl,
    });
  }

  // Remove song from favorites
  Future<void> removeSong(String songName) async {
    final userId = getUserId();
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .where('songName', isEqualTo: songName)
        .get();
    for (var doc in snapshot.docs) {
      await doc.reference.delete();
    }
  }

  // Check if song is favorite
  Future<bool> isFavorite(String songName) async {
    final userId = getUserId();
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .where('songName', isEqualTo: songName)
        .get();
    return snapshot.docs.isNotEmpty;
  }
}
