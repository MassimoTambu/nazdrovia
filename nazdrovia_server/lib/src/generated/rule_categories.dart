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
import 'rules.dart' as _i3;

abstract class RuleCategory implements _i1.TableRow, _i1.ProtocolSerialization {
  RuleCategory._({
    this.id,
    required this.titleId,
    this.title,
    required this.prologueId,
    this.prologue,
    required this.epilogueId,
    this.epilogue,
    this.rules,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory RuleCategory({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int prologueId,
    _i2.Texts? prologue,
    required int epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  }) = _RuleCategoryImpl;

  factory RuleCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return RuleCategory(
      id: jsonSerialization['id'] as int?,
      titleId: jsonSerialization['titleId'] as int,
      title: jsonSerialization['title'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['title'] as Map<String, dynamic>)),
      prologueId: jsonSerialization['prologueId'] as int,
      prologue: jsonSerialization['prologue'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['prologue'] as Map<String, dynamic>)),
      epilogueId: jsonSerialization['epilogueId'] as int,
      epilogue: jsonSerialization['epilogue'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['epilogue'] as Map<String, dynamic>)),
      rules: (jsonSerialization['rules'] as List?)
          ?.map((e) => _i3.Rule.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = RuleCategoryTable();

  static const db = RuleCategoryRepository._();

  @override
  int? id;

  int titleId;

  _i2.Texts? title;

  int prologueId;

  _i2.Texts? prologue;

  int epilogueId;

  _i2.Texts? epilogue;

  List<_i3.Rule>? rules;

  int displayOrder;

  @override
  _i1.Table get table => t;

  RuleCategory copyWith({
    int? id,
    int? titleId,
    _i2.Texts? title,
    int? prologueId,
    _i2.Texts? prologue,
    int? epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'titleId': titleId,
      if (title != null) 'title': title?.toJson(),
      'prologueId': prologueId,
      if (prologue != null) 'prologue': prologue?.toJson(),
      'epilogueId': epilogueId,
      if (epilogue != null) 'epilogue': epilogue?.toJson(),
      if (rules != null) 'rules': rules?.toJson(valueToJson: (v) => v.toJson()),
      'displayOrder': displayOrder,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'titleId': titleId,
      if (title != null) 'title': title?.toJsonForProtocol(),
      'prologueId': prologueId,
      if (prologue != null) 'prologue': prologue?.toJsonForProtocol(),
      'epilogueId': epilogueId,
      if (epilogue != null) 'epilogue': epilogue?.toJsonForProtocol(),
      if (rules != null)
        'rules': rules?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'displayOrder': displayOrder,
    };
  }

  static RuleCategoryInclude include({
    _i2.TextsInclude? title,
    _i2.TextsInclude? prologue,
    _i2.TextsInclude? epilogue,
    _i3.RuleIncludeList? rules,
  }) {
    return RuleCategoryInclude._(
      title: title,
      prologue: prologue,
      epilogue: epilogue,
      rules: rules,
    );
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
    required int titleId,
    _i2.Texts? title,
    required int prologueId,
    _i2.Texts? prologue,
    required int epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  }) : super._(
          id: id,
          titleId: titleId,
          title: title,
          prologueId: prologueId,
          prologue: prologue,
          epilogueId: epilogueId,
          epilogue: epilogue,
          rules: rules,
          displayOrder: displayOrder,
        );

