part of 'playlist_bloc.dart';

sealed class PlaylistEvent extends Equatable {
  const PlaylistEvent();

  @override
  List<Object> get props => [];
}

class LoadPlaylistEvent extends PlaylistEvent {
  final String playlistId;

  const LoadPlaylistEvent({required this.playlistId});

  @override
  List<Object> get props => [playlistId];
}
