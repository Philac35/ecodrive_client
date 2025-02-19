import '../Entities/AuthUser.dart';
import '../../../Entities/Abstract/Person.dart';
import '../../../Entities/User.dart';

class AuthUserController{
  late AuthUser authUser;
  late User? user;
  AuthUserController(this.user){
    this.authUser=this.user!.authUser! ;

  }


}
