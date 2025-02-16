import "dart:ffi";
import "dart:typed_data";

import "package:ecodrive_client/src/Entities/User.dart";

import "./Notice.dart";
class Driver extends User{

  Notice? notice;
  Array? preferences;
  Uint8List? drivinglicense;  //will be stocked as Blob in BDD

  Driver(  {   super.id,   required super. firstname,   required super. lastname,  super.age,   super. gender,  super. address,   super.email,   super. photo,   required super.authUser,   super.createdAt,this.notice, this.preferences,this.drivinglicense }):super() ;





}

