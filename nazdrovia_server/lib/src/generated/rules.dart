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
import 'rule_categories.dart' as _i3;

abstract class Rule implements _i1.TableRow, _i1.ProtocolSerialization {
  Rule._({
    this.id,
    this.number,
    required this.titleId,
    this.title,
    required this.descriptionId,
    this.description,
    required this.ruleCategoryId,
    this.ruleCategory,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory Rule({
    int? id,
    String? number,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  }) = _RuleImpl;

  factory Rule.fromJson(Map<String, dynamic> jsonSerialization) {
    return Rule(
      id: jsonSerialization['id'] as int?,
      number: jsonSerialization['number'] as String?,
      titleId: jsonSerialization['titleId'] as int,
      title: jsonSerialization['title'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['title'] as Map<String, dynamic>)),
      descriptionId: jsonSerialization['descriptionId'] as int,
      description: jsonSerialization['description'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['description'] as Map<String, dynamic>)),
      ruleCategoryId: jsonSerialization['ruleCategoryId'] as int,
      ruleCategory: jsonSerialization['ruleCategory'] == null
          ? null
          : _i3.RuleCategory.fromJson(
              (jsonSerialization['ruleCategory'] as Map<String, dynamic>)),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = RuleTable();

  static const db = RuleRepository._();

  @override
  int? id;

  String? number;

  int titleId;

  _i2.Texts? title;

  int descriptionId;

  _i2.Texts? description;

  int ruleCategoryId;

  _i3.RuleCategory? ruleCategory;

  int displayOrder;

  int? _ruleCategoriesRulesRuleCategoriesId;

  @override
  _i1.Table get table => t;

  Rule copyWith({
    int? id,
    String? number,
    int? titleId,
    _i2.Texts? title,
    int? descriptionId,
    _i2.Texts? description,
    int? ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      'titleId': titleId,
      if (title != null) 'title': title?.toJson(),
      'descriptionId': descriptionId,
      if (description != null) 'description': description?.toJson(),
      'ruleCategoryId': ruleCategoryId,
      if (ruleCategory != null) 'ruleCategory': ruleCategory?.toJson(),
      'displayOrder': displayOrder,
      if (_ruleCategoriesRulesRuleCategoriesId != null)
        '_ruleCategoriesRulesRuleCategoriesId':
            _ruleCategoriesRulesRuleCategoriesId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      'titleId': titleId,
      if (title != null) 'title': title?.toJsonForProtocol(),
      'descriptionId': descriptionId,
      if (description != null) 'description': description?.toJsonForProtocol(),
      'ruleCategoryId': ruleCategoryId,
      if (ruleCategory != null)
        'ruleCategory': ruleCategory?.toJsonForProtocol(),
      'displayOrder': displayOrder,
    };
  }

  static RuleInclude include({
    _i2.TextsInclude? title,
    _i2.TextsInclude? description,
    _i3.RuleCategoryInclude? ruleCategory,
  }) {
    return RuleInclude._(
      title: title,
      description: description,
      ruleCategory: ruleCategory,
    );
  }

  static RuleIncludeList includeList({
    _i1.WhereExpressionBuilder<RuleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RuleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleTable>? orderByList,
    RuleInclude? include,
  }) {
    return RuleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Rule.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Rule.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RuleImpl extends Rule {
  _RuleImpl({
    int? id,
    String? number,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  }) : super._(
          id: id,
          number: number,
          titleId: titleId,
          title: title,
          descriptionId: descriptionId,
          description: description,
          ruleCategoryId: ruleCategoryId,
          ruleCategory: ruleCategory,
          displayOrder: displayOrder,
        );

  @override
  Rule copyWith({
    Object? id = _Undefined,
    Object? number = _Undefined,
    int? titleId,
    Object? title = _Undefined,
    int? descriptionId,
    Object? description = _Undefined,
    int? ruleCategoryId,
    Object? ruleCategory = _Undefined,
    int? displayOrder,
  }) {
    return Rule(
      id: id is int? ? id : this.id,
      number: number is String? ? number : this.number,
      titleId: titleId ?? this.titleId,
      title: title is _i2.Texts? ? title : this.title?.copyWith(),
      descriptionId: descriptionId ?? this.descriptionId,
      description: description is _i2.Texts?
          ? description
          : this.description?.copyWith(),
      ruleCategoryId: ruleCategoryId ?? this.ruleCategoryId,
      ruleCategory: ruleCategory is _i3.RuleCategory?
          ? ruleCategory
          : this.ruleCategory?.copyWith(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class RuleImplicit extends _RuleImpl {
  RuleImplicit._({
    int? id,
    String? number,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
    this.$_ruleCategoriesRulesRuleCategoriesId,
  }) : super(
          id: id,
          number: number,
          titleId: titleId,
          title: title,
          descriptionId: descriptionId,
          description: description,
          ruleCategoryId: ruleCategoryId,
          ruleCategory: ruleCategory,
          displayOrder: displayOrder,
        );

  factory RuleImplicit(
    Rule rule, {
    int? $_ruleCategoriesRulesRuleCategoriesId,
  }) {
    return RuleImplicit._(
      id: rule.id,
      number: rule.number,
      titleId: rule.titleId,
      title: rule.title,
      descriptionId: rule.descriptionId,
      description: rule.description,
      ruleCategoryId: rule.ruleCategoryId,
      ruleCategory: rule.ruleCategory,
      displayOrder: rule.displayOrder,
      $_ruleCategoriesRulesRuleCategoriesId:
          $_ruleCategoriesRulesRuleCategoriesId,
    );
  }

  int? $_ruleCategoriesRulesRuleCategoriesId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_ruleCategoriesRulesRuleCategoriesId':
          $_ruleCategoriesRulesRuleCategoriesId
    });
    return jsonMap;
  }
}

class RuleTable extends _i1.Table {
  RuleTable({super.tableRelation}) : super(tableName: 'rules') {
    number = _i1.ColumnString(
      'number',
      this,
    );
    titleId = _i1.ColumnInt(
      'titleId',
      this,
    );
    descriptionId = _i1.ColumnInt(
      'descriptionId',
      this,
    );
    ruleCategoryId = _i1.ColumnInt(
      'ruleCategoryId',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
    $_ruleCategoriesRulesRuleCategoriesId = _i1.ColumnInt(
      '_ruleCategoriesRulesRuleCategoriesId',
      this,
    );
  }

  late final _i1.ColumnString number;

  late final _i1.ColumnInt titleId;

  _i2.TextsTable? _title;

  late final _i1.ColumnInt descriptionId;

  _i2.TextsTable? _description;

  late final _i1.ColumnInt ruleCategoryId;

  _i3.RuleCategoryTable? _ruleCategory;

  late final _i1.ColumnInt displayOrder;

  late final _i1.ColumnInt $_ruleCategoriesRulesRuleCategoriesId;

  _i2.TextsTable get title {
    if (_title != null) return _title!;
    _title = _i1.createRelationTable(
      relationFieldName: 'title',
      field: Rule.t.titleId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _title!;
  }

  _i2.TextsTable get description {
    if (_description != null) return _description!;
    _description = _i1.createRelationTable(
      relationFieldName: 'description',
      field: Rule.t.descriptionId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _description!;
  }

  _i3.RuleCategoryTable get ruleCategory {
    if (_ruleCategory != null) return _ruleCategory!;
    _ruleCategory = _i1.createRelationTable(
      relationFieldName: 'ruleCategory',
      field: Rule.t.ruleCategoryId,
      foreignField: _i3.RuleCategory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RuleCategoryTable(tableRelation: foreignTableRelation),
    );
    return _ruleCategory!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        number,
        titleId,
        descriptionId,
        ruleCategoryId,
        displayOrder,
        $_ruleCategoriesRulesRuleCategoriesId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'title') {
      return title;
    }
    if (relationField == 'description') {
      return description;
    }
    if (relationField == 'ruleCategory') {
      return ruleCategory;
    }
    return null;
  }
}

class RuleInclude extends _i1.IncludeObject {
  RuleInclude._({
    _i2.TextsInclude? title,
    _i2.TextsInclude? description,
    _i3.RuleCategoryInclude? ruleCategory,
  }) {
    _title = title;
    _description = description;
    _ruleCategory = ruleCategory;
  }

  _i2.TextsInclude? _title;

  _i2.TextsInclude? _description;

  _i3.RuleCategoryInclude? _ruleCategory;

  @override
  Map<String, _i1.Include?> get includes => {
        'title': _title,
        'description': _description,
        'ruleCategory': _ruleCategory,
      };

  @override
  _i1.Table get table => Rule.t;
}

class RuleIncludeList extends _i1.IncludeList {
  RuleIncludeList._({
    _i1.WhereExpressionBuilder<RuleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Rule.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Rule.t;
}

class RuleRepository {
  const RuleRepository._();

  final attachRow = const RuleAttachRowRepository._();

  Future<List<Rule>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RuleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleTable>? orderByList,
    _i1.Transaction? transaction,
    RuleInclude? include,
  }) async {
    return session.db.find<Rule>(
      where: where?.call(Rule.t),
      orderBy: orderBy?.call(Rule.t),
      orderByList: orderByList?.call(Rule.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Rule?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleTable>? where,
    int? offset,
    _i1.OrderByBuilder<RuleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RuleTable>? orderByList,
    _i1.Transaction? transaction,
    RuleInclude? include,
  }) async {
    return session.db.findFirstRow<Rule>(
      where: where?.call(Rule.t),
      orderBy: orderBy?.call(Rule.t),
      orderByList: orderByList?.call(Rule.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Rule?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RuleInclude? include,
  }) async {
    return session.db.findById<Rule>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Rule>> insert(
    _i1.Session session,
    List<Rule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Rule>(
      rows,
      transaction: transaction,
    );
  }

  Future<Rule> insertRow(
    _i1.Session session,
    Rule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Rule>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Rule>> update(
    _i1.Session session,
    List<Rule> rows, {
    _i1.ColumnSelections<RuleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Rule>(
      rows,
      columns: columns?.call(Rule.t),
      transaction: transaction,
    );
  }

  Future<Rule> updateRow(
    _i1.Session session,
    Rule row, {
    _i1.ColumnSelections<RuleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Rule>(
      row,
      columns: columns?.call(Rule.t),
      transaction: transaction,
    );
  }

  Future<List<Rule>> delete(
    _i1.Session session,
    List<Rule> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Rule>(
      rows,
      transaction: transaction,
    );
  }

  Future<Rule> deleteRow(
    _i1.Session session,
    Rule row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Rule>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Rule>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RuleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Rule>(
      where: where(Rule.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RuleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Rule>(
      where: where?.call(Rule.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RuleAttachRowRepository {
  const RuleAttachRowRepository._();

  Future<void> title(
    _i1.Session session,
    Rule rule,
    _i2.Texts title, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }
    if (title.id == null) {
      throw ArgumentError.notNull('title.id');
    }

    var $rule = rule.copyWith(titleId: title.id);
    await session.db.updateRow<Rule>(
      $rule,
      columns: [Rule.t.titleId],
      transaction: transaction,
    );
  }

  Future<void> description(
    _i1.Session session,
    Rule rule,
    _i2.Texts description, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }
    if (description.id == null) {
      throw ArgumentError.notNull('description.id');
    }

    var $rule = rule.copyWith(descriptionId: description.id);
    await session.db.updateRow<Rule>(
      $rule,
      columns: [Rule.t.descriptionId],
      transaction: transaction,
    );
  }

  Future<void> ruleCategory(
    _i1.Session session,
    Rule rule,
    _i3.RuleCategory ruleCategory, {
    _i1.Transaction? transaction,
  }) async {
    if (rule.id == null) {
      throw ArgumentError.notNull('rule.id');
    }
    if (ruleCategory.id == null) {
      throw ArgumentError.notNull('ruleCategory.id');
    }

    var $rule = rule.copyWith(ruleCategoryId: ruleCategory.id);
    await session.db.updateRow<Rule>(
      $rule,
      columns: [Rule.t.ruleCategoryId],
      transaction: transaction,
    );
  }
}
