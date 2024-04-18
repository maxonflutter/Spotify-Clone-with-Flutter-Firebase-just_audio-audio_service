part of 'playlist_bloc.dart';

enum PlaylistStatus { initial, loading, loaded, error }

class PlaylistState extends Equatable {
  final PlaylistStatus status;
  final Playlist? playlist;

  const PlaylistState({
    this.status = PlaylistStatus.initial,
    this.playlist,
  });

  PlaylistState copyWith({
    PlaylistStatus? status,
    Playlist? playlist,
  }) {
    return PlaylistState(
      status: status ?? this.status,
      playlist: playlist ?? this.playlist,
    );
  }

  @override
  List<Object?> get props => [status, playlist];
}
