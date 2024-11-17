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

abstract class CompletedAchievements
    implements _i1.TableRow, _i1.ProtocolSerialization {
  CompletedAchievements._({
    this.id,
    required this.playerId,
    this.player,
    required this.achievementId,
    this.achievement,
  });

  factory CompletedAchievements({
    int? id,
    required int playerId,
    _i2.Player? player,
    required int achievementId,
    _i2.Achievement? achievement,
  }) = _CompletedAchievementsImpl;

  factory CompletedAchievements.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return CompletedAchievements(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      player: jsonSerialization['player'] == null
          ? null
          : _i2.Player.fromJson(
              (jsonSerialization['player'] as Map<String, dynamic>)),
      achievementId: jsonSerialization['achievementId'] as int,
      achievement: jsonSerialization['achievement'] == null
          ? null
          : _i2.Achievement.fromJson(
              (jsonSerialization['achievement'] as Map<String, dynamic>)),
    );
  }

  static final t = CompletedAchievementsTable();

  static const db = CompletedAchievementsRepository._();

  @override
  int? id;

  int playerId;

  _i2.Player? player;

  int achievementId;

  _i2.Achievement? achievement;

  @override
  _i1.Table get table => t;

  CompletedAchievements copyWith({
    int? id,
    int? playerId,
    _i2.Player? player,
    int? achievementId,
    _i2.Achievement? achievement,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'playerId': playerId,
      if (player != null) 'player': player?.toJson(),
      'achievementId': achievementId,
      if (achievement != null) 'achievement': achievement?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'playerId': playerId,
      if (player != null) 'player': player?.toJsonForProtocol(),
      'achievementId': achievementId,
      if (achievement != null) 'achievement': achievement?.toJsonForProtocol(),
    };
  }

  static CompletedAchievementsInclude include({
    _i2.PlayerInclude? player,
    _i2.AchievementInclude? achievement,
  }) {
    return CompletedAchievementsInclude._(
      player: player,
      achievement: achievement,
    );
  }

  static CompletedAchievementsIncludeList includeList({
    _i1.WhereExpressionBuilder<CompletedAchievementsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompletedAchievementsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompletedAchievementsTable>? orderByList,
    CompletedAchievementsInclude? include,
  }) {
    return CompletedAchievementsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CompletedAchievements.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CompletedAchievements.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompletedAchievementsImpl extends CompletedAchievements {
  _CompletedAchievementsImpl({
    int? id,
    required int playerId,
    _i2.Player? player,
    required int achievementId,
    _i2.Achievement? achievement,
  }) : super._(
          id: id,
          playerId: playerId,
          player: player,
          achievementId: achievementId,
          achievement: achievement,
        );

  @override
  CompletedAchievements copyWith({
    Object? id = _Undefined,
    int? playerId,
    Object? player = _Undefined,
    int? achievementId,
    Object? achievement = _Undefined,
  }) {
    return CompletedAchievements(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      player: player is _i2.Player? ? player : this.player?.copyWith(),
      achievementId: achievementId ?? this.achievementId,
      achievement: achievement is _i2.Achievement?
          ? achievement
          : this.achievement?.copyWith(),
    );
  }
}

class CompletedAchievementsTable extends _i1.Table {
  CompletedAchievementsTable({super.tableRelation})
      : super(tableName: 'completed_achievements') {
    playerId = _i1.ColumnInt(
      'playerId',
      this,
    );
    achievementId = _i1.ColumnInt(
      'achievementId',
      this,
    );
  }

  late final _i1.ColumnInt playerId;

  _i2.PlayerTable? _player;

  late final _i1.ColumnInt achievementId;

  _i2.AchievementTable? _achievement;

  _i2.PlayerTable get player {
    if (_player != null) return _player!;
    _player = _i1.createRelationTable(
      relationFieldName: 'player',
      field: CompletedAchievements.t.playerId,
      foreignField: _i2.Player.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PlayerTable(tableRelation: foreignTableRelation),
    );
    return _player!;
  }

  _i2.AchievementTable get achievement {
    if (_achievement != null) return _achievement!;
    _achievement = _i1.createRelationTable(
      relationFieldName: 'achievement',
      field: CompletedAchievements.t.achievementId,
      foreignField: _i2.Achievement.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AchievementTable(tableRelation: foreignTableRelation),
    );
    return _achievement!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        playerId,
        achievementId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'player') {
      return player;
    }
    if (relationField == 'achievement') {
      return achievement;
    }
    return null;
  }
}

