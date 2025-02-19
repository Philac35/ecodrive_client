import 'package:ecodrive_client/src/Entities/Abstract/Person.dart';
import 'package:json_annotation/json_annotation.dart';

import '../Modules/Authentification/Entities/AuthUser.dart';
import 'Address.dart';
import 'Interface/entityInterface.dart';
import 'Photo.dart';
part 'User.g.dart';

@JsonSerializable(explicitToJson: true)
class User extends Person  implements EntityInterface{

  User({super.id,   required super.firstname,   required super.lastname,   super.age,   super.gender,   super.address,   super.email,   super.photo,   required super.authUser, super.createdAt}):super();

//Serialization
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

//To Json
  Map<String, dynamic> toJson() => _$UserToJson(this);


  @override
  get authUser {return super.authUser; }
}

