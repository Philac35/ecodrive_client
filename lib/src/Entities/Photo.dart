
import 'package:json_annotation/json_annotation.dart';

import 'Interface/entityInterface.dart';
part 'Photo.g.dart';


@JsonSerializable()
class Photo  implements EntityInterface{
  int? id;
  String? title;
  String? uri;
  String? description;


  Photo({this.id,required this.title, this.uri, this.description});
  //Serialization
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  //To Json
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
