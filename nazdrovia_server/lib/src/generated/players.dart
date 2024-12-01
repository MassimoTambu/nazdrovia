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
import 'achievements_obtained.dart' as _i2;

abstract class Player implements _i1.TableRow, _i1.ProtocolSerialization {
  Player._({
    this.id,
    required this.name,
    required this.lastName,
    required this.catchPhrase,
    required this.penalities,
    required this.isOut,
    this.image,
    this.completedAchievements,
  });

  factory Player({
    int? id,
    required String name,
    required String lastName,
    required String catchPhrase,
    required int penalities,
    required bool isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  }) = _PlayerImpl;

  factory Player.fromJson(Map<String, dynamic> jsonSerialization) {
    return Player(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      lastName: jsonSerialization['lastName'] as String,
      catchPhrase: jsonSerialization['catchPhrase'] as String,
      penalities: jsonSerialization['penalities'] as int,
      isOut: jsonSerialization['isOut'] as bool,
      image: jsonSerialization['image'] as String?,
      completedAchievements: (jsonSerialization['completedAchievements']
              as List?)
          ?.map((e) =>
              _i2.CompletedAchievements.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = PlayerTable();

  static const db = PlayerRepository._();

  @override
  int? id;

  String name;

  String lastName;

  String catchPhrase;

  int penalities;

  bool isOut;

  String? image;

  List<_i2.CompletedAchievements>? completedAchievements;

  @override
  _i1.Table get table => t;

  Player copyWith({
    int? id,
    String? name,
    String? lastName,
    String? catchPhrase,
    int? penalities,
    bool? isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'lastName': lastName,
      'catchPhrase': catchPhrase,
      'penalities': penalities,
      'isOut': isOut,
      if (image != null) 'image': image,
      if (completedAchievements != null)
        'completedAchievements':
            completedAchievements?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'lastName': lastName,
      'catchPhrase': catchPhrase,
      'penalities': penalities,
      'isOut': isOut,
      if (image != null) 'image': image,
      if (completedAchievements != null)
        'completedAchievements': completedAchievements?.toJson(
            valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static PlayerInclude include(
      {_i2.CompletedAchievementsIncludeList? completedAchievements}) {
    return PlayerInclude._(completedAchievements: completedAchievements);
  }

  static PlayerIncludeList includeList({
    _i1.WhereExpressionBuilder<PlayerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerTable>? orderByList,
    PlayerInclude? include,
  }) {
    return PlayerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Player.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Player.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlayerImpl extends Player {
  _PlayerImpl({
    int? id,
    required String name,
    required String lastName,
    required String catchPhrase,
    required int penalities,
    required bool isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  }) : super._(
          id: id,
          name: name,
          lastName: lastName,
          catchPhrase: catchPhrase,
          penalities: penalities,
          isOut: isOut,
          image: image,
          completedAchievements: completedAchievements,
        );

  @override
  Player copyWith({
    Object? id = _Undefined,
    String? name,
    String? lastName,
    String? catchPhrase,
    int? penalities,
    bool? isOut,
    Object? image = _Undefined,
    Object? completedAchievements = _Undefined,
  }) {
    return Player(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      penalities: penalities ?? this.penalities,
      isOut: isOut ?? this.isOut,
      image: image is String? ? image : this.image,
      completedAchievements:
          completedAchievements is List<_i2.CompletedAchievements>?
              ? completedAchievements
              : this.completedAchievements?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class PlayerTable extends _i1.Table {
  PlayerTable({super.tableRelation}) : super(tableName: 'players') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    lastName = _i1.ColumnString(
      'lastName',
      this,
    );
    catchPhrase = _i1.ColumnString(
      'catchPhrase',
      this,
    );
    penalities = _i1.ColumnInt(
      'penalities',
      this,
    );
    isOut = _i1.ColumnBool(
      'isOut',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString lastName;

  late final _i1.ColumnString catchPhrase;

  late final _i1.ColumnInt penalities;

  late final _i1.ColumnBool isOut;

  late final _i1.ColumnString image;

  _i2.CompletedAchievementsTable? ___completedAchievements;

  _i1.ManyRelation<_i2.CompletedAchievementsTable>? _completedAchievements;

  _i2.CompletedAchievementsTable get __completedAchievements {
    if (___completedAchievements != null) return ___completedAchievements!;
    ___completedAchievements = _i1.createRelationTable(
      relationFieldName: '__completedAchievements',
      field: Player.t.id,
      foreignField: _i2.CompletedAchievements.t.playerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CompletedAchievementsTable(tableRelation: foreignTableRelation),
    );
    return ___completedAchievements!;
  }

  _i1.ManyRelation<_i2.CompletedAchievementsTable> get completedAchievements {
    if (_completedAchievements != null) return _completedAchievements!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'completedAchievements',
      field: Player.t.id,
      foreignField: _i2.CompletedAchievements.t.playerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CompletedAchievementsTable(tableRelation: foreignTableRelation),
    );
    _completedAchievements = _i1.ManyRelation<_i2.CompletedAchievementsTable>(
      tableWithRelations: relationTable,
      table: _i2.CompletedAchievementsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _completedAchievements!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        lastName,
        catchPhrase,
        penalities,
        isOut,
        image,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'completedAchievements') {
      return __completedAchievements;
    }
    return null;
  }
}

class PlayerInclude extends _i1.IncludeObject {
  PlayerInclude._(
      {_i2.CompletedAchievementsIncludeList? completedAchievements}) {
    _completedAchievements = completedAchievements;
  }

  _i2.CompletedAchievementsIncludeList? _completedAchievements;

  @override
  Map<String, _i1.Include?> get includes =>
      {'completedAchievements': _completedAchievements};

  @override
  _i1.Table get table => Player.t;
}

class PlayerIncludeList extends _i1.IncludeList {
  PlayerIncludeList._({
    _i1.WhereExpressionBuilder<PlayerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Player.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Player.t;
}

class PlayerRepository {
  const PlayerRepository._();

  final attach = const PlayerAttachRepository._();

  final attachRow = const PlayerAttachRowRepository._();

  Future<List<Player>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerTable>? orderByList,
    _i1.Transaction? transaction,
    PlayerInclude? include,
  }) async {
    return session.db.find<Player>(
      where: where?.call(Player.t),
      orderBy: orderBy?.call(Player.t),
      orderByList: orderByList?.call(Player.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Player?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlayerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerTable>? orderByList,
    _i1.Transaction? transaction,
    PlayerInclude? include,
  }) async {
    return session.db.findFirstRow<Player>(
      where: where?.call(Player.t),
      orderBy: orderBy?.call(Player.t),
      orderByList: orderByList?.call(Player.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Player?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    PlayerInclude? include,
  }) async {
    return session.db.findById<Player>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Player>> insert(
    _i1.Session session,
    List<Player> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Player>(
      rows,
      transaction: transaction,
    );
  }

  Future<Player> insertRow(
    _i1.Session session,
    Player row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Player>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Player>> update(
    _i1.Session session,
    List<Player> rows, {
    _i1.ColumnSelections<PlayerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Player>(
      rows,
      columns: columns?.call(Player.t),
      transaction: transaction,
    );
  }

  Future<Player> updateRow(
    _i1.Session session,
    Player row, {
    _i1.ColumnSelections<PlayerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Player>(
      row,
      columns: columns?.call(Player.t),
      transaction: transaction,
    );
  }

  Future<List<Player>> delete(
    _i1.Session session,
    List<Player> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Player>(
      rows,
      transaction: transaction,
    );
  }

  Future<Player> deleteRow(
    _i1.Session session,
    Player row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Player>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Player>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlayerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Player>(
      where: where(Player.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Player>(
      where: where?.call(Player.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PlayerAttachRepository {
  const PlayerAttachRepository._();

  Future<void> completedAchievements(
    _i1.Session session,
    Player player,
    List<_i2.CompletedAchievements> completedAchievements, {
    _i1.Transaction? transaction,
  }) async {
    if (completedAchievements.any((e) => e.id == null)) {
      throw ArgumentError.notNull('completedAchievements.id');
    }
    if (player.id == null) {
      throw ArgumentError.notNull('player.id');
    }

    var $completedAchievements = completedAchievements
        .map((e) => e.copyWith(playerId: player.id))
        .toList();
    await session.db.update<_i2.CompletedAchievements>(
      $completedAchievements,
      columns: [_i2.CompletedAchievements.t.playerId],
      transaction: transaction,
    );
  }
}

class PlayerAttachRowRepository {
  const PlayerAttachRowRepository._();

  Future<void> completedAchievements(
    _i1.Session session,
    Player player,
    _i2.CompletedAchievements completedAchievements, {
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
    await session.db.updateRow<_i2.CompletedAchievements>(
      $completedAchievements,
      columns: [_i2.CompletedAchievements.t.playerId],
      transaction: transaction,
    );
  }
}