  @override
  RuleCategory copyWith({
    Object? id = _Undefined,
    int? titleId,
    Object? title = _Undefined,
    int? prologueId,
    Object? prologue = _Undefined,
    int? epilogueId,
    Object? epilogue = _Undefined,
    Object? rules = _Undefined,
    int? displayOrder,
  }) {
    return RuleCategory(
      id: id is int? ? id : this.id,
      titleId: titleId ?? this.titleId,
      title: title is _i2.Texts? ? title : this.title?.copyWith(),
      prologueId: prologueId ?? this.prologueId,
      prologue: prologue is _i2.Texts? ? prologue : this.prologue?.copyWith(),
      epilogueId: epilogueId ?? this.epilogueId,
      epilogue: epilogue is _i2.Texts? ? epilogue : this.epilogue?.copyWith(),
      rules: rules is List<_i3.Rule>?
          ? rules
          : this.rules?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class RuleCategoryTable extends _i1.Table {
  RuleCategoryTable({super.tableRelation})
      : super(tableName: 'rule_categories') {
    titleId = _i1.ColumnInt(
      'titleId',
      this,
    );
    prologueId = _i1.ColumnInt(
      'prologueId',
      this,
    );
    epilogueId = _i1.ColumnInt(
      'epilogueId',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt titleId;

  _i2.TextsTable? _title;

  late final _i1.ColumnInt prologueId;

  _i2.TextsTable? _prologue;

  late final _i1.ColumnInt epilogueId;

  _i2.TextsTable? _epilogue;

  _i3.RuleTable? ___rules;

  _i1.ManyRelation<_i3.RuleTable>? _rules;

  late final _i1.ColumnInt displayOrder;

  _i2.TextsTable get title {
    if (_title != null) return _title!;
    _title = _i1.createRelationTable(
      relationFieldName: 'title',
      field: RuleCategory.t.titleId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _title!;
  }

  _i2.TextsTable get prologue {
    if (_prologue != null) return _prologue!;
    _prologue = _i1.createRelationTable(
      relationFieldName: 'prologue',
      field: RuleCategory.t.prologueId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _prologue!;
  }

  _i2.TextsTable get epilogue {
    if (_epilogue != null) return _epilogue!;
    _epilogue = _i1.createRelationTable(
      relationFieldName: 'epilogue',
      field: RuleCategory.t.epilogueId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _epilogue!;
  }

  _i3.RuleTable get __rules {
    if (___rules != null) return ___rules!;
    ___rules = _i1.createRelationTable(
      relationFieldName: '__rules',
      field: RuleCategory.t.id,
      foreignField: _i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RuleTable(tableRelation: foreignTableRelation),
    );
    return ___rules!;
  }

  _i1.ManyRelation<_i3.RuleTable> get rules {
    if (_rules != null) return _rules!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'rules',
      field: RuleCategory.t.id,
      foreignField: _i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RuleTable(tableRelation: foreignTableRelation),
    );
    _rules = _i1.ManyRelation<_i3.RuleTable>(
      tableWithRelations: relationTable,
      table: _i3.RuleTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _rules!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        titleId,
        prologueId,
        epilogueId,
        displayOrder,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'title') {
      return title;
    }
    if (relationField == 'prologue') {
      return prologue;
    }
    if (relationField == 'epilogue') {
      return epilogue;
    }
    if (relationField == 'rules') {
      return __rules;
    }
    return null;
  }
}

class RuleCategoryInclude extends _i1.IncludeObject {
  RuleCategoryInclude._({
    _i2.TextsInclude? title,
    _i2.TextsInclude? prologue,
    _i2.TextsInclude? epilogue,
    _i3.RuleIncludeList? rules,
  }) {
    _title = title;
    _prologue = prologue;
    _epilogue = epilogue;
    _rules = rules;
  }

  _i2.TextsInclude? _title;

  _i2.TextsInclude? _prologue;

  _i2.TextsInclude? _epilogue;

  _i3.RuleIncludeList? _rules;

  @override
  Map<String, _i1.Include?> get includes => {
        'title': _title,
        'prologue': _prologue,
        'epilogue': _epilogue,
        'rules': _rules,
      };

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
      transaction: transaction,
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
      transaction: transaction,
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
      transaction: transaction,
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
      transaction: transaction,
    );
  }

  Future<RuleCategory> insertRow(
    _i1.Session session,
    RuleCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RuleCategory>(
      row,
      transaction: transaction,
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
      transaction: transaction,
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
      transaction: transaction,
    );
  }

  Future<List<RuleCategory>> delete(
    _i1.Session session,
    List<RuleCategory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RuleCategory>(
      rows,
      transaction: transaction,
    );
  }

  Future<RuleCategory> deleteRow(
    _i1.Session session,
    RuleCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RuleCategory>(
      row,
      transaction: transaction,
    );
  }

  Future<List<RuleCategory>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RuleCategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RuleCategory>(
      where: where(RuleCategory.t),
      transaction: transaction,
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
      transaction: transaction,
    );
  }
}

class RuleCategoryAttachRepository {
  const RuleCategoryAttachRepository._();

  Future<void> rules(
    _i1.Session session,
    RuleCategory ruleCategory,
    List<_i3.Rule> rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.any((e) => e.id == null)) {
      throw ArgumentError.notNull('rule.id');
    }
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }

    var $rule = rule
        .map((e) => _i3.RuleImplicit(
              e,
              $_ruleCategoriesRulesRuleCategoriesId: ruleCategory.id,
            ))
        .toList();
    await session.db.update<_i3.Rule>(
      $rule,
      columns: [_i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction,
    );
  }
}

class RuleCategoryAttachRowRepository {
  const RuleCategoryAttachRowRepository._();

  Future<void> title(
    _i1.Session session,
    RuleCategory ruleCategory,
    _i2.Texts title, {
    _i1.Transaction? transaction,
  }) async {
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }
    if (title.id == null) {
      throw ArgumentError.notNull('title.id');
    }

    var $ruleCategory = ruleCategory.copyWith(titleId: title.id);
    await session.db.updateRow<RuleCategory>(
      $ruleCategory,
      columns: [RuleCategory.t.titleId],
      transaction: transaction,
    );
  }

  Future<void> prologue(
    _i1.Session session,
    RuleCategory ruleCategory,
    _i2.Texts prologue, {
    _i1.Transaction? transaction,
  }) async {
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }
    if (prologue.id == null) {
      throw ArgumentError.notNull('prologue.id');
    }

    var $ruleCategory = ruleCategory.copyWith(prologueId: prologue.id);
    await session.db.updateRow<RuleCategory>(
      $ruleCategory,
      columns: [RuleCategory.t.prologueId],
      transaction: transaction,
    );
  }

  Future<void> epilogue(
    _i1.Session session,
    RuleCategory ruleCategory,
    _i2.Texts epilogue, {
    _i1.Transaction? transaction,
  }) async {
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }
    if (epilogue.id == null) {
      throw ArgumentError.notNull('epilogue.id');
    }

    var $ruleCategory = ruleCategory.copyWith(epilogueId: epilogue.id);
    await session.db.updateRow<RuleCategory>(
      $ruleCategory,
      columns: [RuleCategory.t.epilogueId],
      transaction: transaction,
    );
  }

