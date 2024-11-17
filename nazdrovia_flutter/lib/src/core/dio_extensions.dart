import 'package:diox/diox.dart';

extension DioExtensions on Options {
  // TODO: Implement withBearer
  // Options withBearer(AccessToken accessToken) {
  //   headers ??= {};
  //   headers!.putIfAbsent('Authorization', () => 'Bearer $accessToken');
  //   return this;
  // }

  Options withContentTypeApplicationJson() {
    headers ??= {};
    headers!.putIfAbsent('Content-Type', () => 'application/json');
    return this;
  }
}
