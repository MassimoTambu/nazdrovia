/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'translations.dart' as _i2;

abstract class Texts implements _i1.TableRow, _i1.ProtocolSerialization {
  Texts._({
    this.id,
    required this.originalText,
    this.translations,
  });

  factory Texts({
    int? id,
    required String originalText,
    List<_i2.Translation>? translations,
  }) = _TextsImpl;

  factory Texts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Texts(
      id: jsonSerialization['id'] as int?,
      originalText: jsonSerialization['originalText'] as String,
      translations: (jsonSerialization['translations'] as List?)
          ?.map((e) => _i2.Translation.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = TextsTable();

  static const db = TextsRepository._();

  @override
  int? id;

  String originalText;

  List<_i2.Translation>? translations;

  @override
  _i1.Table get table => t;

  Texts copyWith({
    int? id,
    String? originalText,
    List<_i2.Translation>? translations,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'originalText': originalText,
      if (translations != null)
        'translations': translations?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'originalText': originalText,
      if (translations != null)
        'translations':
            translations?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static TextsInclude include({_i2.TranslationIncludeList? translations}) {
    return TextsInclude._(translations: translations);
  }

  static TextsIncludeList includeList({
    _i1.WhereExpressionBuilder<TextsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TextsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TextsTable>? orderByList,
    TextsInclude? include,
  }) {
    return TextsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Texts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Texts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TextsImpl extends Texts {
  _TextsImpl({
    int? id,
    required String originalText,
    List<_i2.Translation>? translations,
  }) : super._(
          id: id,
          originalText: originalText,
          translations: translations,
        );

  @override
  Texts copyWith({
    Object? id = _Undefined,
    String? originalText,
    Object? translations = _Undefined,
  }) {
    return Texts(
      id: id is int? ? id : this.id,
      originalText: originalText ?? this.originalText,
      translations: translations is List<_i2.Translation>?
          ? translations
          : this.translations?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class TextsTable extends _i1.Table {
  TextsTable({super.tableRelation}) : super(tableName: 'texts') {
    originalText = _i1.ColumnString(
      'originalText',
      this,
    );
  }

  late final _i1.ColumnString originalText;

  _i2.TranslationTable? ___translations;

  _i1.ManyRelation<_i2.TranslationTable>? _translations;

  _i2.TranslationTable get __translations {
    if (___translations != null) return ___translations!;
    ___translations = _i1.createRelationTable(
      relationFieldName: '__translations',
      field: Texts.t.id,
      foreignField: _i2.Translation.t.$_textsTranslationsTextsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TranslationTable(tableRelation: foreignTableRelation),
    );
    return ___translations!;
  }

  _i1.ManyRelation<_i2.TranslationTable> get translations {
    if (_translations != null) return _translations!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'translations',
      field: Texts.t.id,
      foreignField: _i2.Translation.t.$_textsTranslationsTextsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TranslationTable(tableRelation: foreignTableRelation),
    );
    _translations = _i1.ManyRelation<_i2.TranslationTable>(
      tableWithRelations: relationTable,
      table: _i2.TranslationTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _translations!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        originalText,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'translations') {
      return __translations;
    }
    return null;
  }
}

class TextsInclude extends _i1.IncludeObject {
  TextsInclude._({_i2.TranslationIncludeList? translations}) {
    _translations = translations;
  }

  _i2.TranslationIncludeList? _translations;

  @override
  Map<String, _i1.Include?> get includes => {'translations': _translations};

  @override
  _i1.Table get table => Texts.t;
}

class TextsIncludeList extends _i1.IncludeList {
  TextsIncludeList._({
    _i1.WhereExpressionBuilder<TextsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Texts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Texts.t;
}

class TextsRepository {
  const TextsRepository._();

  final attach = const TextsAttachRepository._();

  final attachRow = const TextsAttachRowRepository._();

  final detach = const TextsDetachRepository._();

  final detachRow = const TextsDetachRowRepository._();

  Future<List<Texts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TextsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TextsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TextsTable>? orderByList,
    _i1.Transaction? transaction,
    TextsInclude? include,
  }) async {
    return session.db.find<Texts>(
      where: where?.call(Texts.t),
      orderBy: orderBy?.call(Texts.t),
      orderByList: orderByList?.call(Texts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Texts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TextsTable>? where,
    int? offset,
    _i1.OrderByBuilder<TextsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TextsTable>? orderByList,
    _i1.Transaction? transaction,
    TextsInclude? include,
  }) async {
    return session.db.findFirstRow<Texts>(
      where: where?.call(Texts.t),
      orderBy: orderBy?.call(Texts.t),
      orderByList: orderByList?.call(Texts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Texts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    TextsInclude? include,
  }) async {
    return session.db.findById<Texts>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Texts>> insert(
    _i1.Session session,
    List<Texts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Texts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Texts> insertRow(
    _i1.Session session,
    Texts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Texts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Texts>> update(
    _i1.Session session,
    List<Texts> rows, {
    _i1.ColumnSelections<TextsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Texts>(
      rows,
      columns: columns?.call(Texts.t),
      transaction: transaction,
    );
  }

  Future<Texts> updateRow(
    _i1.Session session,
    Texts row, {
    _i1.ColumnSelections<TextsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Texts>(
      row,
      columns: columns?.call(Texts.t),
      transaction: transaction,
    );
  }

  Future<List<Texts>> delete(
    _i1.Session session,
    List<Texts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Texts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Texts> deleteRow(
    _i1.Session session,
    Texts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Texts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Texts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TextsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Texts>(
      where: where(Texts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TextsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Texts>(
      where: where?.call(Texts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class TextsAttachRepository {
  const TextsAttachRepository._();

  Future<void> translations(
    _i1.Session session,
    Texts texts,
    List<_i2.Translation> translation, {
    _i1.Transaction? transaction,
  }) async {
    if (translation.any((e) => e.id == null)) {
      throw ArgumentError.notNull('translation.id');
    }
    if (texts.id == null) {
      throw ArgumentError.notNull('texts.id');
    }

    var $translation = translation
        .map((e) => _i2.TranslationImplicit(
              e,
              $_textsTranslationsTextsId: texts.id,
            ))
        .toList();
    await session.db.update<_i2.Translation>(
      $translation,
      columns: [_i2.Translation.t.$_textsTranslationsTextsId],
      transaction: transaction,
    );
  }
}

class TextsAttachRowRepository {
  const TextsAttachRowRepository._();

  Future<void> translations(
    _i1.Session session,
    Texts texts,
    _i2.Translation translation, {
    _i1.Transaction? transaction,
  }) async {
    if (translation.id == null) {
      throw ArgumentError.notNull('translation.id');
    }
    if (texts.id == null) {
      throw ArgumentError.notNull('texts.id');
    }

    var $translation = _i2.TranslationImplicit(
      translation,
      $_textsTranslationsTextsId: texts.id,
    );
    await session.db.updateRow<_i2.Translation>(
      $translation,
      columns: [_i2.Translation.t.$_textsTranslationsTextsId],
      transaction: transaction,
    );
  }
}

class TextsDetachRepository {
  const TextsDetachRepository._();

  Future<void> translations(
    _i1.Session session,
    List<_i2.Translation> translation, {
    _i1.Transaction? transaction,
  }) async {
    if (translation.any((e) => e.id == null)) {
      throw ArgumentError.notNull('translation.id');
    }

    var $translation = translation
        .map((e) => _i2.TranslationImplicit(
              e,
              $_textsTranslationsTextsId: null,
            ))
        .toList();
    await session.db.update<_i2.Translation>(
      $translation,
      columns: [_i2.Translation.t.$_textsTranslationsTextsId],
      transaction: transaction,
    );
  }
}

class TextsDetachRowRepository {
  const TextsDetachRowRepository._();

  Future<void> translations(
    _i1.Session session,
    _i2.Translation translation, {
    _i1.Transaction? transaction,
  }) async {
    if (translation.id == null) {
      throw ArgumentError.notNull('translation.id');
    }

    var $translation = _i2.TranslationImplicit(
      translation,
      $_textsTranslationsTextsId: null,
    );
    await session.db.updateRow<_i2.Translation>(
      $translation,
      columns: [_i2.Translation.t.$_textsTranslationsTextsId],
      transaction: transaction,
    );
  }
}
