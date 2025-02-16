import 'package:ecodrive_client/src/Entities/Abstract/Person.dart';

class Employee extends Person{

   Employee({ super.id,   required super.firstname,   required super.lastname,   super.age,   super.gender,   super.address,   super.email,   super.photo,   required super.authUser,   super.createdAt}):super();
}