import 'package:hive_flutter/hive_flutter.dart';

abstract class Database {
  Box get box;
  Future<T> get<T>(String id);
  List<T> getAll<T>();
  Future delete(String id);
  Future add<T>(T item);
  Future update<T>(String id, T item);
}
