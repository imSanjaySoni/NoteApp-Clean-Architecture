import 'package:hive_flutter/hive_flutter.dart';

abstract class Database {
  Box get box;
  T get<T>(String id);
  List<T> getAll<T>();
  Future delete(String id);
  Future deleteAll(List<String> keys);
  Future addUpdate<T>(String id, T item);
}
