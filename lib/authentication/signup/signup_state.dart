
import 'package:flutter/cupertino.dart';

@immutable
abstract class SignupState {
  late final String? errorMessage;
  final bool? isFailure = false;
}

class SignupInitial extends SignupState {

}


class EmailValid extends SignupState {}

class EmailInvalid extends SignupState {}