class CompletedAchievementsInclude extends _i1.IncludeObject {
  CompletedAchievementsInclude._({
    _i2.PlayerInclude? player,
    _i2.AchievementInclude? achievement,
  }) {
    _player = player;
    _achievement = achievement;
  }

  _i2.PlayerInclude? _player;

  _i2.AchievementInclude? _achievement;

  @override
  Map<String, _i1.Include?> get includes => {
        'player': _player,
        'achievement': _achievement,
      };

  @override
  _i1.Table get table => CompletedAchievements.t;
}

class CompletedAchievementsIncludeList extends _i1.IncludeList {
  CompletedAchievementsIncludeList._({
    _i1.WhereExpressionBuilder<CompletedAchievementsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CompletedAchievements.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CompletedAchievements.t;
}

class CompletedAchievementsRepository {
  const CompletedAchievementsRepository._();

  final attachRow = const CompletedAchievementsAttachRowRepository._();

  Future<List<CompletedAchievements>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompletedAchievementsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CompletedAchievementsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompletedAchievementsTable>? orderByList,
    _i1.Transaction? transaction,
    CompletedAchievementsInclude? include,
  }) async {
    return session.db.find<CompletedAchievements>(
      where: where?.call(CompletedAchievements.t),
      orderBy: orderBy?.call(CompletedAchievements.t),
      orderByList: orderByList?.call(CompletedAchievements.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<CompletedAchievements?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompletedAchievementsTable>? where,
    int? offset,
    _i1.OrderByBuilder<CompletedAchievementsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CompletedAchievementsTable>? orderByList,
    _i1.Transaction? transaction,
    CompletedAchievementsInclude? include,
  }) async {
    return session.db.findFirstRow<CompletedAchievements>(
      where: where?.call(CompletedAchievements.t),
      orderBy: orderBy?.call(CompletedAchievements.t),
      orderByList: orderByList?.call(CompletedAchievements.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<CompletedAchievements?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CompletedAchievementsInclude? include,
  }) async {
    return session.db.findById<CompletedAchievements>(
      id,
      transaction: transaction ?? session.transaction,
      include: include,
    );
  }

  Future<List<CompletedAchievements>> insert(
    _i1.Session session,
    List<CompletedAchievements> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CompletedAchievements>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<CompletedAchievements> insertRow(
    _i1.Session session,
    CompletedAchievements row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CompletedAchievements>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<CompletedAchievements>> update(
    _i1.Session session,
    List<CompletedAchievements> rows, {
    _i1.ColumnSelections<CompletedAchievementsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CompletedAchievements>(
      rows,
      columns: columns?.call(CompletedAchievements.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<CompletedAchievements> updateRow(
    _i1.Session session,
    CompletedAchievements row, {
    _i1.ColumnSelections<CompletedAchievementsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CompletedAchievements>(
      row,
      columns: columns?.call(CompletedAchievements.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<CompletedAchievements>> delete(
    _i1.Session session,
    List<CompletedAchievements> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CompletedAchievements>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<CompletedAchievements> deleteRow(
    _i1.Session session,
    CompletedAchievements row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CompletedAchievements>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<CompletedAchievements>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CompletedAchievementsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CompletedAchievements>(
      where: where(CompletedAchievements.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CompletedAchievementsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CompletedAchievements>(
      where: where?.call(CompletedAchievements.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}

class CompletedAchievementsAttachRowRepository {
  const CompletedAchievementsAttachRowRepository._();

  Future<void> player(
    _i1.Session session,
    CompletedAchievements completedAchievements,
    _i2.Player player, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.id == null) {
      throw ArgumentError.notNull('completedAchievements.id');
    }
    if (player.id == null) {
      throw ArgumentError.notNull('player.id');
    }

    var $completedAchievements =
        completedAchievements.copyWith(playerId: player.id);
    await session.db.updateRow<CompletedAchievements>(
      $completedAchievements,
      columns: [CompletedAchievements.t.playerId],
      transaction: transaction ?? session.transaction,
    );
  }

  Future<void> achievement(
    _i1.Session session,
    CompletedAchievements completedAchievements,
    _i2.Achievement achievement, {
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
    await session.db.updateRow<CompletedAchievements>(
      $completedAchievements,
      columns: [CompletedAchievements.t.achievementId],
      transaction: transaction ?? session.transaction,
    );
  }
}
