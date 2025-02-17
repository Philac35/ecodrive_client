import 'package:ecodrive_client/src/Controllers/Controller.dart';

import '../../Repository/Repository.dart';



  abstract class AbstractController<T> {
  late Controller<T> controller;
  late Repository<T>? repository;

  AbstractController({required this.controller, this.repository});
  // CRUD Functions
  Future<bool> create(T entity);
  Future<bool> save(T entity);
  Future<bool> delete(T entity);
  Future<bool> update(T entity);



  // Serialize
  Map<String, dynamic> toJson(T entity);
  T fromJson(Map<String, dynamic> json);
  }






