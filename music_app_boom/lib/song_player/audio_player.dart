import 'package:just_audio/just_audio.dart';

class AudioPlayerManager {
  static final AudioPlayerManager _instance = AudioPlayerManager._internal();
  factory AudioPlayerManager() => _instance;
  AudioPlayerManager._internal();

  final AudioPlayer audioPlayer = AudioPlayer();
  Duration _lastPosition = Duration.zero;
  bool _isPlaying = false;

  void savePlaybackState() {
    _lastPosition = audioPlayer.position;
    _isPlaying = audioPlayer.playing;
  }

  void restorePlaybackState() {
    audioPlayer.seek(_lastPosition);
    if (_isPlaying) {
      audioPlayer.play();
    }
  }
}
