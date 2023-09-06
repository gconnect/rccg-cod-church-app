import 'package:rccg_cod/authentication/auth/auth_service.dart';
import 'package:rccg_cod/authentication/auth/auth_repository.dart';
import 'package:rccg_cod/authentication/model/user_model.dart';

class AuthRepositoryImpl extends AuthRepository {

    // handle this with dependency injection
    AuthService service = AuthService();

  @override
  Stream<UserModel> getCurrentUser() {
      return service.retrieveCurrentUser();
  }

  @override
  Future<String?> retrieveUserName(UserModel user) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> signIn(UserModel user) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> signUp(UserModel user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}