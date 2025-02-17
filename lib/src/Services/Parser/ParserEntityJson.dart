import 'dart:convert';

import 'package:ecodrive_client/src/Entities/Interface/entityInterface.dart';
import 'package:ecodrive_client/src/Services/Parser/Interface/ParserJsonInterface.dart';

class ParserEntityJson implements ParserJsonInterface{
  EntityInterface entity;
  ParserEntityJson({required this.entity});

  @override
  decode(jsonString) {
    final userMap = jsonDecode(jsonString) as Map<String, dynamic>;
    return  EntityInterface?.fromJson(userMap);
  }

  @override
  encode() {
   return entity.toJson();
  }
}

