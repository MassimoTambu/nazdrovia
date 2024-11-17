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
import 'protocol.dart' as _i2;

abstract class RuleCategory implements _i1.TableRow, _i1.ProtocolSerialization {
  RuleCategory._({
    this.id,
    required this.title,
    this.prologue,
    this.epilogue,
    this.rules,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory RuleCategory({
    int? id,
    required String title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  }) = _RuleCategoryImpl;

  factory RuleCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return RuleCategory(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      prologue: jsonSerialization['prologue'] as String?,
      epilogue: jsonSerialization['epilogue'] as String?,
      rules: (jsonSerialization['rules'] as List?)
          ?.map((e) => _i2.Rule.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = RuleCategoryTable();

  static const db = RuleCategoryRepository._();

  @override
  int? id;

  String title;

  String? prologue;

  String? epilogue;

  List<_i2.Rule>? rules;

  int displayOrder;

  @override
  _i1.Table get table => t;

  RuleCategory copyWith({
    int? id,
    String? title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (prologue != null) 'prologue': prologue,
      if (epilogue != null) 'epilogue': epilogue,
      if (rules != null) 'rules': rules?.toJson(valueToJson: (v) => v.toJson()),
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (prologue != null) 'prologue': prologue,
      if (epilogue != null) 'epilogue': epilogue,
      if (rules != null)
        'rules': rules?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'displayOrder': displayOrder,
    };
  }

  static RuleCategoryInclude include({_i2.RuleIncludeList? rules}) {
    return RuleCategoryInclude._(rules: rules);
  }

  static RuleCategoryIncludeList includeList({
    _i1.WhereExpressionBuilder<RuleCategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RuleCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleCategoryTable>? orderByList,
    RuleCategoryInclude? include,
  }) {
    return RuleCategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RuleCategory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RuleCategory.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RuleCategoryImpl extends RuleCategory {
  _RuleCategoryImpl({
    int? id,
    required String title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  }) : super._(
          id: id,
          title: title,
          prologue: prologue,
          epilogue: epilogue,
          rules: rules,
          displayOrder: displayOrder,
        );

  @override
  RuleCategory copyWith({
    Object? id = _Undefined,
    String? title,
    Object? prologue = _Undefined,
    Object? epilogue = _Undefined,
    Object? rules = _Undefined,
    int? displayOrder,
  }) {
    return RuleCategory(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      prologue: prologue is String? ? prologue : this.prologue,
      epilogue: epilogue is String? ? epilogue : this.epilogue,
      rules: rules is List<_i2.Rule>?
          ? rules
          : this.rules?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class RuleCategoryTable extends _i1.Table {
  RuleCategoryTable({super.tableRelation})
      : super(tableName: 'rule_categories') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    prologue = _i1.ColumnString(
      'prologue',
      this,
    );
    epilogue = _i1.ColumnString(
      'epilogue',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString prologue;

  late final _i1.ColumnString epilogue;

  _i2.RuleTable? ___rules;

  _i1.ManyRelation<_i2.RuleTable>? _rules;

  late final _i1.ColumnInt displayOrder;

  _i2.RuleTable get __rules {
    if (___rules != null) return ___rules!;
    ___rules = _i1.createRelationTable(
      relationFieldName: '__rules',
      field: RuleCategory.t.id,
      foreignField: _i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RuleTable(tableRelation: foreignTableRelation),
    );
    return ___rules!;
  }

  _i1.ManyRelation<_i2.RuleTable> get rules {
    if (_rules != null) return _rules!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'rules',
      field: RuleCategory.t.id,
      foreignField: _i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RuleTable(tableRelation: foreignTableRelation),
    );
    _rules = _i1.ManyRelation<_i2.RuleTable>(
      tableWithRelations: relationTable,
      table: _i2.RuleTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _rules!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        prologue,
        epilogue,
        displayOrder,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'rules') {
      return __rules;
    }
    return null;
  }
}

class RuleCategoryInclude extends _i1.IncludeObject {
  RuleCategoryInclude._({_i2.RuleIncludeList? rules}) {
    _rules = rules;
  }

  _i2.RuleIncludeList? _rules;

  @override
  Map<String, _i1.Include?> get includes => {'rules': _rules};

  @override
  _i1.Table get table => RuleCategory.t;
}

class RuleCategoryIncludeList extends _i1.IncludeList {
  RuleCategoryIncludeList._({
    _i1.WhereExpressionBuilder<RuleCategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RuleCategory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RuleCategory.t;
}

class RuleCategoryRepository {
  const RuleCategoryRepository._();

  final attach = const RuleCategoryAttachRepository._();

  final attachRow = const RuleCategoryAttachRowRepository._();

  final detach = const RuleCategoryDetachRepository._();

  final detachRow = const RuleCategoryDetachRowRepository._();

  Future<List<RuleCategory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleCategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RuleCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleCategoryTable>? orderByList,
    _i1.Transaction? transaction,
    RuleCategoryInclude? include,
  }) async {
    return session.db.find<RuleCategory>(
      where: where?.call(RuleCategory.t),
      orderBy: orderBy?.call(RuleCategory.t),
      orderByList: orderByList?.call(RuleCategory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<RuleCategory?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleCategoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<RuleCategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleCategoryTable>? orderByList,
    _i1.Transaction? transaction,
    RuleCategoryInclude? include,
  }) async {
    return session.db.findFirstRow<RuleCategory>(
      where: where?.call(RuleCategory.t),
      orderBy: orderBy?.call(RuleCategory.t),
      orderByList: orderByList?.call(RuleCategory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<RuleCategory?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RuleCategoryInclude? include,
  }) async {
    return session.db.findById<RuleCategory>(
      id,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<List<RuleCategory>> insert(
    _i1.Session session,
    List<RuleCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<RuleCategory>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<RuleCategory> insertRow(
    _i1.Session session,
    RuleCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RuleCategory>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<RuleCategory>> update(
    _i1.Session session,
    List<RuleCategory> rows, {
    _i1.ColumnSelections<RuleCategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RuleCategory>(
      rows,
      columns: columns?.call(RuleCategory.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<RuleCategory> updateRow(
    _i1.Session session,
    RuleCategory row, {
    _i1.ColumnSelections<RuleCategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RuleCategory>(
      row,
      columns: columns?.call(RuleCategory.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<RuleCategory>> delete(
    _i1.Session session,
    List<RuleCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RuleCategory>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<RuleCategory> deleteRow(
    _i1.Session session,
    RuleCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RuleCategory>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<RuleCategory>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RuleCategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RuleCategory>(
      where: where(RuleCategory.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleCategoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RuleCategory>(
      where: where?.call(RuleCategory.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}

class RuleCategoryAttachRepository {
  const RuleCategoryAttachRepository._();

  Future<void> rules(
    _i1.Session session,
    RuleCategory ruleCategory,
    List<_i2.Rule> rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.any((e) => e.id == null)) {
      throw ArgumentError.notNull('rule.id');
    }
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }

    var $rule = rule
        .map((e) => _i2.RuleImplicit(
              e,
              $_ruleCategoriesRulesRuleCategoriesId: ruleCategory.id,
            ))
        .toList();
    await session.db.update<_i2.Rule>(
      $rule,
      columns: [_i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction ?? session.transaction,
    );
  }
}

class RuleCategoryAttachRowRepository {
  const RuleCategoryAttachRowRepository._();

  Future<void> rules(
    _i1.Session session,
    RuleCategory ruleCategory,
    _i2.Rule rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }

    var $rule = _i2.RuleImplicit(
      rule,
      $_ruleCategoriesRulesRuleCategoriesId: ruleCategory.id,
    );
    await session.db.updateRow<_i2.Rule>(
      $rule,
      columns: [_i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction ?? session.transaction,
    );
  }
}

class RuleCategoryDetachRepository {
  const RuleCategoryDetachRepository._();

  Future<void> rules(
    _i1.Session session,
    List<_i2.Rule> rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.any((e) => e.id == null)) {
      throw ArgumentError.notNull('rule.id');
    }

    var $rule = rule
        .map((e) => _i2.RuleImplicit(
              e,
              $_ruleCategoriesRulesRuleCategoriesId: null,
            ))
        .toList();
    await session.db.update<_i2.Rule>(
      $rule,
      columns: [_i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction ?? session.transaction,
    );
  }
}

class RuleCategoryDetachRowRepository {
  const RuleCategoryDetachRowRepository._();

  Future<void> rules(
    _i1.Session session,
    _i2.Rule rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }

    var $rule = _i2.RuleImplicit(
      rule,
      $_ruleCategoriesRulesRuleCategoriesId: null,
    );
    await session.db.updateRow<_i2.Rule>(
      $rule,
      columns: [_i2.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction ?? session.transaction,
    );
  }
}
