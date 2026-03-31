import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/loadings/loadings.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

class RamBaseIcon extends StatelessWidget {
  const RamBaseIcon({super.key, this.icon});

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    if (icon == null) return SizedBox();

    if (icon is Icon) {
      final widget = icon as Icon;
      return Icon(
        widget.icon,
        size: kSpace8,
        color: widget.color ?? ramTheme.onPrimary,
      );
    } else {
      return icon!;
    }
  }
}

class RamNetWorkImage extends StatelessWidget {
  const RamNetWorkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kRadius1),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
