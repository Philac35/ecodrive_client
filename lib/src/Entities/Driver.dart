import "dart:ffi";
import "dart:typed_data";

import "package:ecodrive_client/src/Entities/User.dart";
import "package:json_annotation/json_annotation.dart";

import "../Modules/Authentification/Entities/AuthUser.dart";
import "./Notice.dart";
import "Address.dart";
import "Interface/entityInterface.dart";
import "Photo.dart";
part 'Driver.g.dart';

@JsonSerializable(explicitToJson: true)
class Driver extends User  implements EntityInterface{

  Notice? notice;
  List? preferences;
  String? drivinglicense;  //will be stocked as Blob in BDD

  Driver(  {   super.id,   required super. firstname,   required super. lastname,  super.age,   super. gender,  super. address,   super.email,   super. photo,   required super.authUser,   super.createdAt,this.notice, this.preferences,this.drivinglicense }):super() ;


  //Serialization
  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  //To Json
  Map<String, dynamic> toJson() => _$DriverToJson(this);



}

