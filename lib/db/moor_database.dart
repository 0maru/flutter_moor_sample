import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'scheme/schemes.dart';

part 'moor_database.g.dart';

@UseMoor(tables: [
  Todos,
  Categories,
  FileManage,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;
  Future<void> get insertFileData => into(fileManage).insert(
        FileManageCompanion.insert(
          path: 'null',
          titleCode: 'null',
          story: 1,
          volume: 1,
          page: 1,
          suffleMap: 'null',
        ),
      );
  Future<List<FileManageData>> get allFileData => select(fileManage).get();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}
