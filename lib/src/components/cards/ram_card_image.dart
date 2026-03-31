import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/cards/base_ram_card.dart';
import 'package:yod_nak_ram_ui_kit/src/components/cards/ram_card.dart';
import 'package:yod_nak_ram_ui_kit/src/components/loadings/ram_skeleton_loading.dart';
import 'package:yod_nak_ram_ui_kit/src/components/texts.dart/ram_text.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

const mockImageUrl =
    'https://media.cntraveller.com/photos/69380ac93a4fc3063986fad8/master/w_1600%2Cc_limit/Tokyo_Japan_091225_GettyImages-1877688135.jpg';

class RamCardNetworkImage extends RamCardBase {
  const RamCardNetworkImage({
    super.key,
    super.height,
    super.width = 256,
    super.surface,
    super.onSurface,
    required this.imageUrl,
    required this.title,
    this.description,
  });

  final String imageUrl;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    return RamCard(
      height: height,
      width: width,
      surface: surface,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kRadius1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(kRadius1),
                ),
                child: CachedNetworkImage(
                  width: width,
                  imageUrl: mockImageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    return RamShimmerSkeleton(
                      width: width,
                      height: width != null ? width! / 2 : null,
                    );
                  },
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(height: kSpace4),
              // Title
              RamTitleText(
                text: title,
                colorText: onSurface ?? ramTheme.onSurface,
              ),
              // description
              if (description != null)
                RamLabelText(
                  text: description!,
                  colorText: onSurface != null
                      ? onSurface!.withAlpha(80)
                      : ramTheme.onSurface.withAlpha(80),
                ),
              //
              SizedBox(height: kSpace4),
            ],
          ),
        ),
      ),
    );
  }
}
