import 'package:core/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/playlist_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PlaylistRepository playlistRepository;

  HomeBloc({
    required this.playlistRepository,
  }) : super(const HomeState()) {
    on<LoadHomeEvent>(_onLoadHome);
  }

  void _onLoadHome(
    LoadHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));
    try {
      final recommendations =
          await playlistRepository.fetchPlaylistRecommendations(
        userId: event.userId,
      );

      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          recommendations: recommendations,
        ),
      );
    } catch (err) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}