  Future<void> rules(
    _i1.Session session,
    RuleCategory ruleCategory,
    _i3.Rule rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }

    var $rule = _i3.RuleImplicit(
      rule,
      $_ruleCategoriesRulesRuleCategoriesId: ruleCategory.id,
    );
    await session.db.updateRow<_i3.Rule>(
      $rule,
      columns: [_i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction,
    );
  }
}

class RuleCategoryDetachRepository {
  const RuleCategoryDetachRepository._();

  Future<void> rules(
    _i1.Session session,
    List<_i3.Rule> rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.any((e) => e.id == null)) {
      throw ArgumentError.notNull('rule.id');
    }

    var $rule = rule
        .map((e) => _i3.RuleImplicit(
              e,
              $_ruleCategoriesRulesRuleCategoriesId: null,
            ))
        .toList();
    await session.db.update<_i3.Rule>(
      $rule,
      columns: [_i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction,
    );
  }
}

class RuleCategoryDetachRowRepository {
  const RuleCategoryDetachRowRepository._();

  Future<void> rules(
    _i1.Session session,
    _i3.Rule rule, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }

    var $rule = _i3.RuleImplicit(
      rule,
      $_ruleCategoriesRulesRuleCategoriesId: null,
    );
    await session.db.updateRow<_i3.Rule>(
      $rule,
      columns: [_i3.Rule.t.$_ruleCategoriesRulesRuleCategoriesId],
      transaction: transaction,
    );
  }
}
