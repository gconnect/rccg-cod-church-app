import 'package:rccg_cod/authentication/model/user_model.dart';

abstract class AuthRepository {
  Stream<UserModel> getCurrentUser();
  Future<UserModel?> signUp(UserModel user);
  Future<UserModel?> signIn(UserModel user);
  Future<void> signOut();
  Future<String?> retrieveUserName(UserModel user);
}