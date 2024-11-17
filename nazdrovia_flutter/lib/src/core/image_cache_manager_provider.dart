import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

part 'image_cache_manager_provider.g.dart';

@riverpod
BaseCacheManager imageCacheManager(Ref ref) {
  // * Would be cool to use a custom cacheManager to customize the cache
  // * duration and everything else, but it seems to be a not exported class
  // * needed to complete the customization.
  // https://github.com/Baseflow/flutter_cache_manager/issues/238
  return DefaultCacheManager();
}
