import 'package:hive_flutter/hive_flutter.dart';

abstract class Database {
  Box get box;
  Future<T> get<T>(int id);
  List<T> getAll<T>();
  Future delete(int id);
  Future add<T>(T item);
  Future update<T>(int id, T item);
}
