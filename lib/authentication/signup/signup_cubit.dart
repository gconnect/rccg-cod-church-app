import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/signup/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  // Add a method to validate email
  void validateEmail(String email) {
    if (isValidEmail(email)) {
      emit(EmailValid());
    } else {
      emit(EmailInvalid());
    }
  }

  // Utility function to validate email format
  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }
}

