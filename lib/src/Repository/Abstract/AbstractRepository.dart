import '../Repository.dart';

abstract class  AbstractRepository<T>{
Repository <T>?  repository;

AbstractRepository({this.repository});

// Fetch entities Functions

Future<T?> find();
Future<T?> findById(int id);
Future<List<T>> findAll();
Future<List<T>> findBy(Map<String, dynamic> parameters);
Future<T?> findLast();
Future<int> getLastId();
Future<dynamic> query(String query);
Future<dynamic> queries(List<String> queries);

}
