// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String content;
  final int category;
  Todo(
      {@required this.id,
      @required this.title,
      @required this.content,
      this.category});
  factory Todo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Todo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      content:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
      category:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}category']),
    );
  }
  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      category: serializer.fromJson<int>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'category': serializer.toJson<int>(category),
    };
  }

  @override
  TodosCompanion createCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  Todo copyWith({int id, String title, String content, int category}) => Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(title.hashCode, $mrjc(content.hashCode, category.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.category == this.category);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<int> category;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.category = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String content,
    this.category = const Value.absent(),
  })  : title = Value(title),
        content = Value(content);
  TodosCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> content,
      Value<int> category}) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
    );
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TodosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 6, maxTextLength: 32);
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn(
      'body',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedIntColumn _category;
  @override
  GeneratedIntColumn get category => _category ??= _constructCategory();
  GeneratedIntColumn _constructCategory() {
    return GeneratedIntColumn(
      'category',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, content, category];
  @override
  $TodosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'todos';
  @override
  final String actualTableName = 'todos';
  @override
  VerificationContext validateIntegrity(TodosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.content.present) {
      context.handle(_contentMeta,
          content.isAcceptableValue(d.content.value, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (d.category.present) {
      context.handle(_categoryMeta,
          category.isAcceptableValue(d.category.value, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Todo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TodosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.content.present) {
      map['body'] = Variable<String, StringType>(d.content.value);
    }
    if (d.category.present) {
      map['category'] = Variable<int, IntType>(d.category.value);
    }
    return map;
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(_db, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String description;
  Category({@required this.id, @required this.description});
  factory Category.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Category(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  @override
  CategoriesCompanion createCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  Category copyWith({int id, String description}) => Category(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, description.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.description == this.description);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> description;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    @required String description,
  }) : description = Value(description);
  CategoriesCompanion copyWith({Value<int> id, Value<String> description}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  $CategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categories';
  @override
  final String actualTableName = 'categories';
  @override
  VerificationContext validateIntegrity(CategoriesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Category.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CategoriesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    return map;
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

class FileManageData extends DataClass implements Insertable<FileManageData> {
  final int id;
  final String path;
  final String titleCode;
  final int story;
  final int volume;
  final int page;
  final String suffleMap;
  FileManageData(
      {@required this.id,
      @required this.path,
      @required this.titleCode,
      @required this.story,
      @required this.volume,
      @required this.page,
      @required this.suffleMap});
  factory FileManageData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return FileManageData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      path: stringType.mapFromDatabaseResponse(data['${effectivePrefix}path']),
      titleCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}title_code']),
      story: intType.mapFromDatabaseResponse(data['${effectivePrefix}story']),
      volume: intType.mapFromDatabaseResponse(data['${effectivePrefix}volume']),
      page: intType.mapFromDatabaseResponse(data['${effectivePrefix}page']),
      suffleMap: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}suffle_map']),
    );
  }
  factory FileManageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FileManageData(
      id: serializer.fromJson<int>(json['id']),
      path: serializer.fromJson<String>(json['path']),
      titleCode: serializer.fromJson<String>(json['titleCode']),
      story: serializer.fromJson<int>(json['story']),
      volume: serializer.fromJson<int>(json['volume']),
      page: serializer.fromJson<int>(json['page']),
      suffleMap: serializer.fromJson<String>(json['suffleMap']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'path': serializer.toJson<String>(path),
      'titleCode': serializer.toJson<String>(titleCode),
      'story': serializer.toJson<int>(story),
      'volume': serializer.toJson<int>(volume),
      'page': serializer.toJson<int>(page),
      'suffleMap': serializer.toJson<String>(suffleMap),
    };
  }

  @override
  FileManageCompanion createCompanion(bool nullToAbsent) {
    return FileManageCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      titleCode: titleCode == null && nullToAbsent
          ? const Value.absent()
          : Value(titleCode),
      story:
          story == null && nullToAbsent ? const Value.absent() : Value(story),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      page: page == null && nullToAbsent ? const Value.absent() : Value(page),
      suffleMap: suffleMap == null && nullToAbsent
          ? const Value.absent()
          : Value(suffleMap),
    );
  }

  FileManageData copyWith(
          {int id,
          String path,
          String titleCode,
          int story,
          int volume,
          int page,
          String suffleMap}) =>
      FileManageData(
        id: id ?? this.id,
        path: path ?? this.path,
        titleCode: titleCode ?? this.titleCode,
        story: story ?? this.story,
        volume: volume ?? this.volume,
        page: page ?? this.page,
        suffleMap: suffleMap ?? this.suffleMap,
      );
  @override
  String toString() {
    return (StringBuffer('FileManageData(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('titleCode: $titleCode, ')
          ..write('story: $story, ')
          ..write('volume: $volume, ')
          ..write('page: $page, ')
          ..write('suffleMap: $suffleMap')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          path.hashCode,
          $mrjc(
              titleCode.hashCode,
              $mrjc(
                  story.hashCode,
                  $mrjc(volume.hashCode,
                      $mrjc(page.hashCode, suffleMap.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is FileManageData &&
          other.id == this.id &&
          other.path == this.path &&
          other.titleCode == this.titleCode &&
          other.story == this.story &&
          other.volume == this.volume &&
          other.page == this.page &&
          other.suffleMap == this.suffleMap);
}

class FileManageCompanion extends UpdateCompanion<FileManageData> {
  final Value<int> id;
  final Value<String> path;
  final Value<String> titleCode;
  final Value<int> story;
  final Value<int> volume;
  final Value<int> page;
  final Value<String> suffleMap;
  const FileManageCompanion({
    this.id = const Value.absent(),
    this.path = const Value.absent(),
    this.titleCode = const Value.absent(),
    this.story = const Value.absent(),
    this.volume = const Value.absent(),
    this.page = const Value.absent(),
    this.suffleMap = const Value.absent(),
  });
  FileManageCompanion.insert({
    this.id = const Value.absent(),
    @required String path,
    @required String titleCode,
    @required int story,
    @required int volume,
    @required int page,
    @required String suffleMap,
  })  : path = Value(path),
        titleCode = Value(titleCode),
        story = Value(story),
        volume = Value(volume),
        page = Value(page),
        suffleMap = Value(suffleMap);
  FileManageCompanion copyWith(
      {Value<int> id,
      Value<String> path,
      Value<String> titleCode,
      Value<int> story,
      Value<int> volume,
      Value<int> page,
      Value<String> suffleMap}) {
    return FileManageCompanion(
      id: id ?? this.id,
      path: path ?? this.path,
      titleCode: titleCode ?? this.titleCode,
      story: story ?? this.story,
      volume: volume ?? this.volume,
      page: page ?? this.page,
      suffleMap: suffleMap ?? this.suffleMap,
    );
  }
}

class $FileManageTable extends FileManage
    with TableInfo<$FileManageTable, FileManageData> {
  final GeneratedDatabase _db;
  final String _alias;
  $FileManageTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _pathMeta = const VerificationMeta('path');
  GeneratedTextColumn _path;
  @override
  GeneratedTextColumn get path => _path ??= _constructPath();
  GeneratedTextColumn _constructPath() {
    return GeneratedTextColumn(
      'path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleCodeMeta = const VerificationMeta('titleCode');
  GeneratedTextColumn _titleCode;
  @override
  GeneratedTextColumn get titleCode => _titleCode ??= _constructTitleCode();
  GeneratedTextColumn _constructTitleCode() {
    return GeneratedTextColumn(
      'title_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _storyMeta = const VerificationMeta('story');
  GeneratedIntColumn _story;
  @override
  GeneratedIntColumn get story => _story ??= _constructStory();
  GeneratedIntColumn _constructStory() {
    return GeneratedIntColumn(
      'story',
      $tableName,
      false,
    );
  }

  final VerificationMeta _volumeMeta = const VerificationMeta('volume');
  GeneratedIntColumn _volume;
  @override
  GeneratedIntColumn get volume => _volume ??= _constructVolume();
  GeneratedIntColumn _constructVolume() {
    return GeneratedIntColumn(
      'volume',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pageMeta = const VerificationMeta('page');
  GeneratedIntColumn _page;
  @override
  GeneratedIntColumn get page => _page ??= _constructPage();
  GeneratedIntColumn _constructPage() {
    return GeneratedIntColumn(
      'page',
      $tableName,
      false,
    );
  }

  final VerificationMeta _suffleMapMeta = const VerificationMeta('suffleMap');
  GeneratedTextColumn _suffleMap;
  @override
  GeneratedTextColumn get suffleMap => _suffleMap ??= _constructSuffleMap();
  GeneratedTextColumn _constructSuffleMap() {
    return GeneratedTextColumn(
      'suffle_map',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, path, titleCode, story, volume, page, suffleMap];
  @override
  $FileManageTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'file_manage';
  @override
  final String actualTableName = 'file_manage';
  @override
  VerificationContext validateIntegrity(FileManageCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.path.present) {
      context.handle(
          _pathMeta, path.isAcceptableValue(d.path.value, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (d.titleCode.present) {
      context.handle(_titleCodeMeta,
          titleCode.isAcceptableValue(d.titleCode.value, _titleCodeMeta));
    } else if (isInserting) {
      context.missing(_titleCodeMeta);
    }
    if (d.story.present) {
      context.handle(
          _storyMeta, story.isAcceptableValue(d.story.value, _storyMeta));
    } else if (isInserting) {
      context.missing(_storyMeta);
    }
    if (d.volume.present) {
      context.handle(
          _volumeMeta, volume.isAcceptableValue(d.volume.value, _volumeMeta));
    } else if (isInserting) {
      context.missing(_volumeMeta);
    }
    if (d.page.present) {
      context.handle(
          _pageMeta, page.isAcceptableValue(d.page.value, _pageMeta));
    } else if (isInserting) {
      context.missing(_pageMeta);
    }
    if (d.suffleMap.present) {
      context.handle(_suffleMapMeta,
          suffleMap.isAcceptableValue(d.suffleMap.value, _suffleMapMeta));
    } else if (isInserting) {
      context.missing(_suffleMapMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FileManageData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FileManageData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(FileManageCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.path.present) {
      map['path'] = Variable<String, StringType>(d.path.value);
    }
    if (d.titleCode.present) {
      map['title_code'] = Variable<String, StringType>(d.titleCode.value);
    }
    if (d.story.present) {
      map['story'] = Variable<int, IntType>(d.story.value);
    }
    if (d.volume.present) {
      map['volume'] = Variable<int, IntType>(d.volume.value);
    }
    if (d.page.present) {
      map['page'] = Variable<int, IntType>(d.page.value);
    }
    if (d.suffleMap.present) {
      map['suffle_map'] = Variable<String, StringType>(d.suffleMap.value);
    }
    return map;
  }

  @override
  $FileManageTable createAlias(String alias) {
    return $FileManageTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TodosTable _todos;
  $TodosTable get todos => _todos ??= $TodosTable(this);
  $CategoriesTable _categories;
  $CategoriesTable get categories => _categories ??= $CategoriesTable(this);
  $FileManageTable _fileManage;
  $FileManageTable get fileManage => _fileManage ??= $FileManageTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [todos, categories, fileManage];
}
