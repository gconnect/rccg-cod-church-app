import 'package:rccg_cod/authentication/model/user_model.dart';

class AuthService {
  
  //API instance add the other methods from the repository
  // FirebaseAuth auth = FirebaseAuth.instance;


  Stream<UserModel> retrieveCurrentUser() {
    UserModel user =   UserModel(uid: 1, name: "name", phone: "phone", email: "email", password: "password");
    return retrieveCurrentUser();
  }

   Future<void> signOut() async {
    return await signOut();
  }


}