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
import 'achievement_categories.dart' as _i3;
import 'achievements_obtained.dart' as _i4;

abstract class Achievement implements _i1.TableRow, _i1.ProtocolSerialization {
  Achievement._({
    this.id,
    required this.titleId,
    this.title,
    required this.descriptionId,
    this.description,
    required this.nasScore,
    required this.categoryId,
    this.category,
    this.image,
    this.playersWithAchievement,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory Achievement({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int nasScore,
    required int categoryId,
    _i3.AchievementCategory? category,
    String? image,
    List<_i4.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  }) = _AchievementImpl;

  factory Achievement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Achievement(
      id: jsonSerialization['id'] as int?,
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
      nasScore: jsonSerialization['nasScore'] as int,
      categoryId: jsonSerialization['categoryId'] as int,
      category: jsonSerialization['category'] == null
          ? null
          : _i3.AchievementCategory.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      image: jsonSerialization['image'] as String?,
      playersWithAchievement: (jsonSerialization['playersWithAchievement']
              as List?)
          ?.map((e) =>
              _i4.CompletedAchievements.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  static final t = AchievementTable();

  static const db = AchievementRepository._();

  @override
  int? id;

  int titleId;

  _i2.Texts? title;

  int descriptionId;

  _i2.Texts? description;

  int nasScore;

  int categoryId;

  _i3.AchievementCategory? category;

  String? image;

  List<_i4.CompletedAchievements>? playersWithAchievement;

  int displayOrder;

  int? _achievementCategoriesAchievementsAchievementCategoriesId;

  @override
  _i1.Table get table => t;

  Achievement copyWith({
    int? id,
    int? titleId,
    _i2.Texts? title,
    int? descriptionId,
    _i2.Texts? description,
    int? nasScore,
    int? categoryId,
    _i3.AchievementCategory? category,
    String? image,
    List<_i4.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'titleId': titleId,
      if (title != null) 'title': title?.toJson(),
      'descriptionId': descriptionId,
      if (description != null) 'description': description?.toJson(),
      'nasScore': nasScore,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      if (image != null) 'image': image,
      if (playersWithAchievement != null)
        'playersWithAchievement':
            playersWithAchievement?.toJson(valueToJson: (v) => v.toJson()),
      'displayOrder': displayOrder,
      if (_achievementCategoriesAchievementsAchievementCategoriesId != null)
        '_achievementCategoriesAchievementsAchievementCategoriesId':
            _achievementCategoriesAchievementsAchievementCategoriesId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'titleId': titleId,
      if (title != null) 'title': title?.toJsonForProtocol(),
      'descriptionId': descriptionId,
      if (description != null) 'description': description?.toJsonForProtocol(),
      'nasScore': nasScore,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJsonForProtocol(),
      if (image != null) 'image': image,
      if (playersWithAchievement != null)
        'playersWithAchievement': playersWithAchievement?.toJson(
            valueToJson: (v) => v.toJsonForProtocol()),
      'displayOrder': displayOrder,
    };
  }

  static AchievementInclude include({
    _i2.TextsInclude? title,
    _i2.TextsInclude? description,
    _i3.AchievementCategoryInclude? category,
    _i4.CompletedAchievementsIncludeList? playersWithAchievement,
  }) {
    return AchievementInclude._(
      title: title,
      description: description,
      category: category,
      playersWithAchievement: playersWithAchievement,
    );
  }

  static AchievementIncludeList includeList({
    _i1.WhereExpressionBuilder<AchievementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AchievementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementTable>? orderByList,
    AchievementInclude? include,
  }) {
    return AchievementIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Achievement.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Achievement.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AchievementImpl extends Achievement {
  _AchievementImpl({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int nasScore,
    required int categoryId,
    _i3.AchievementCategory? category,
    String? image,
    List<_i4.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  }) : super._(
          id: id,
          titleId: titleId,
          title: title,
          descriptionId: descriptionId,
          description: description,
          nasScore: nasScore,
          categoryId: categoryId,
          category: category,
          image: image,
          playersWithAchievement: playersWithAchievement,
          displayOrder: displayOrder,
        );

  @override
  Achievement copyWith({
    Object? id = _Undefined,
    int? titleId,
    Object? title = _Undefined,
    int? descriptionId,
    Object? description = _Undefined,
    int? nasScore,
    int? categoryId,
    Object? category = _Undefined,
    Object? image = _Undefined,
    Object? playersWithAchievement = _Undefined,
    int? displayOrder,
  }) {
    return Achievement(
      id: id is int? ? id : this.id,
      titleId: titleId ?? this.titleId,
      title: title is _i2.Texts? ? title : this.title?.copyWith(),
      descriptionId: descriptionId ?? this.descriptionId,
      description: description is _i2.Texts?
          ? description
          : this.description?.copyWith(),
      nasScore: nasScore ?? this.nasScore,
      categoryId: categoryId ?? this.categoryId,
      category: category is _i3.AchievementCategory?
          ? category
          : this.category?.copyWith(),
      image: image is String? ? image : this.image,
      playersWithAchievement: playersWithAchievement
              is List<_i4.CompletedAchievements>?
          ? playersWithAchievement
          : this.playersWithAchievement?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}

class AchievementImplicit extends _AchievementImpl {
  AchievementImplicit._({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int nasScore,
    required int categoryId,
    _i3.AchievementCategory? category,
    String? image,
    List<_i4.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
    this.$_achievementCategoriesAchievementsAchievementCategoriesId,
  }) : super(
          id: id,
          titleId: titleId,
          title: title,
          descriptionId: descriptionId,
          description: description,
          nasScore: nasScore,
          categoryId: categoryId,
          category: category,
          image: image,
          playersWithAchievement: playersWithAchievement,
          displayOrder: displayOrder,
        );

  factory AchievementImplicit(
    Achievement achievement, {
    int? $_achievementCategoriesAchievementsAchievementCategoriesId,
  }) {
    return AchievementImplicit._(
      id: achievement.id,
      titleId: achievement.titleId,
      title: achievement.title,
      descriptionId: achievement.descriptionId,
      description: achievement.description,
      nasScore: achievement.nasScore,
      categoryId: achievement.categoryId,
      category: achievement.category,
      image: achievement.image,
      playersWithAchievement: achievement.playersWithAchievement,
      displayOrder: achievement.displayOrder,
      $_achievementCategoriesAchievementsAchievementCategoriesId:
          $_achievementCategoriesAchievementsAchievementCategoriesId,
    );
  }

  int? $_achievementCategoriesAchievementsAchievementCategoriesId;

  @override
  Map<String, dynamic> toJson() {
    var jsonMap = super.toJson();
    jsonMap.addAll({
      '_achievementCategoriesAchievementsAchievementCategoriesId':
          $_achievementCategoriesAchievementsAchievementCategoriesId
    });
    return jsonMap;
  }
}

class AchievementTable extends _i1.Table {
  AchievementTable({super.tableRelation}) : super(tableName: 'achievements') {
    titleId = _i1.ColumnInt(
      'titleId',
      this,
    );
    descriptionId = _i1.ColumnInt(
      'descriptionId',
      this,
    );
    nasScore = _i1.ColumnInt(
      'nasScore',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    displayOrder = _i1.ColumnInt(
      'displayOrder',
      this,
      hasDefault: true,
    );
    $_achievementCategoriesAchievementsAchievementCategoriesId = _i1.ColumnInt(
      '_achievementCategoriesAchievementsAchievementCategoriesId',
      this,
    );
  }

  late final _i1.ColumnInt titleId;

  _i2.TextsTable? _title;

  late final _i1.ColumnInt descriptionId;

  _i2.TextsTable? _description;

  late final _i1.ColumnInt nasScore;

  late final _i1.ColumnInt categoryId;

  _i3.AchievementCategoryTable? _category;

  late final _i1.ColumnString image;

  _i4.CompletedAchievementsTable? ___playersWithAchievement;

  _i1.ManyRelation<_i4.CompletedAchievementsTable>? _playersWithAchievement;

  late final _i1.ColumnInt displayOrder;

  late final _i1.ColumnInt
      $_achievementCategoriesAchievementsAchievementCategoriesId;

  _i2.TextsTable get title {
    if (_title != null) return _title!;
    _title = _i1.createRelationTable(
      relationFieldName: 'title',
      field: Achievement.t.titleId,
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
      field: Achievement.t.descriptionId,
      foreignField: _i2.Texts.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.TextsTable(tableRelation: foreignTableRelation),
    );
    return _description!;
  }

  _i3.AchievementCategoryTable get category {
    if (_category != null) return _category!;
    _category = _i1.createRelationTable(
      relationFieldName: 'category',
      field: Achievement.t.categoryId,
      foreignField: _i3.AchievementCategory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AchievementCategoryTable(tableRelation: foreignTableRelation),
    );
    return _category!;
  }

  _i4.CompletedAchievementsTable get __playersWithAchievement {
    if (___playersWithAchievement != null) return ___playersWithAchievement!;
    ___playersWithAchievement = _i1.createRelationTable(
      relationFieldName: '__playersWithAchievement',
      field: Achievement.t.id,
      foreignField: _i4.CompletedAchievements.t.achievementId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.CompletedAchievementsTable(tableRelation: foreignTableRelation),
    );
    return ___playersWithAchievement!;
  }

  _i1.ManyRelation<_i4.CompletedAchievementsTable> get playersWithAchievement {
    if (_playersWithAchievement != null) return _playersWithAchievement!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'playersWithAchievement',
      field: Achievement.t.id,
      foreignField: _i4.CompletedAchievements.t.achievementId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.CompletedAchievementsTable(tableRelation: foreignTableRelation),
    );
    _playersWithAchievement = _i1.ManyRelation<_i4.CompletedAchievementsTable>(
      tableWithRelations: relationTable,
      table: _i4.CompletedAchievementsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _playersWithAchievement!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        titleId,
        descriptionId,
        nasScore,
        categoryId,
        image,
        displayOrder,
        $_achievementCategoriesAchievementsAchievementCategoriesId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'title') {
      return title;
    }
    if (relationField == 'description') {
      return description;
    }
    if (relationField == 'category') {
      return category;
    }
    if (relationField == 'playersWithAchievement') {
      return __playersWithAchievement;
    }
    return null;
  }
}

class AchievementInclude extends _i1.IncludeObject {
  AchievementInclude._({
    _i2.TextsInclude? title,
    _i2.TextsInclude? description,
    _i3.AchievementCategoryInclude? category,
    _i4.CompletedAchievementsIncludeList? playersWithAchievement,
  }) {
    _title = title;
    _description = description;
    _category = category;
    _playersWithAchievement = playersWithAchievement;
  }

  _i2.TextsInclude? _title;

  _i2.TextsInclude? _description;

  _i3.AchievementCategoryInclude? _category;

  _i4.CompletedAchievementsIncludeList? _playersWithAchievement;

  @override
  Map<String, _i1.Include?> get includes => {
        'title': _title,
        'description': _description,
        'category': _category,
        'playersWithAchievement': _playersWithAchievement,
      };

  @override
  _i1.Table get table => Achievement.t;
}

class AchievementIncludeList extends _i1.IncludeList {
  AchievementIncludeList._({
    _i1.WhereExpressionBuilder<AchievementTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Achievement.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Achievement.t;
}

class AchievementRepository {
  const AchievementRepository._();

  final attach = const AchievementAttachRepository._();

  final attachRow = const AchievementAttachRowRepository._();

  final detach = const AchievementDetachRepository._();

  final detachRow = const AchievementDetachRowRepository._();

  Future<List<Achievement>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AchievementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementTable>? orderByList,
    _i1.Transaction? transaction,
    AchievementInclude? include,
  }) async {
    return session.db.find<Achievement>(
      where: where?.call(Achievement.t),
      orderBy: orderBy?.call(Achievement.t),
      orderByList: orderByList?.call(Achievement.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Achievement?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementTable>? where,
    int? offset,
    _i1.OrderByBuilder<AchievementTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AchievementTable>? orderByList,
    _i1.Transaction? transaction,
    AchievementInclude? include,
  }) async {
    return session.db.findFirstRow<Achievement>(
      where: where?.call(Achievement.t),
      orderBy: orderBy?.call(Achievement.t),
      orderByList: orderByList?.call(Achievement.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Achievement?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    AchievementInclude? include,
  }) async {
    return session.db.findById<Achievement>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Achievement>> insert(
    _i1.Session session,
    List<Achievement> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Achievement>(
      rows,
      transaction: transaction,
    );
  }

  Future<Achievement> insertRow(
    _i1.Session session,
    Achievement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Achievement>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Achievement>> update(
    _i1.Session session,
    List<Achievement> rows, {
    _i1.ColumnSelections<AchievementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Achievement>(
      rows,
      columns: columns?.call(Achievement.t),
      transaction: transaction,
    );
  }

  Future<Achievement> updateRow(
    _i1.Session session,
    Achievement row, {
    _i1.ColumnSelections<AchievementTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Achievement>(
      row,
      columns: columns?.call(Achievement.t),
      transaction: transaction,
    );
  }

  Future<List<Achievement>> delete(
    _i1.Session session,
    List<Achievement> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Achievement>(
      rows,
      transaction: transaction,
    );
  }

  Future<Achievement> deleteRow(
    _i1.Session session,
    Achievement row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Achievement>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Achievement>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AchievementTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Achievement>(
      where: where(Achievement.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AchievementTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Achievement>(
      where: where?.call(Achievement.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class AchievementAttachRepository {
  const AchievementAttachRepository._();

  Future<void> playersWithAchievement(
    _i1.Session session,
    Achievement achievement,
    List<_i4.CompletedAchievements> completedAchievements, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.any((e) => e.id == null)) {
      throw ArgumentError.notNull('completedAchievements.id');
    }
    if (achievement.id == null) {
      throw ArgumentError.notNull('achievement.id');
    }

    var $completedAchievements = completedAchievements
        .map((e) => e.copyWith(achievementId: achievement.id))
        .toList();
    await session.db.update<_i4.CompletedAchievements>(
      $completedAchievements,
      columns: [_i4.CompletedAchievements.t.achievementId],
      transaction: transaction,
    );
  }
}

class AchievementAttachRowRepository {
  const AchievementAttachRowRepository._();

  Future<void> title(
    _i1.Session session,
    Achievement achievement,
    _i2.Texts title, {
    _i1.Transaction? transaction,
  }) async {
    if (achievement.id == null) {
      throw ArgumentError.notNull('achievement.id');
    }
    if (title.id == null) {
      throw ArgumentError.notNull('title.id');
    }

    var $achievement = achievement.copyWith(titleId: title.id);
    await session.db.updateRow<Achievement>(
      $achievement,
      columns: [Achievement.t.titleId],
      transaction: transaction,
    );
  }

  Future<void> description(
    _i1.Session session,
    Achievement achievement,
    _i2.Texts description, {
    _i1.Transaction? transaction,
  }) async {
    if (achievement.id == null) {
      throw ArgumentError.notNull('achievement.id');
    }
    if (description.id == null) {
      throw ArgumentError.notNull('description.id');
    }

    var $achievement = achievement.copyWith(descriptionId: description.id);
    await session.db.updateRow<Achievement>(
      $achievement,
      columns: [Achievement.t.descriptionId],
      transaction: transaction,
    );
  }

  Future<void> category(
    _i1.Session session,
    Achievement achievement,
    _i3.AchievementCategory category, {
    _i1.Transaction? transaction,
  }) async {
    if (achievement.id == null) {
      throw ArgumentError.notNull('achievement.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $achievement = achievement.copyWith(categoryId: category.id);
    await session.db.updateRow<Achievement>(
      $achievement,
      columns: [Achievement.t.categoryId],
      transaction: transaction,
    );
  }

  Future<void> playersWithAchievement(
    _i1.Session session,
    Achievement achievement,
    _i4.CompletedAchievements completedAchievements, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.id == null) {
      throw ArgumentError.notNull('completedAchievements.id');
    }
    if (achievement.id == null) {
      throw ArgumentError.notNull('achievement.id');
    }

    var $completedAchievements =
        completedAchievements.copyWith(achievementId: achievement.id);
    await session.db.updateRow<_i4.CompletedAchievements>(
      $completedAchievements,
      columns: [_i4.CompletedAchievements.t.achievementId],
      transaction: transaction,
    );
  }
}

class AchievementDetachRepository {
  const AchievementDetachRepository._();

  Future<void> playersWithAchievement(
    _i1.Session session,
    List<_i4.CompletedAchievements> completedAchievements, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.any((e) => e.id == null)) {
      throw ArgumentError.notNull('completedAchievements.id');
    }

    var $completedAchievements = completedAchievements
        .map((e) => e.copyWith(achievementId: null))
        .toList();
    await session.db.update<_i4.CompletedAchievements>(
      $completedAchievements,
      columns: [_i4.CompletedAchievements.t.achievementId],
      transaction: transaction,
    );
  }
}

class AchievementDetachRowRepository {
  const AchievementDetachRowRepository._();

  Future<void> playersWithAchievement(
    _i1.Session session,
    _i4.CompletedAchievements completedAchievements, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.id == null) {
      throw ArgumentError.notNull('completedAchievements.id');
    }

    var $completedAchievements =
        completedAchievements.copyWith(achievementId: null);
    await session.db.updateRow<_i4.CompletedAchievements>(
      $completedAchievements,
      columns: [_i4.CompletedAchievements.t.achievementId],
      transaction: transaction,
    );
  }
}
