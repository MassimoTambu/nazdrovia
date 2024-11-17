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
import '../endpoints/achievement_endpoint.dart' as _i2;
import '../endpoints/player_endpoint.dart' as _i3;
import '../endpoints/rule_endpoint.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'achievement': _i2.AchievementEndpoint()
        ..initialize(
          server,
          'achievement',
          null,
        ),
      'player': _i3.PlayerEndpoint()
        ..initialize(
          server,
          'player',
          null,
        ),
      'rule': _i4.RuleEndpoint()
        ..initialize(
          server,
          'rule',
          null,
        ),
    };
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
              (endpoints['achievement'] as _i2.AchievementEndpoint)
                  .getAll(session),
        ),
        'getAllWithCategories': _i1.MethodConnector(
          name: 'getAllWithCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['achievement'] as _i2.AchievementEndpoint)
                  .getAllWithCategories(session),
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
              (endpoints['player'] as _i3.PlayerEndpoint).getAll(session),
        ),
        'getAllWithAchievements': _i1.MethodConnector(
          name: 'getAllWithAchievements',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint)
                  .getAllWithAchievements(session),
        ),
      },
    );
    connectors['rule'] = _i1.EndpointConnector(
      name: 'rule',
      endpoint: endpoints['rule']!,
      methodConnectors: {
        'getAllWithCategories': _i1.MethodConnector(
          name: 'getAllWithCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rule'] as _i4.RuleEndpoint)
                  .getAllWithCategories(session),
        )
      },
    );
  }
}
