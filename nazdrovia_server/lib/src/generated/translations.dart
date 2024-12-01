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
import 'texts.dart' as _i2;

abstract class Translation implements _i1.TableRow, _i1.ProtocolSerialization {
  Translation._({
    this.id,
    required this.textId,
    this.text,
    required this.languageCode,
    required this.translatedText,
  });

  factory Translation({
    int? id,
    required int textId,
    _i2.Texts? text,
    required String languageCode,
    required String translatedText,
  }) = _TranslationImpl;

  factory Translation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Translation(
      id: jsonSerialization['id'] as int?,
      textId: jsonSerialization['textId'] as int,
      text: jsonSerialization['text'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['text'] as Map<String, dynamic>)),
      languageCode: jsonSerialization['languageCode'] as String,
      translatedText: jsonSerialization['translatedText'] as String,
    );
  }

  static final t = TranslationTable();

  static const db = TranslationRepository._();

  @override
  int? id;

  int textId;

  _i2.Texts? text;

  String languageCode;

  String translatedText;

  int? _textsTranslationsTextsId;

  @override
  _i1.Table get table => t;

  Translation copyWith({
    int? id,
    int? textId,
    _i2.Texts? text,
    String? languageCode,
    String? translatedText,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'textId': textId,
      if (text != null) 'text': text?.toJson(),
      'languageCode': languageCode,
      'translatedText': translatedText,
      if (_textsTranslationsTextsId != null)
        '_textsTranslationsTextsId': _textsTranslationsTextsId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'textId': textId,
      if (text != null) 'text': text?.toJsonForProtocol(),
      'languageCode': languageCode,
      'translatedText': translatedText,
    };
  }

  static TranslationInclude include({_i2.TextsInclude? text}) {
    return TranslationInclude._(text: text);
  }

  static TranslationIncludeList includeList({
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    TranslationInclude? include,
  }) {
    return TranslationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Translation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Translation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TranslationImpl extends Translation {
  _TranslationImpl({
    int? id,
    required int textId,
    _i2.Texts? text,
    required String languageCode,
    required String translatedText,
  }) : super._(
          id: id,
          textId: textId,
          text: text,
          languageCode: languageCode,
          translatedText: translatedText,
        );

  @override
  Translation copyWith({
    Object? id = _Undefined,
    int? textId,
    Object? text = _Undefined,
    String? languageCode,
    String? translatedText,
  }) {
    return Translation(
      id: id is int? ? id : this.id,
      textId: textId ?? this.textId,
      text: text is _i2.Texts? ? text : this.text?.copyWith(),
      languageCode: languageCode ?? this.languageCode,
      translatedText: translatedText ?? this.translatedText,
    );
  }
}

class TranslationImplicit extends _TranslationImpl {
  TranslationImplicit._({
    int? id,
    required int textId,
    _i2.Texts? text,
    required String languageCode,
    required String translatedText,
    this.$_textsTranslationsTextsId,
  }) : super(
          id: id,
          textId: textId,
          text: text,
          languageCode: languageCode,
          translatedText: translatedText,
        );

  factory TranslationImplicit(
    Translation translation, {
    int? $_textsTranslationsTextsId,
  }) {
    return TranslationImplicit._(
      id: translation.id,
      textId: translation.textId,
      text: translation.text,
      languageCode: translation.languageCode,
      translatedText: translation.translatedText,
      $_textsTranslationsTextsId: $_textsTranslationsTextsId,
    );
  }

  int? $_textsTranslationsTextsId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({'_textsTranslationsTextsId': $_textsTranslationsTextsId});
    return jsonMap;
  }
}

class TranslationTable extends _i1.Table {
  TranslationTable({super.tableRelation}) : super(tableName: 'translations') {
    textId = _i1.ColumnInt(
      'textId',
      this,
    );
    languageCode = _i1.ColumnString(
      'languageCode',
      this,
    );
    translatedText = _i1.ColumnString(
      'translatedText',
      this,
    );
    $_textsTranslationsTextsId = _i1.ColumnInt(
      '_textsTranslationsTextsId',
      this,
    );
  }

  late final _i1.ColumnInt textId;

  _i2.TextsTable? _text;

  late final _i1.ColumnString languageCode;

  late final _i1.ColumnString translatedText;

  late final _i1.ColumnInt $_textsTranslationsTextsId;

  _i2.TextsTable get text {
    if (_text != null) return _text!;
    _text = _i1.createRelationTable(
      relationFieldName: 'text',
      field: Translation.t.textId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _text!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        textId,
        languageCode,
        translatedText,
        $_textsTranslationsTextsId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'text') {
      return text;
    }
    return null;
  }
}

class TranslationInclude extends _i1.IncludeObject {
  TranslationInclude._({_i2.TextsInclude? text}) {
    _text = text;
  }

  _i2.TextsInclude? _text;

  @override
  Map<String, _i1.Include?> get includes => {'text': _text};

  @override
  _i1.Table get table => Translation.t;
}

class TranslationIncludeList extends _i1.IncludeList {
  TranslationIncludeList._({
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Translation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Translation.t;
}

class TranslationRepository {
  const TranslationRepository._();

  final attachRow = const TranslationAttachRowRepository._();

  Future<List<Translation>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    _i1.Transaction? transaction,
    TranslationInclude? include,
  }) async {
    return session.db.find<Translation>(
      where: where?.call(Translation.t),
      orderBy: orderBy?.call(Translation.t),
      orderByList: orderByList?.call(Translation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Translation?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? offset,
    _i1.OrderByBuilder<TranslationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TranslationTable>? orderByList,
    _i1.Transaction? transaction,
    TranslationInclude? include,
  }) async {
    return session.db.findFirstRow<Translation>(
      where: where?.call(Translation.t),
      orderBy: orderBy?.call(Translation.t),
      orderByList: orderByList?.call(Translation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Translation?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    TranslationInclude? include,
  }) async {
    return session.db.findById<Translation>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Translation>> insert(
    _i1.Session session,
    List<Translation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Translation>(
      rows,
      transaction: transaction,
    );
  }

  Future<Translation> insertRow(
    _i1.Session session,
    Translation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Translation>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Translation>> update(
    _i1.Session session,
    List<Translation> rows, {
    _i1.ColumnSelections<TranslationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Translation>(
      rows,
      columns: columns?.call(Translation.t),
      transaction: transaction,
    );
  }

  Future<Translation> updateRow(
    _i1.Session session,
    Translation row, {
    _i1.ColumnSelections<TranslationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Translation>(
      row,
      columns: columns?.call(Translation.t),
      transaction: transaction,
    );
  }

  Future<List<Translation>> delete(
    _i1.Session session,
    List<Translation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Translation>(
      rows,
      transaction: transaction,
    );
  }

  Future<Translation> deleteRow(
    _i1.Session session,
    Translation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Translation>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Translation>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TranslationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Translation>(
      where: where(Translation.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TranslationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Translation>(
      where: where?.call(Translation.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class TranslationAttachRowRepository {
  const TranslationAttachRowRepository._();

  Future<void> text(
    _i1.Session session,
    Translation translation,
    _i2.Texts text, {
    _i1.Transaction? transaction,
  }) async {
    if (translation.id == null) {
      throw ArgumentError.notNull('translation.id');
    }
    if (text.id == null) {
      throw ArgumentError.notNull('text.id');
    }

    var $translation = translation.copyWith(textId: text.id);
    await session.db.updateRow<Translation>(
      $translation,
      columns: [Translation.t.textId],
      transaction: transaction,
    );
  }
}
