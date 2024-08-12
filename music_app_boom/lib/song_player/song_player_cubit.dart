// song/bloc/song_player_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logging/logging.dart';
import 'song_player_state.dart';

class SongPlayerCubit extends Cubit<SongPlayerState> {
  final AudioPlayer audioPlayer;
  final Logger _logger = Logger('SongPlayerCubit'); // Initialize the logger

  SongPlayerCubit(this.audioPlayer) : super(SongPlayerInitial()) {
    _initialize();
  }

  void _initialize() async {
    audioPlayer.positionStream.listen((position) {
      emit(SongPlayerLoaded(position, audioPlayer.duration ?? Duration.zero));
    });

    audioPlayer.durationStream.listen((duration) {
      emit(SongPlayerLoaded(audioPlayer.position, duration ?? Duration.zero));
    });
  }

  void loadSong(String url) async {
    emit(SongPlayerLoading());
    try {
      await audioPlayer.setUrl(url);
      emit(SongPlayerLoaded(
          audioPlayer.position, audioPlayer.duration ?? Duration.zero));
    } catch (e, stackTrace) {
      _logger.severe('Error loading song: $e', e, stackTrace); // Log the error
      // Handle the error appropriately, such as showing a user-friendly message
    }
  }

  void loadLocalSong(String assetPath) async {
    emit(SongPlayerLoading());
    try {
      await audioPlayer.setAsset(assetPath);
      emit(SongPlayerLoaded(
          audioPlayer.position, audioPlayer.duration ?? Duration.zero));
    } catch (e, stackTrace) {
      _logger.severe('Error loading local song: $e', e, stackTrace); // Log the error
      // Handle the error appropriately, such as showing a user-friendly message
    }
  }

  void playSong() {
    audioPlayer.play();
  }

  void pauseSong() {
    audioPlayer.pause();
  }

  void seekSong(Duration position) {
    audioPlayer.seek(position);
  }
}