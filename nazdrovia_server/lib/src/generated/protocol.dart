/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'achievement_categories.dart' as _i3;
import 'achievements.dart' as _i4;
import 'achievements_obtained.dart' as _i5;
import 'players.dart' as _i6;
import 'rule_categories.dart' as _i7;
import 'rules.dart' as _i8;
import 'protocol.dart' as _i9;
import 'package:nazdrovia_server/src/generated/achievements.dart' as _i10;
import 'package:nazdrovia_server/src/generated/players.dart' as _i11;
import 'package:nazdrovia_server/src/generated/rule_categories.dart' as _i12;
export 'achievement_categories.dart';
export 'achievements.dart';
export 'achievements_obtained.dart';
export 'players.dart';
export 'rule_categories.dart';
export 'rules.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'achievement_categories',
      dartName: 'AchievementCategory',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'achievement_categories_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'category',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'displayOrder',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'achievement_categories_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'achievements',
      dartName: 'Achievement',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'achievements_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'nasScore',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'categoryId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'displayOrder',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'achievements_fk_0',
          columns: ['categoryId'],
          referenceTable: 'achievement_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'achievements_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'completed_achievements',
      dartName: 'CompletedAchievements',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'completed_achievements_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'playerId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'achievementId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'completed_achievements_fk_0',
          columns: ['playerId'],
          referenceTable: 'players',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'completed_achievements_fk_1',
          columns: ['achievementId'],
          referenceTable: 'achievements',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'completed_achievements_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'enrollment_index_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'playerId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'achievementId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'players',
      dartName: 'Player',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'players_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'catchPhrase',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'penalities',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isOut',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'players_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'rule_categories',
      dartName: 'RuleCategory',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'rule_categories_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'prologue',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'epilogue',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'displayOrder',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'rule_categories_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'rules',
      dartName: 'Rule',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'rules_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'number',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'ruleCategoryId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'displayOrder',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '0',
        ),
        _i2.ColumnDefinition(
          name: '_ruleCategoriesRulesRuleCategoriesId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'rules_fk_0',
          columns: ['ruleCategoryId'],
          referenceTable: 'rule_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rules_fk_1',
          columns: ['_ruleCategoriesRulesRuleCategoriesId'],
          referenceTable: 'rule_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'rules_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.AchievementCategory) {
      return _i3.AchievementCategory.fromJson(data) as T;
    }
    if (t == _i4.Achievement) {
      return _i4.Achievement.fromJson(data) as T;
    }
    if (t == _i5.CompletedAchievements) {
      return _i5.CompletedAchievements.fromJson(data) as T;
    }
    if (t == _i6.Player) {
      return _i6.Player.fromJson(data) as T;
    }
    if (t == _i7.RuleCategory) {
      return _i7.RuleCategory.fromJson(data) as T;
    }
    if (t == _i8.Rule) {
      return _i8.Rule.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.AchievementCategory?>()) {
      return (data != null ? _i3.AchievementCategory.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i4.Achievement?>()) {
      return (data != null ? _i4.Achievement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.CompletedAchievements?>()) {
      return (data != null ? _i5.CompletedAchievements.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Player?>()) {
      return (data != null ? _i6.Player.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.RuleCategory?>()) {
      return (data != null ? _i7.RuleCategory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Rule?>()) {
      return (data != null ? _i8.Rule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i9.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i9.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i9.Rule>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i9.Rule>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i10.Achievement>) {
      return (data as List)
          .map((e) => deserialize<_i10.Achievement>(e))
          .toList() as dynamic;
    }
    if (t == List<_i11.Player>) {
      return (data as List).map((e) => deserialize<_i11.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i12.RuleCategory>) {
      return (data as List)
          .map((e) => deserialize<_i12.RuleCategory>(e))
          .toList() as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.AchievementCategory) {
      return 'AchievementCategory';
    }
    if (data is _i4.Achievement) {
      return 'Achievement';
    }
    if (data is _i5.CompletedAchievements) {
      return 'CompletedAchievements';
    }
    if (data is _i6.Player) {
      return 'Player';
    }
    if (data is _i7.RuleCategory) {
      return 'RuleCategory';
    }
    if (data is _i8.Rule) {
      return 'Rule';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AchievementCategory') {
      return deserialize<_i3.AchievementCategory>(data['data']);
    }
    if (data['className'] == 'Achievement') {
      return deserialize<_i4.Achievement>(data['data']);
    }
    if (data['className'] == 'CompletedAchievements') {
      return deserialize<_i5.CompletedAchievements>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i6.Player>(data['data']);
    }
    if (data['className'] == 'RuleCategory') {
      return deserialize<_i7.RuleCategory>(data['data']);
    }
    if (data['className'] == 'Rule') {
      return deserialize<_i8.Rule>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.AchievementCategory:
        return _i3.AchievementCategory.t;
      case _i4.Achievement:
        return _i4.Achievement.t;
      case _i5.CompletedAchievements:
        return _i5.CompletedAchievements.t;
      case _i6.Player:
        return _i6.Player.t;
      case _i7.RuleCategory:
        return _i7.RuleCategory.t;
      case _i8.Rule:
        return _i8.Rule.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'nazdrovia';
}
