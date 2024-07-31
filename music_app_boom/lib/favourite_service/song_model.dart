import 'package:cloud_firestore/cloud_firestore.dart';

class SongModel {
  final String id;
  final String title;
  final String artist;
  final int duration; // in seconds
  final String imageUrl; // URL to the album art or song image
  final String songUrl; // URL to the song file

  SongModel({
    required this.id,
    required this.title,
    required this.artist,
    required this.duration,
    required this.imageUrl,
    required this.songUrl,
  });

  factory SongModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return SongModel(
      id: snapshot.id,
      title: data['title'] ?? '',
      artist: data['artist'] ?? '',
      duration: data['duration'] ?? 0,
      imageUrl: data['imageUrl'] ?? '',
      songUrl: data['songUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'artist': artist,
      'duration': duration,
      'imageUrl': imageUrl,
      'songUrl': songUrl,
    };
  }
}
