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
import '../endpoints/achievement_category_endpoint.dart' as _i2;
import '../endpoints/achievement_endpoint.dart' as _i3;
import '../endpoints/player_endpoint.dart' as _i4;
import '../endpoints/rule_category_endpoint.dart' as _i5;
import '../endpoints/rule_endpoint.dart' as _i6;
import '../endpoints/texts_endpoint.dart' as _i7;
import '../endpoints/translations_endpoint.dart' as _i8;
import 'package:nazdrovia_server/src/generated/achievement_categories.dart'
    as _i9;
import 'package:nazdrovia_server/src/generated/achievements.dart' as _i10;
import 'package:nazdrovia_server/src/generated/rule_categories.dart' as _i11;
import 'package:nazdrovia_server/src/generated/rules.dart' as _i12;
import 'package:nazdrovia_server/src/generated/texts.dart' as _i13;
import 'package:nazdrovia_server/src/generated/translations.dart' as _i14;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'achievementCategory': _i2.AchievementCategoryEndpoint()
        ..initialize(
          server,
          'achievementCategory',
          null,
        ),
      'achievement': _i3.AchievementEndpoint()
        ..initialize(
          server,
          'achievement',
          null,
        ),
      'player': _i4.PlayerEndpoint()
        ..initialize(
          server,
          'player',
          null,
        ),
      'ruleCategory': _i5.RuleCategoryEndpoint()
        ..initialize(
          server,
          'ruleCategory',
          null,
        ),
      'rule': _i6.RuleEndpoint()
        ..initialize(
          server,
          'rule',
          null,
        ),
      'texts': _i7.TextsEndpoint()
        ..initialize(
          server,
          'texts',
          null,
        ),
      'translation': _i8.TranslationEndpoint()
        ..initialize(
          server,
          'translation',
          null,
        ),
    };
    connectors['achievementCategory'] = _i1.EndpointConnector(
      name: 'achievementCategory',
      endpoint: endpoints['achievementCategory']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievementCategory']
                      as _i2.AchievementCategoryEndpoint)
                  .getAll(session),
        ),
        'getAllWithAchievements': _i1.MethodConnector(
          name: 'getAllWithAchievements',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievementCategory']
                      as _i2.AchievementCategoryEndpoint)
                  .getAllWithAchievements(session),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i9.AchievementCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievementCategory']
                      as _i2.AchievementCategoryEndpoint)
                  .insert(
            session,
            params['category'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i9.AchievementCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievementCategory']
                      as _i2.AchievementCategoryEndpoint)
                  .update(
            session,
            params['category'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i9.AchievementCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievementCategory']
                      as _i2.AchievementCategoryEndpoint)
                  .delete(
            session,
            params['category'],
          ),
        ),
      },
    );
    connectors['achievement'] = _i1.EndpointConnector(
      name: 'achievement',
      endpoint: endpoints['achievement']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i3.AchievementEndpoint)
                  .getAll(session),
        ),
        'getAllWithCategories': _i1.MethodConnector(
          name: 'getAllWithCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i3.AchievementEndpoint)
                  .getAllWithCategories(session),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'achievement': _i1.ParameterDescription(
              name: 'achievement',
              type: _i1.getType<_i10.Achievement>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i3.AchievementEndpoint).insert(
            session,
            params['achievement'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'achievement': _i1.ParameterDescription(
              name: 'achievement',
              type: _i1.getType<_i10.Achievement>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i3.AchievementEndpoint).update(
            session,
            params['achievement'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'achievement': _i1.ParameterDescription(
              name: 'achievement',
              type: _i1.getType<_i10.Achievement>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i3.AchievementEndpoint).delete(
            session,
            params['achievement'],
          ),
        ),
      },
    );
    connectors['player'] = _i1.EndpointConnector(
      name: 'player',
      endpoint: endpoints['player']!,
      methodConnectors: {
        'getAll': _i1.MethodConnector(
          name: 'getAll',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i4.PlayerEndpoint).getAll(session),
        ),
        'getAllWithAchievements': _i1.MethodConnector(
          name: 'getAllWithAchievements',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i4.PlayerEndpoint)
                  .getAllWithAchievements(session),
        ),
      },
    );
    connectors['ruleCategory'] = _i1.EndpointConnector(
      name: 'ruleCategory',
      endpoint: endpoints['ruleCategory']!,
      methodConnectors: {
        'getAllWithRules': _i1.MethodConnector(
          name: 'getAllWithRules',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ruleCategory'] as _i5.RuleCategoryEndpoint)
                  .getAllWithRules(session),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i11.RuleCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ruleCategory'] as _i5.RuleCategoryEndpoint).insert(
            session,
            params['category'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i11.RuleCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ruleCategory'] as _i5.RuleCategoryEndpoint).update(
            session,
            params['category'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i11.RuleCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ruleCategory'] as _i5.RuleCategoryEndpoint).delete(
            session,
            params['category'],
          ),
        ),
      },
    );
    connectors['rule'] = _i1.EndpointConnector(
      name: 'rule',
      endpoint: endpoints['rule']!,
      methodConnectors: {
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'rule': _i1.ParameterDescription(
              name: 'rule',
              type: _i1.getType<_i12.Rule>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rule'] as _i6.RuleEndpoint).insert(
            session,
            params['rule'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'rule': _i1.ParameterDescription(
              name: 'rule',
              type: _i1.getType<_i12.Rule>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rule'] as _i6.RuleEndpoint).update(
            session,
            params['rule'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'rule': _i1.ParameterDescription(
              name: 'rule',
              type: _i1.getType<_i12.Rule>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rule'] as _i6.RuleEndpoint).delete(
            session,
            params['rule'],
          ),
        ),
      },
    );
    connectors['texts'] = _i1.EndpointConnector(
      name: 'texts',
      endpoint: endpoints['texts']!,
      methodConnectors: {
        'getAllWithTranslations': _i1.MethodConnector(
          name: 'getAllWithTranslations',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['texts'] as _i7.TextsEndpoint)
                  .getAllWithTranslations(session),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'texts': _i1.ParameterDescription(
              name: 'texts',
              type: _i1.getType<_i13.Texts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['texts'] as _i7.TextsEndpoint).insert(
            session,
            params['texts'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'texts': _i1.ParameterDescription(
              name: 'texts',
              type: _i1.getType<_i13.Texts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['texts'] as _i7.TextsEndpoint).update(
            session,
            params['texts'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'texts': _i1.ParameterDescription(
              name: 'texts',
              type: _i1.getType<_i13.Texts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['texts'] as _i7.TextsEndpoint).delete(
            session,
            params['texts'],
          ),
        ),
      },
    );
    connectors['translation'] = _i1.EndpointConnector(
      name: 'translation',
      endpoint: endpoints['translation']!,
      methodConnectors: {
        'getLanguageCodes': _i1.MethodConnector(
          name: 'getLanguageCodes',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['translation'] as _i8.TranslationEndpoint)
                  .getLanguageCodes(session),
        ),
        'insert': _i1.MethodConnector(
          name: 'insert',
          params: {
            'translation': _i1.ParameterDescription(
              name: 'translation',
              type: _i1.getType<_i14.Translation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['translation'] as _i8.TranslationEndpoint).insert(
            session,
            params['translation'],
          ),
        ),
        'update': _i1.MethodConnector(
          name: 'update',
          params: {
            'translation': _i1.ParameterDescription(
              name: 'translation',
              type: _i1.getType<_i14.Translation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['translation'] as _i8.TranslationEndpoint).update(
            session,
            params['translation'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'translation': _i1.ParameterDescription(
              name: 'translation',
              type: _i1.getType<_i14.Translation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['translation'] as _i8.TranslationEndpoint).delete(
            session,
            params['translation'],
          ),
        ),
      },
    );
  }
}
