import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/core/image_cache_manager_provider.dart';

/// Wrapper on [CachedNetworkImage], adding our base configuration
class CachedNetworkImageWidget extends ConsumerWidget {
  const CachedNetworkImageWidget({
    super.key,
    required this.imageUrl,
    required this.loadingBox,
  });

  final String imageUrl;
  final SizedBox loadingBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CachedNetworkImage(
      cacheManager: ref.watch(imageCacheManagerProvider),
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, progress) {
        return loadingBox;
      },
      fit: BoxFit.cover,
      width: loadingBox.width,
      height: loadingBox.height,
    );
  }
}
