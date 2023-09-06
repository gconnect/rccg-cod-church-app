import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rccg_cod/authentication/auth/auth_repository_impl.dart';
import 'package:rccg_cod/authentication/model/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryImpl _authRepository;
  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is AuthStarted) {
        UserModel user = await _authRepository.getCurrentUser().first;
        if (user.uid != "uid") {
          String? displayName = await _authRepository.retrieveUserName(user);
          emit(AuthSuccess(displayName: displayName));
        } else {
          emit(AuthFailure());
        }
      }
      else if(event is AuthSignout){
        await _authRepository.signOut();
        emit(AuthFailure());
      }
    });
  }
}
