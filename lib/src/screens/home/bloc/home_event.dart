part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();
  @override
  List<Object> get props => [];
}

class HomeEventStarted extends HomeEvent {
  @override
  List<Object> get props => [];
}
