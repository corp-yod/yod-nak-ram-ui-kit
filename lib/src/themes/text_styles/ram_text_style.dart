import 'package:flutter/material.dart';

class RamTextStyle extends ThemeExtension<RamTextStyle> {
  RamTextStyle({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyLargeExtraThin,
    required this.bodyLargeExtraBold,
    required this.bodyMedium,
    required this.bodyMediumExtraThin,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  }) : textStyleMap = {
          'displayLarge': displayLarge,
          'displayMedium': displayMedium,
          'displaySmall': displaySmall,
          'headlineLarge': headlineLarge,
          'headlineMedium': headlineMedium,
          'headlineSmall': headlineSmall,
          'titleLarge': titleLarge,
          'titleMedium': titleMedium,
          'titleSmall': titleSmall,
          'bodyLargeExtraBold': bodyLargeExtraBold,
          'bodyLarge': bodyLarge,
          'bodyLargeExtraThin': bodyLargeExtraThin,
          'bodyMedium': bodyMedium,
          'bodyMediumExtraThin': bodyMediumExtraThin,
          'bodySmall': bodySmall,
          'labelLarge': labelLarge,
          'labelMedium': labelMedium,
          'labelSmall': labelSmall,
        };

  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLargeExtraBold;
  final TextStyle bodyLarge;
  final TextStyle bodyLargeExtraThin;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumExtraThin;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  /// A map of all text styles for convenient access.
  final Map<String, TextStyle> textStyleMap;

  /// A utility method to get a `TextStyle` by its token name.
  TextStyle? getTextStyle(String textStyleToken) {
    return textStyleMap[textStyleToken];
  }

  @override
  RamTextStyle copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLargeExtraBold,
    TextStyle? bodyLarge,
    TextStyle? bodyLargeExtraThin,
    TextStyle? bodyMedium,
    TextStyle? bodyMediumExtraThin,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return RamTextStyle(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLargeExtraBold: bodyLargeExtraBold ?? this.bodyLargeExtraBold,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyLargeExtraThin: bodyLargeExtraThin ?? this.bodyLargeExtraThin,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyMediumExtraThin: bodyMediumExtraThin ?? this.bodyMediumExtraThin,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  RamTextStyle lerp(RamTextStyle? other, double t) {
    if (other == null) return this;
    return RamTextStyle(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLargeExtraBold:
          TextStyle.lerp(bodyLargeExtraBold, other.bodyLargeExtraBold, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyLargeExtraThin:
          TextStyle.lerp(bodyLargeExtraThin, other.bodyLargeExtraThin, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyMediumExtraThin:
          TextStyle.lerp(bodyMediumExtraThin, other.bodyMediumExtraThin, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
    );
  }

  RamTextStyle withFontFamily(String fontFamily) {
    return RamTextStyle(
      displayLarge: displayLarge.copyWith(fontFamily: fontFamily),
      displayMedium: displayMedium.copyWith(fontFamily: fontFamily),
      displaySmall: displaySmall.copyWith(fontFamily: fontFamily),
      headlineLarge: headlineLarge.copyWith(fontFamily: fontFamily),
      headlineMedium: headlineMedium.copyWith(fontFamily: fontFamily),
      headlineSmall: headlineSmall.copyWith(fontFamily: fontFamily),
      titleLarge: titleLarge.copyWith(fontFamily: fontFamily),
      titleMedium: titleMedium.copyWith(fontFamily: fontFamily),
      titleSmall: titleSmall.copyWith(fontFamily: fontFamily),
      bodyLarge: bodyLarge.copyWith(fontFamily: fontFamily),
      bodyLargeExtraBold: bodyLargeExtraBold.copyWith(fontFamily: fontFamily),
      bodyLargeExtraThin: bodyLargeExtraThin.copyWith(fontFamily: fontFamily),
      bodyMedium: bodyMedium.copyWith(fontFamily: fontFamily),
      bodyMediumExtraThin: bodyMediumExtraThin.copyWith(fontFamily: fontFamily),
      bodySmall: bodySmall.copyWith(fontFamily: fontFamily),
      labelLarge: labelLarge.copyWith(fontFamily: fontFamily),
      labelMedium: labelMedium.copyWith(fontFamily: fontFamily),
      labelSmall: labelSmall.copyWith(fontFamily: fontFamily),
    );
  }
}
