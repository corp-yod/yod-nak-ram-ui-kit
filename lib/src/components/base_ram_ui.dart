import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_tokens.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme.dart';
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

class RamImageAssets extends StatelessWidget {
  const RamImageAssets({
    super.key,
    required this.name,
    this.fit = BoxFit.cover,
    this.size = const Size(56, 56),
  });

  final String name;
  final BoxFit fit;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(name, fit: fit, width: size.width, height: size.height);
  }
}
