part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadHomeEvent extends HomeEvent {
  final String userId;

  const LoadHomeEvent({required this.userId});

  @override
  List<Object> get props => [userId];
}



























// class LoadHomeEvent extends HomeEvent {
//   final String userId;

//   const LoadHomeEvent({required this.userId});

//   @override
//   List<Object> get props => [userId];
// }
