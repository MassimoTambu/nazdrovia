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
import 'package:serverpod/protocol.dart' as _i2;
import 'achievement_categories.dart' as _i3;
import 'achievements.dart' as _i4;
import 'completed_achievements.dart' as _i5;
import 'players.dart' as _i6;
import 'rule_categories.dart' as _i7;
import 'rules.dart' as _i8;
import 'texts.dart' as _i9;
import 'translations.dart' as _i10;
import 'package:nazdrovia_server/src/generated/achievement_categories.dart'
    as _i11;
import 'package:nazdrovia_server/src/generated/achievements.dart' as _i12;
import 'package:nazdrovia_server/src/generated/players.dart' as _i13;
import 'package:nazdrovia_server/src/generated/rule_categories.dart' as _i14;
import 'package:nazdrovia_server/src/generated/texts.dart' as _i15;
export 'achievement_categories.dart';
export 'achievements.dart';
export 'completed_achievements.dart';
export 'players.dart';
export 'rule_categories.dart';
export 'rules.dart';
export 'texts.dart';
export 'translations.dart';

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
          name: 'categoryId',
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
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'achievement_categories_fk_0',
          columns: ['categoryId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        )
      ],
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
        ),
        _i2.IndexDefinition(
          indexName: 'achievement_categories_category_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'categoryId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
          name: 'titleId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'descriptionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
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
          columns: ['titleId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'achievements_fk_1',
          columns: ['descriptionId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'achievements_fk_2',
          columns: ['categoryId'],
          referenceTable: 'achievement_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
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
        ),
        _i2.IndexDefinition(
          indexName: 'achievements_title_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'titleId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'achievements_description_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'descriptionId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'achievements_category_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'categoryId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
          indexName: 'completed_achievements_enrollment_idx',
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
          name: 'titleId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'prologueId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'epilogueId',
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
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'rule_categories_fk_0',
          columns: ['titleId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rule_categories_fk_1',
          columns: ['prologueId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rule_categories_fk_2',
          columns: ['epilogueId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
      ],
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
        ),
        _i2.IndexDefinition(
          indexName: 'rule_categories_title_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'titleId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'rule_categories_prologue_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'prologueId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'rule_categories_epilogue_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'epilogueId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
          name: 'titleId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'descriptionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
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
          columns: ['titleId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rules_fk_1',
          columns: ['descriptionId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rules_fk_2',
          columns: ['ruleCategoryId'],
          referenceTable: 'rule_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rules_fk_3',
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
        ),
        _i2.IndexDefinition(
          indexName: 'rules_title_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'titleId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'rules_description_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'descriptionId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'texts',
      dartName: 'Texts',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'texts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'originalText',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'texts_pkey',
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
      name: 'translations',
      dartName: 'Translation',
      schema: 'public',
      module: 'nazdrovia',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'translations_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'textId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'languageCode',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'translatedText',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: '_textsTranslationsTextsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'translations_fk_0',
          columns: ['textId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'translations_fk_1',
          columns: ['_textsTranslationsTextsId'],
          referenceTable: 'texts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'translations_pkey',
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
          indexName: 'translations_text_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'textId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'translations_language_code_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'languageCode',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
    if (t == _i9.Texts) {
      return _i9.Texts.fromJson(data) as T;
    }
    if (t == _i10.Translation) {
      return _i10.Translation.fromJson(data) as T;
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
    if (t == _i1.getType<_i9.Texts?>()) {
      return (data != null ? _i9.Texts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Translation?>()) {
      return (data != null ? _i10.Translation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i4.Achievement>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.Achievement>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i5.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i5.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i5.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i5.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Rule>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Rule>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i10.Translation>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i10.Translation>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i11.AchievementCategory>) {
      return (data as List)
          .map((e) => deserialize<_i11.AchievementCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i12.Achievement>) {
      return (data as List)
          .map((e) => deserialize<_i12.Achievement>(e))
          .toList() as dynamic;
    }
    if (t == List<_i13.Player>) {
      return (data as List).map((e) => deserialize<_i13.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.RuleCategory>) {
      return (data as List)
          .map((e) => deserialize<_i14.RuleCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i15.Texts>) {
      return (data as List).map((e) => deserialize<_i15.Texts>(e)).toList()
          as dynamic;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
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
    if (data is _i9.Texts) {
      return 'Texts';
    }
    if (data is _i10.Translation) {
      return 'Translation';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'AchievementCategory') {
      return deserialize<_i3.AchievementCategory>(data['data']);
    }
    if (dataClassName == 'Achievement') {
      return deserialize<_i4.Achievement>(data['data']);
    }
    if (dataClassName == 'CompletedAchievements') {
      return deserialize<_i5.CompletedAchievements>(data['data']);
    }
    if (dataClassName == 'Player') {
      return deserialize<_i6.Player>(data['data']);
    }
    if (dataClassName == 'RuleCategory') {
      return deserialize<_i7.RuleCategory>(data['data']);
    }
    if (dataClassName == 'Rule') {
      return deserialize<_i8.Rule>(data['data']);
    }
    if (dataClassName == 'Texts') {
      return deserialize<_i9.Texts>(data['data']);
    }
    if (dataClassName == 'Translation') {
      return deserialize<_i10.Translation>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
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
      case _i9.Texts:
        return _i9.Texts.t;
      case _i10.Translation:
        return _i10.Translation.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'nazdrovia';
}
