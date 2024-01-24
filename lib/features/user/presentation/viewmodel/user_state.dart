part of 'user_bloc.dart';

sealed class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {
  final List<User> users;

  UserSuccess(this.users);
}

class UserError extends UserState {}
