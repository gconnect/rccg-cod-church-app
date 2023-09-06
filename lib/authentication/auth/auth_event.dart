part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthStarted extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AuthSignout extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
