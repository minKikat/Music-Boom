import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:music_app_boom/favourite_service/song_model.dart';

class SongRepository extends GetxController {
  static SongRepository get instance => Get.find();

  // Firestore instance for database interactions
  final _db = FirebaseFirestore.instance;

  // Get favorite songs based on the list of song IDs
  Future<List<SongModel>> getFavouriteSongs(List<String> songIds) async {
    try {
      final snapshot = await _db
          .collection('Songs')
          .where(FieldPath.documentId, whereIn: songIds)
          .get();
      return snapshot.docs
          .map((querySnapshot) => SongModel.fromSnapshot(querySnapshot))
          .toList();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.message ?? 'Unknown Firebase error');
    } on PlatformException catch (e) {
      throw TFirebaseException(e.message ?? 'Unknown Platform error');
    } catch (e) {
      throw TFirebaseException('Something went wrong. Please try again');
    }
  }
}

class TFirebaseException implements Exception {
  final String message;

  TFirebaseException(this.message);

  @override
  String toString() => 'TFirebaseException: $message';
}
