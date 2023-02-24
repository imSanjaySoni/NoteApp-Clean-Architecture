import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/common/constants.dart';
import 'package:note_app/common/exception.dart';
import 'package:note_app/domain/database/database.dart';

@LazySingleton(as: Database)
class LocalDBImplementation implements Database {
  @override
  Box get box => Hive.box(databaseBox);

  @override
  T get<T>(String id) {
    try {
      final data = box.get(id);
      if (data == null) {
        throw NoteAppException.noRecords();
      }
      return data;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  List<T> getAll<T>() {
    try {
      final data = box.toMap().values;
      if (data.isEmpty) {
        throw NoteAppException.noRecords();
      }

      return data.toList().cast<T>();
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future delete(String id) async {
    try {
      await box.delete(id);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future addUpdate<T>(String id, T item) async {
    try {
      await box.put(id, item);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteAll(List<String> keys) async {
    try {
      await box.deleteAll(keys);
    } on Exception catch (_) {
      rethrow;
    }
  }
}
