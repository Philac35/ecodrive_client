import 'dart:ffi';

import 'Abstract/Person.dart';
import './User.dart';
import './Employee.dart';


class Administrator extends Person{

  Administrator({ super.id,required super.firstname,required super.lastname,super.age,super.gender, super.address, super.photo, required super.authUser, super.createdAt}):super();

  bool  delete(Person person) {return false;}
  bool   suspend(Person person){return false;}
  pay(Float price){return price;}
  create(User user,Employee employee){}


}

