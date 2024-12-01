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
import 'package:nazdrovia_client/src/protocol/achievement_categories.dart'
    as _i3;
import 'package:nazdrovia_client/src/protocol/achievements.dart' as _i4;
import 'package:nazdrovia_client/src/protocol/players.dart' as _i5;
import 'package:nazdrovia_client/src/protocol/rule_categories.dart' as _i6;
import 'package:nazdrovia_client/src/protocol/rules.dart' as _i7;
import 'package:nazdrovia_client/src/protocol/texts.dart' as _i8;
import 'package:nazdrovia_client/src/protocol/translations.dart' as _i9;
import 'protocol.dart' as _i10;

/// {@category Endpoint}
class EndpointAchievementCategory extends _i1.EndpointRef {
  EndpointAchievementCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'achievementCategory';

  _i2.Future<List<_i3.AchievementCategory>> getAllWithAchievements() =>
      caller.callServerEndpoint<List<_i3.AchievementCategory>>(
        'achievementCategory',
        'getAllWithAchievements',
        {},
      );

  _i2.Future<void> insert(_i3.AchievementCategory category) =>
      caller.callServerEndpoint<void>(
        'achievementCategory',
        'insert',
        {'category': category},
      );

  _i2.Future<void> update(_i3.AchievementCategory category) =>
      caller.callServerEndpoint<void>(
        'achievementCategory',
        'update',
        {'category': category},
      );

  _i2.Future<void> delete(_i3.AchievementCategory category) =>
      caller.callServerEndpoint<void>(
        'achievementCategory',
        'delete',
        {'category': category},
      );
}

/// {@category Endpoint}
class EndpointAchievement extends _i1.EndpointRef {
  EndpointAchievement(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'achievement';

  _i2.Future<List<_i4.Achievement>> getAll() =>
      caller.callServerEndpoint<List<_i4.Achievement>>(
        'achievement',
        'getAll',
        {},
      );

  _i2.Future<List<_i4.Achievement>> getAllWithCategories() =>
      caller.callServerEndpoint<List<_i4.Achievement>>(
        'achievement',
        'getAllWithCategories',
        {},
      );

  _i2.Future<void> insert(_i4.Achievement achievement) =>
      caller.callServerEndpoint<void>(
        'achievement',
        'insert',
        {'achievement': achievement},
      );

  _i2.Future<void> update(_i4.Achievement achievement) =>
      caller.callServerEndpoint<void>(
        'achievement',
        'update',
        {'achievement': achievement},
      );

  _i2.Future<void> delete(_i4.Achievement achievement) =>
      caller.callServerEndpoint<void>(
        'achievement',
        'delete',
        {'achievement': achievement},
      );
}

/// {@category Endpoint}
class EndpointPlayer extends _i1.EndpointRef {
  EndpointPlayer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'player';

  _i2.Future<List<_i5.Player>> getAll() =>
      caller.callServerEndpoint<List<_i5.Player>>(
        'player',
        'getAll',
        {},
      );

  _i2.Future<List<_i5.Player>> getAllWithAchievements() =>
      caller.callServerEndpoint<List<_i5.Player>>(
        'player',
        'getAllWithAchievements',
        {},
      );
}

/// {@category Endpoint}
class EndpointRuleCategory extends _i1.EndpointRef {
  EndpointRuleCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ruleCategory';

  _i2.Future<List<_i6.RuleCategory>> getAllWithRules() =>
      caller.callServerEndpoint<List<_i6.RuleCategory>>(
        'ruleCategory',
        'getAllWithRules',
        {},
      );

  _i2.Future<void> insert(_i6.RuleCategory category) =>
      caller.callServerEndpoint<void>(
        'ruleCategory',
        'insert',
        {'category': category},
      );

  _i2.Future<void> update(_i6.RuleCategory category) =>
      caller.callServerEndpoint<void>(
        'ruleCategory',
        'update',
        {'category': category},
      );

  _i2.Future<void> delete(_i6.RuleCategory category) =>
      caller.callServerEndpoint<void>(
        'ruleCategory',
        'delete',
        {'category': category},
      );
}

/// {@category Endpoint}
class EndpointRule extends _i1.EndpointRef {
  EndpointRule(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'rule';

  _i2.Future<void> insert(_i7.Rule rule) => caller.callServerEndpoint<void>(
        'rule',
        'insert',
        {'rule': rule},
      );

  _i2.Future<void> update(_i7.Rule rule) => caller.callServerEndpoint<void>(
        'rule',
        'update',
        {'rule': rule},
      );

  _i2.Future<void> delete(_i7.Rule rule) => caller.callServerEndpoint<void>(
        'rule',
        'delete',
        {'rule': rule},
      );
}

/// {@category Endpoint}
class EndpointTexts extends _i1.EndpointRef {
  EndpointTexts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'texts';

  _i2.Future<List<_i8.Texts>> getAllWithTranslations() =>
      caller.callServerEndpoint<List<_i8.Texts>>(
        'texts',
        'getAllWithTranslations',
        {},
      );

  _i2.Future<void> insert(_i8.Texts texts) => caller.callServerEndpoint<void>(
        'texts',
        'insert',
        {'texts': texts},
      );

  _i2.Future<void> update(_i8.Texts texts) => caller.callServerEndpoint<void>(
        'texts',
        'update',
        {'texts': texts},
      );

  _i2.Future<void> delete(_i8.Texts texts) => caller.callServerEndpoint<void>(
        'texts',
        'delete',
        {'texts': texts},
      );
}

/// {@category Endpoint}
class EndpointTranslation extends _i1.EndpointRef {
  EndpointTranslation(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'translation';

  _i2.Future<List<String>> getLanguageCodes() =>
      caller.callServerEndpoint<List<String>>(
        'translation',
        'getLanguageCodes',
        {},
      );

  _i2.Future<void> insert(_i9.Translation translation) =>
      caller.callServerEndpoint<void>(
        'translation',
        'insert',
        {'translation': translation},
      );

  _i2.Future<void> update(_i9.Translation translation) =>
      caller.callServerEndpoint<void>(
        'translation',
        'update',
        {'translation': translation},
      );

  _i2.Future<void> delete(_i9.Translation translation) =>
      caller.callServerEndpoint<void>(
        'translation',
        'delete',
        {'translation': translation},
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
          _i10.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    achievementCategory = EndpointAchievementCategory(this);
    achievement = EndpointAchievement(this);
    player = EndpointPlayer(this);
    ruleCategory = EndpointRuleCategory(this);
    rule = EndpointRule(this);
    texts = EndpointTexts(this);
    translation = EndpointTranslation(this);
  }

  late final EndpointAchievementCategory achievementCategory;

  late final EndpointAchievement achievement;

  late final EndpointPlayer player;

  late final EndpointRuleCategory ruleCategory;

  late final EndpointRule rule;

  late final EndpointTexts texts;

  late final EndpointTranslation translation;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'achievementCategory': achievementCategory,
        'achievement': achievement,
        'player': player,
        'ruleCategory': ruleCategory,
        'rule': rule,
        'texts': texts,
        'translation': translation,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
