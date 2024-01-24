part of 'home_bloc.dart';

sealed class HomeEvent {}

class ChangeTab extends HomeEvent {
  final int tabIndex;

  ChangeTab({required this.tabIndex});
}