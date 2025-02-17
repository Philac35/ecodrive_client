import 'package:ecodrive_client/src/Controllers/Abstract/AbstractController.dart';
import 'package:ecodrive_client/src/Repository/Repository.dart';

class Controller<T> extends AbstractController{

  Controller({
    required Controller<T> controller,
    Repository<T>? repository,
  }) : super(controller: controller, repository: repository);

  @override
  Future<bool> create(entity) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Future<bool> save(entity) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson(entity) {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  Future<bool> update(entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
  

}