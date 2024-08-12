// song/bloc/song_player_state.dart

abstract class SongPlayerState {}

class SongPlayerInitial extends SongPlayerState {}

class SongPlayerLoading extends SongPlayerState {}

class SongPlayerLoaded extends SongPlayerState {
  final Duration songPosition;
  final Duration songDuration;

  SongPlayerLoaded(this.songPosition, this.songDuration);
}