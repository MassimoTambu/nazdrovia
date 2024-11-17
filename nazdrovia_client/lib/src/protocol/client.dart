/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:nazdrovia_client/src/protocol/achievements.dart' as _i3;
import 'package:nazdrovia_client/src/protocol/players.dart' as _i4;
import 'package:nazdrovia_client/src/protocol/rule_categories.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointAchievement extends _i1.EndpointRef {
  EndpointAchievement(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'achievement';

  _i2.Future<List<_i3.Achievement>> getAll() =>
      caller.callServerEndpoint<List<_i3.Achievement>>(
        'achievement',
        'getAll',
        {},
      );

  _i2.Future<List<_i3.Achievement>> getAllWithCategories() =>
      caller.callServerEndpoint<List<_i3.Achievement>>(
        'achievement',
        'getAllWithCategories',
        {},
      );
}

/// {@category Endpoint}
class EndpointPlayer extends _i1.EndpointRef {
  EndpointPlayer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'player';

  _i2.Future<List<_i4.Player>> getAll() =>
      caller.callServerEndpoint<List<_i4.Player>>(
        'player',
        'getAll',
        {},
      );

  _i2.Future<List<_i4.Player>> getAllWithAchievements() =>
      caller.callServerEndpoint<List<_i4.Player>>(
        'player',
        'getAllWithAchievements',
        {},
      );
}

/// {@category Endpoint}
class EndpointRule extends _i1.EndpointRef {
  EndpointRule(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'rule';

  _i2.Future<List<_i5.RuleCategory>> getAllWithCategories() =>
      caller.callServerEndpoint<List<_i5.RuleCategory>>(
        'rule',
        'getAllWithCategories',
        {},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i6.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    achievement = EndpointAchievement(this);
    player = EndpointPlayer(this);
    rule = EndpointRule(this);
  }

  late final EndpointAchievement achievement;

  late final EndpointPlayer player;

  late final EndpointRule rule;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'achievement': achievement,
        'player': player,
        'rule': rule,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
