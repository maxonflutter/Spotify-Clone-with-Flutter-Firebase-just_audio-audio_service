import 'package:core/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/playlist_repository.dart';
import '../../shared/utils/duration_extensions.dart';
import '../../shared/widgets/song_track_card.dart';
import '../../state/audio_player/audio_player_bloc.dart';
import '../../state/playlist/playlist_bloc.dart';

part 'widgets/_playlist_header.dart';
part 'widgets/_playlist_song_list.dart';
part 'widgets/_playlist_toolbar.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key, required this.playlistId});

  final String playlistId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlaylistBloc(
        playlistRepository: context.read<PlaylistRepository>(),
      )..add(LoadPlaylistEvent(playlistId: playlistId)),
      child: const PlaylistView(),
    );
  }
}

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      floatingActionButton: const SongTrackCard(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: BlocBuilder<PlaylistBloc, PlaylistState>(
        builder: (context, state) {
          if (state.status == PlaylistStatus.initial ||
              state.status == PlaylistStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == PlaylistStatus.loaded && state.playlist != null) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  _PlaylistHeader(playlist: state.playlist!),
                  _PlaylistToolbar(playlist: state.playlist!),
                  _PlaylistSongList(playlist: state.playlist!),
                ],
              ),
            );
          } else {
            return const Center(child: Text('Something went wrong!'));
          }
        },
      ),
    );
  }
}
