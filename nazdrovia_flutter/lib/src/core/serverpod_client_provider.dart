import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'package:nazdrovia_client/nazdrovia_client.dart';

part 'serverpod_client_provider.g.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
@riverpod
Client dio(Ref ref) => Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();
