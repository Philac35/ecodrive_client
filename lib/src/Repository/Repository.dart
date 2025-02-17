
import 'package:ecodrive_client/src/Repository/Abstract/AbstractRepository.dart';

class Repository<T> extends AbstractRepository<T> {
  Repository({Repository<T>? repository}) : super(repository: repository);

  @override
  Future<T?> find() {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<List<T>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<List<T>> findBy(Map<String, dynamic> parameters) {
    // TODO: implement findBy
    throw UnimplementedError();
  }

  @override
  Future<T?> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<T?> findLast() {
    // TODO: implement findLast
    throw UnimplementedError();
  }

  @override
  Future<int> getLastId() {
    // TODO: implement getLastId
    throw UnimplementedError();
  }

  @override
  Future queries(List<String> queries) {
    // TODO: implement queries
    throw UnimplementedError();
  }

  @override
  Future query(String query) {
    // TODO: implement query
    throw UnimplementedError();
  }





}