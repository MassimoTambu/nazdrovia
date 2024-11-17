/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class AchievementCategory
    implements _i1.TableRow, _i1.ProtocolSerialization {
  AchievementCategory._({
    this.id,
    required this.category,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory AchievementCategory({
    int? id,
    required String category,
    int? displayOrder,
  }) = _AchievementCategoryImpl;

  factory AchievementCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return AchievementCategory(
      id: jsonSerialization['id'] as int?,
      category: jsonSerialization['category'] as String,
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = AchievementCategoryTable();

  static const db = AchievementCategoryRepository._();

  @override
  int? id;

  String category;

  int displayOrder;

  @override
  _i1.Table get table => t;

  AchievementCategory copyWith({
    int? id,
    String? category,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'category': category,
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'category': category,
      'displayOrder': displayOrder,
    };
  }

  static AchievementCategoryInclude include() {
    return AchievementCategoryInclude._();
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
    required String category,
    int? displayOrder,
  }) : super._(
          id: id,
          category: category,
          displayOrder: displayOrder,
        );

  @override
  AchievementCategory copyWith({
    Object? id = _Undefined,
    String? category,
    int? displayOrder,
  }) {
    return AchievementCategory(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class AchievementCategoryTable extends _i1.Table {
  AchievementCategoryTable({super.tableRelation})
      : super(tableName: 'achievement_categories') {
    category = _i1.ColumnString(
      'category',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnString category;

  late final _i1.ColumnInt displayOrder;

  @override
  List<_i1.Column> get columns => [
        id,
        category,
        displayOrder,
      ];
}

class AchievementCategoryInclude extends _i1.IncludeObject {
  AchievementCategoryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

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

  Future<List<AchievementCategory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementCategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AchievementCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementCategoryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AchievementCategory>(
      where: where?.call(AchievementCategory.t),
      orderBy: orderBy?.call(AchievementCategory.t),
      orderByList: orderByList?.call(AchievementCategory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
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
  }) async {
    return session.db.findFirstRow<AchievementCategory>(
      where: where?.call(AchievementCategory.t),
      orderBy: orderBy?.call(AchievementCategory.t),
      orderByList: orderByList?.call(AchievementCategory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AchievementCategory?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<AchievementCategory>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AchievementCategory>> insert(
    _i1.Session session,
    List<AchievementCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<AchievementCategory>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AchievementCategory> insertRow(
    _i1.Session session,
    AchievementCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AchievementCategory>(
      row,
      transaction: transaction ?? session.transaction,
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
      transaction: transaction ?? session.transaction,
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
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AchievementCategory>> delete(
    _i1.Session session,
    List<AchievementCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AchievementCategory>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AchievementCategory> deleteRow(
    _i1.Session session,
    AchievementCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AchievementCategory>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AchievementCategory>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AchievementCategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AchievementCategory>(
      where: where(AchievementCategory.t),
      transaction: transaction ?? session.transaction,
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
      transaction: transaction ?? session.transaction,
    );
  }
}
