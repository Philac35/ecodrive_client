import 'dart:ffi';

import 'package:ecodrive_client/src/Entities/Itinerary.dart';

import 'Driver.dart';
import 'Itinerary.dart';
import 'Vehicule.dart';

class Travel{
  int? id;
  Driver driver;
  Itinerary itinerary;

  Vehicule vehicule;
  List? userList;
  Array? validate;
  DateTime createdAt;
  DateTime? updatedAt;


  Travel({this.id, required this.driver,required this.itinerary,required this.vehicule, this.userList,this.validate,required this.createdAt, this.updatedAt});


}