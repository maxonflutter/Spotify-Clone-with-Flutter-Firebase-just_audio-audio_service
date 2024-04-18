import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/entities.dart';
import 'package:equatable/equatable.dart';

import '../../repositories/playlist_repository.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  final PlaylistRepository _playlistRepository;

  PlaylistBloc({
    required PlaylistRepository playlistRepository,
  })  : _playlistRepository = playlistRepository,
        super(const PlaylistState()) {
    on<LoadPlaylistEvent>(_onLoadPlaylist);
  }

  void _onLoadPlaylist(
    LoadPlaylistEvent event,
    Emitter<PlaylistState> emit,
  ) async {
    emit(state.copyWith(status: PlaylistStatus.loading));
    try {
      final playlist = await _playlistRepository.fetchPlaylist(
        playlistId: event.playlistId,
      );

      emit(state.copyWith(status: PlaylistStatus.loaded, playlist: playlist));
    } catch (err) {
      emit(state.copyWith(status: PlaylistStatus.error));
    }
  }
}
