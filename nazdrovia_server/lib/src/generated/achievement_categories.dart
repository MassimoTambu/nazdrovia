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

abstract class AchievementCategory
    implements _i1.TableRow, _i1.ProtocolSerialization {
  AchievementCategory._({
    this.id,
    required this.categoryId,
    this.category,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory AchievementCategory({
    int? id,
    required int categoryId,
    _i2.Texts? category,
    int? displayOrder,
  }) = _AchievementCategoryImpl;

  factory AchievementCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return AchievementCategory(
      id: jsonSerialization['id'] as int?,
      categoryId: jsonSerialization['categoryId'] as int,
      category: jsonSerialization['category'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = AchievementCategoryTable();

  static const db = AchievementCategoryRepository._();

  @override
  int? id;

  int categoryId;

  _i2.Texts? category;

  int displayOrder;

  @override
  _i1.Table get table => t;

  AchievementCategory copyWith({
    int? id,
    int? categoryId,
    _i2.Texts? category,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJsonForProtocol(),
      'displayOrder': displayOrder,
    };
  }

  static AchievementCategoryInclude include({_i2.TextsInclude? category}) {
    return AchievementCategoryInclude._(category: category);
  }

  static AchievementCategoryIncludeList includeList({
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AchievementCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementCategoryTable>? orderByList,
    AchievementCategoryInclude? include,
  }) {
    return AchievementCategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AchievementCategory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AchievementCategory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AchievementCategoryImpl extends AchievementCategory {
  _AchievementCategoryImpl({
    int? id,
    required int categoryId,
    _i2.Texts? category,
    int? displayOrder,
  }) : super._(
          id: id,
          categoryId: categoryId,
          category: category,
          displayOrder: displayOrder,
        );

  @override
  AchievementCategory copyWith({
    Object? id = _Undefined,
    int? categoryId,
    Object? category = _Undefined,
    int? displayOrder,
  }) {
    return AchievementCategory(
      id: id is int? ? id : this.id,
      categoryId: categoryId ?? this.categoryId,
      category: category is _i2.Texts? ? category : this.category?.copyWith(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class AchievementCategoryTable extends _i1.Table {
  AchievementCategoryTable({super.tableRelation})
      : super(tableName: 'achievement_categories') {
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt categoryId;

  _i2.TextsTable? _category;

  late final _i1.ColumnInt displayOrder;

  _i2.TextsTable get category {
    if (_category != null) return _category!;
    _category = _i1.createRelationTable(
      relationFieldName: 'category',
      field: AchievementCategory.t.categoryId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _category!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        categoryId,
        displayOrder,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'category') {
      return category;
    }
    return null;
  }
}

class AchievementCategoryInclude extends _i1.IncludeObject {
  AchievementCategoryInclude._({_i2.TextsInclude? category}) {
    _category = category;
  }

  _i2.TextsInclude? _category;

  @override
  Map<String, _i1.Include?> get includes => {'category': _category};

  @override
  _i1.Table get table => AchievementCategory.t;
}

class AchievementCategoryIncludeList extends _i1.IncludeList {
  AchievementCategoryIncludeList._({
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AchievementCategory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => AchievementCategory.t;
}

class AchievementCategoryRepository {
  const AchievementCategoryRepository._();

  final attachRow = const AchievementCategoryAttachRowRepository._();

  Future<List<AchievementCategory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AchievementCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementCategoryTable>? orderByList,
    _i1.Transaction? transaction,
    AchievementCategoryInclude? include,
  }) async {
    return session.db.find<AchievementCategory>(
      where: where?.call(AchievementCategory.t),
      orderBy: orderBy?.call(AchievementCategory.t),
      orderByList: orderByList?.call(AchievementCategory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<AchievementCategory?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<AchievementCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementCategoryTable>? orderByList,
    _i1.Transaction? transaction,
    AchievementCategoryInclude? include,
  }) async {
    return session.db.findFirstRow<AchievementCategory>(
      where: where?.call(AchievementCategory.t),
      orderBy: orderBy?.call(AchievementCategory.t),
      orderByList: orderByList?.call(AchievementCategory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<AchievementCategory?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    AchievementCategoryInclude? include,
  }) async {
    return session.db.findById<AchievementCategory>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<AchievementCategory>> insert(
    _i1.Session session,
    List<AchievementCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<AchievementCategory>(
      rows,
      transaction: transaction,
    );
  }

  Future<AchievementCategory> insertRow(
    _i1.Session session,
    AchievementCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AchievementCategory>(
      row,
      transaction: transaction,
    );
  }

  Future<List<AchievementCategory>> update(
    _i1.Session session,
    List<AchievementCategory> rows, {
    _i1.ColumnSelections<AchievementCategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AchievementCategory>(
      rows,
      columns: columns?.call(AchievementCategory.t),
      transaction: transaction,
    );
  }

  Future<AchievementCategory> updateRow(
    _i1.Session session,
    AchievementCategory row, {
    _i1.ColumnSelections<AchievementCategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<AchievementCategory>(
      row,
      columns: columns?.call(AchievementCategory.t),
      transaction: transaction,
    );
  }

  Future<List<AchievementCategory>> delete(
    _i1.Session session,
    List<AchievementCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AchievementCategory>(
      rows,
      transaction: transaction,
    );
  }

  Future<AchievementCategory> deleteRow(
    _i1.Session session,
    AchievementCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AchievementCategory>(
      row,
      transaction: transaction,
    );
  }

  Future<List<AchievementCategory>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AchievementCategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AchievementCategory>(
      where: where(AchievementCategory.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AchievementCategory>(
      where: where?.call(AchievementCategory.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class AchievementCategoryAttachRowRepository {
  const AchievementCategoryAttachRowRepository._();

  Future<void> category(
    _i1.Session session,
    AchievementCategory achievementCategory,
    _i2.Texts category, {
    _i1.Transaction? transaction,
  }) async {
    if (achievementCategory.id == null) {
      throw ArgumentError.notNull('achievementCategory.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $achievementCategory =
        achievementCategory.copyWith(categoryId: category.id);
    await session.db.updateRow<AchievementCategory>(
      $achievementCategory,
      columns: [AchievementCategory.t.categoryId],
      transaction: transaction,
    );
  }
}
