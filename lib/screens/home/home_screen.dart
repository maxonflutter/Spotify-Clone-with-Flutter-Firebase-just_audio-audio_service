import 'package:core/entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/playlist_repository.dart';
import '../../shared/widgets/main_nav_bar.dart';
import '../../shared/widgets/playlist_card.dart';
import '../../shared/widgets/song_track_card.dart';
import '../../state/home/home_bloc.dart';

part 'widgets/_home_app_bar.dart';
part 'widgets/_home_playlist_recomendation.dart';
part 'widgets/_home_tab_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        playlistRepository: context.read<PlaylistRepository>(),
      )..add(
          // TODO: Use the current user id after implementing authentication
          const LoadHomeEvent(userId: 'user_1'),
        ),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _HomeAppBar(),
      floatingActionButton: const SongTrackCard(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: const MainNavBar(index: 0),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == HomeStatus.loading ||
              state.status == HomeStatus.initial) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == HomeStatus.loaded) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _PlaylistRecomendation(
                    title: 'To get started',
                    playlists: state.recommendations!.recommendedPlaylists,
                  ),
                  _PlaylistRecomendation(
                    title: 'Try something else',
                    playlists: state.recommendations!.discoveryPlaylists,
                  ),
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
