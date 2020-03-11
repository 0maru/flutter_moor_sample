import 'package:moor/moor.dart';

class FileManage extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get path => text()();
  TextColumn get titleCode => text()();
  IntColumn get story => integer()();
  IntColumn get volume => integer()();
  IntColumn get page => integer()();
  TextColumn get suffleMap => text()();
}
