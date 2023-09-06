part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSuccess extends AuthState {
  final String? displayName;
  const AuthSuccess({required this.displayName});
  @override
  // TODO: implement props
  List<Object?> get props => [displayName];
}

class AuthFailure extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
