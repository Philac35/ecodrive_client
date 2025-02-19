import 'package:auto_route/auto_route.dart';
import 'package:ecodrive_client/src/Modules/Authentification/Controllers/AuthUserController.dart';
import 'package:ecodrive_client/src/Services/HTMLService/HTMLService.dart';

import '../../Entities/User.dart';

class Authenticator{
  bool isConnected=false;
  
  AuthUserController? authUserController;
  Authenticator(){
    this.authUserController=AuthUserController();
  };
  
  
 Future<bool> authenticate(String identifiant,String mdp) async {
      //envoie des identifiant au server
      // récupération
      //confirmation utilisateur connecté

      //TODO To continue
     //  HTMLService().send(httpRequest:'/api/authenticate',method:'POST',data:{identifiant,crypted(mdp)});
   if (this.isConnected==true){
     //TODO Needed for Configuration du guard
     //AutoRouter.of(context).pop(true);
   }

   return false;
 }
}

