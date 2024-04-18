part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

class HomeState extends Equatable {
  final HomeStatus status;
  final UserRecommendations? recommendations;

  const HomeState({
    this.status = HomeStatus.initial,
    this.recommendations,
  });

  HomeState copyWith({
    HomeStatus? status,
    UserRecommendations? recommendations,
  }) {
    return HomeState(
      status: status ?? this.status,
      recommendations: recommendations ?? this.recommendations,
    );
  }

  @override
  List<Object?> get props => [
        status,
        recommendations,
      ];
}
