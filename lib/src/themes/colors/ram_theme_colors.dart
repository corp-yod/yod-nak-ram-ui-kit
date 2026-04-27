import 'package:flutter/material.dart';

@immutable
class RamThemeColors extends ThemeExtension<RamThemeColors> {
  RamThemeColors({
    required this.black,
    required this.white,
    required this.whiteBlack,
    required this.blackWhite,
    required this.blackWhiteOverlay,
    required this.mainOverlay,
    required this.imageOverlay,
    required this.neutral,
    required this.transparent,
    required this.bgBg,
    required this.bgContainer,
    required this.bgContainerSection,
    required this.bgBorderContainer,
    required this.bgContainerDisable,
    required this.bgBorderDisable,
    required this.textIconText,
    required this.textIconMidText,
    required this.textIconSubdued,
    required this.textIconOnOverlay,
    required this.textIconDisable,
    required this.textIconError,
    required this.textIconPrimary,
    required this.textIconWarning,
    required this.primaryPrimary,
    required this.primarySurface,
    required this.primaryPressed,
    required this.primaryOnPrimary,
    required this.primaryOnSurface,
    required this.primaryBorder,
    required this.secondarySecondary,
    required this.secondarySurface,
    required this.secondaryPressed,
    required this.secondaryOnSecondary,
    required this.secondaryOnSurface,
    required this.secondaryBorder,
    required this.successSuccess,
    required this.successOnSurface,
    required this.successSurface,
    required this.successOnSuccess,
    required this.successPressed,
    required this.successBorder,
    required this.warningWarning,
    required this.warningSurface,
    required this.warningPressed,
    required this.warningOnWarning,
    required this.warningOnSurface,
    required this.warningBorder,
    required this.errorError,
    required this.errorSurface,
    required this.errorPressed,
    required this.errorOnError,
    required this.errorOnSurface,
    required this.errorBorder,
    required this.notificationNotification,
    required this.elevationWeight1,
    required this.elevationWeight2,
    required this.staticHighlight,
    required this.skeletonBase,
    required this.skeletonHighlight,
  }) : colorMap = {
         'black': black,
         'white': white,
         'whiteBlack': whiteBlack,
         'blackWhite': blackWhite,
         'blackWhiteOverlay': blackWhiteOverlay,
         'mainOverlay': mainOverlay,
         'imageOverlay': imageOverlay,
         'neutral': neutral,
         'transparent': transparent,
         'bgBg': bgBg,
         'bgContainer': bgContainer,
         'bgContainerSection': bgContainerSection,
         'bgBorderContainer': bgBorderContainer,
         'bgContainerDisable': bgContainerDisable,
         'bgBorderDisable': bgBorderDisable,
         'textIconText': textIconText,
         'textIconMidText': textIconMidText,
         'textIconSubdued': textIconSubdued,
         'textIconOnOverlay': textIconOnOverlay,
         'textIconDisable': textIconDisable,
         'textIconError': textIconError,
         'textIconPrimary': textIconPrimary,
         'textIconWarning': textIconWarning,
         'primaryPrimary': primaryPrimary,
         'primarySurface': primarySurface,
         'primaryPressed': primaryPressed,
         'primaryOnPrimary': primaryOnPrimary,
         'primaryOnSurface': primaryOnSurface,
         'primaryBorder': primaryBorder,
         'secondarySecondary': secondarySecondary,
         'secondarySurface': secondarySurface,
         'secondaryPressed': secondaryPressed,
         'secondaryOnSecondary': secondaryOnSecondary,
         'secondaryOnSurface': secondaryOnSurface,
         'secondaryBorder': secondaryBorder,
         'successSuccess': successSuccess,
         'successOnSurface': successOnSurface,
         'successSurface': successSurface,
         'successOnSuccess': successOnSuccess,
         'successPressed': successPressed,
         'successBorder': successBorder,
         'warningWarning': warningWarning,
         'warningSurface': warningSurface,
         'warningPressed': warningPressed,
         'warningOnWarning': warningOnWarning,
         'warningOnSurface': warningOnSurface,
         'warningBorder': warningBorder,
         'errorError': errorError,
         'errorSurface': errorSurface,
         'errorPressed': errorPressed,
         'errorOnError': errorOnError,
         'errorOnSurface': errorOnSurface,
         'errorBorder': errorBorder,
         'notificationNotification': notificationNotification,
         'elevationWeight1': elevationWeight1,
         'elevationWeight2': elevationWeight2,
         'staticHighlight': staticHighlight,
         'skeletonBase': skeletonBase,
         'skeletonHighlight': skeletonHighlight,
       };

  Color? getColor(String colorToken) {
    return colorMap[colorToken];
  }

  // common
  final Color black;
  final Color white;
  final Color whiteBlack;
  final Color blackWhite;
  final Color blackWhiteOverlay;
  final Color mainOverlay;
  final Color imageOverlay;
  final Color neutral;
  final Color transparent;

  // common/background
  final Color bgBg;
  final Color bgContainer;
  final Color bgContainerSection;
  final Color bgBorderContainer;
  final Color bgContainerDisable;
  final Color bgBorderDisable;

  // common/text-icon
  final Color textIconText;
  final Color textIconMidText;
  final Color textIconSubdued;
  final Color textIconOnOverlay;
  final Color textIconDisable;
  final Color textIconError;
  final Color textIconPrimary;
  final Color textIconWarning;

  // category/primary
  final Color primaryPrimary;
  final Color primarySurface;
  final Color primaryPressed;
  final Color primaryOnPrimary;
  final Color primaryOnSurface;
  final Color primaryBorder;

  // category/secondary
  final Color secondarySecondary;
  final Color secondarySurface;
  final Color secondaryPressed;
  final Color secondaryOnSecondary;
  final Color secondaryOnSurface;
  final Color secondaryBorder;

  // category/warning
  final Color successSuccess;
  final Color successOnSurface;
  final Color successSurface;
  final Color successOnSuccess;
  final Color successPressed;
  final Color successBorder;

  // category/warning
  final Color warningWarning;
  final Color warningSurface;
  final Color warningPressed;
  final Color warningOnWarning;
  final Color warningOnSurface;
  final Color warningBorder;

  // category/error
  final Color errorError;
  final Color errorSurface;
  final Color errorPressed;
  final Color errorOnError;
  final Color errorOnSurface;
  final Color errorBorder;

  // category/notification
  final Color notificationNotification;

  // category/static
  final Color staticHighlight;


  // elevation
  final Color elevationWeight1;
  final Color elevationWeight2;

  // skeleton
  final Color skeletonBase;
  final Color skeletonHighlight;

  final Map<String, Color> colorMap;

  @override
  RamThemeColors copyWith({
    Color? black,
    Color? white,
    Color? whiteBlack,
    Color? blackWhite,
    Color? blackWhiteOverlay,
    Color? mainOverlay,
    Color? imageOverlay,
    Color? neutral,
    Color? transparent,
    Color? bgBg,
    Color? bgContainer,
    Color? bgContainerSection,
    Color? bgBorderContainer,
    Color? bgContainerDisable,
    Color? bgBorderDisable,
    Color? textIconText,
    Color? textIconMidText,
    Color? textIconSubdued,
    Color? textIconOnOverlay,
    Color? textIconDisable,
    Color? textIconError,
    Color? textIconPrimary,
    Color? textIconWarning,
    Color? primaryPrimary,
    Color? primarySurface,
    Color? primaryPressed,
    Color? primaryOnPrimary,
    Color? primaryOnSurface,
    Color? primaryBorder,
    Color? secondarySecondary,
    Color? secondarySurface,
    Color? secondaryPressed,
    Color? secondaryOnSecondary,
    Color? secondaryOnSurface,
    Color? secondaryBorder,
    Color? successSuccess,
    Color? successOnSurface,
    Color? successSurface,
    Color? successOnSuccess,
    Color? successPressed,
    Color? successBorder,
    Color? warningWarning,
    Color? warningSurface,
    Color? warningPressed,
    Color? warningOnWarning,
    Color? warningOnSurface,
    Color? warningBorder,
    Color? errorError,
    Color? errorSurface,
    Color? errorPressed,
    Color? errorOnError,
    Color? errorOnSurface,
    Color? errorBorder,
    Color? notificationNotification,
    Color? loyaltyTierEmerald,
    Color? elevationWeight1,
    Color? elevationWeight2,
    Color? staticHighlight,
    Color? skeletonBase,
    Color? skeletonHighlight,
  }) {
    //TODO: if implement copy with, must change declaration to nullable.
    return RamThemeColors(
      black: black ?? this.black,
      white: white ?? this.white,
      whiteBlack: whiteBlack ?? this.whiteBlack,
      blackWhite: blackWhite ?? this.blackWhite,
      blackWhiteOverlay: blackWhiteOverlay ?? this.blackWhiteOverlay,
      mainOverlay: mainOverlay ?? this.mainOverlay,
      imageOverlay: imageOverlay ?? this.imageOverlay,
      neutral: neutral ?? this.neutral,
      transparent: transparent ?? this.transparent,
      bgBg: bgBg ?? this.bgBg,
      bgContainer: bgContainer ?? this.bgContainer,
      bgContainerSection: bgContainerSection ?? this.bgContainerSection,
      bgBorderContainer: bgBorderContainer ?? this.bgBorderContainer,
      bgContainerDisable: bgContainerDisable ?? this.bgContainerDisable,
      bgBorderDisable: bgBorderDisable ?? this.bgBorderDisable,
      textIconText: textIconText ?? this.textIconText,
      textIconMidText: textIconMidText ?? this.textIconMidText,
      textIconSubdued: textIconSubdued ?? this.textIconSubdued,
      textIconOnOverlay: textIconOnOverlay ?? this.textIconOnOverlay,
      textIconDisable: textIconDisable ?? this.textIconDisable,
      textIconError: textIconError ?? this.textIconError,
      textIconPrimary: textIconPrimary ?? this.textIconPrimary,
      textIconWarning: textIconWarning ?? this.textIconWarning,
      errorOnError: errorOnError ?? this.errorOnError,
      errorOnSurface: errorOnSurface ?? this.errorOnSurface,
      errorBorder: errorBorder ?? this.errorBorder,
      notificationNotification:
          notificationNotification ?? this.notificationNotification,
      elevationWeight1: elevationWeight1 ?? this.elevationWeight1,
      elevationWeight2: elevationWeight2 ?? this.elevationWeight2,
      staticHighlight: staticHighlight ?? this.staticHighlight,
      skeletonBase: skeletonBase ?? this.skeletonBase,
      skeletonHighlight: skeletonHighlight ?? this.skeletonHighlight,
      primaryPrimary: primaryPrimary ?? this.primaryPrimary,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primarySurface: primarySurface ?? this.primarySurface,
      primaryOnPrimary: primaryOnPrimary ?? this.primaryOnPrimary,
      primaryOnSurface: primaryOnSurface ?? this.primaryOnSurface,
      primaryBorder: primaryBorder ?? this.primaryBorder,
      secondarySecondary: secondarySecondary ?? this.secondarySecondary,
      secondarySurface: secondarySurface ?? this.secondarySurface,
      secondaryPressed: secondaryPressed ?? this.secondaryPressed,
      secondaryOnSecondary: secondaryOnSecondary ?? this.secondaryOnSecondary,
      secondaryOnSurface: secondaryOnSurface ?? this.secondaryOnSurface,
      secondaryBorder: secondaryBorder ?? this.secondaryBorder,
      successSuccess: successSuccess ?? this.successSuccess,
      successOnSurface: successOnSurface ?? this.successOnSurface,
      successSurface: successSurface ?? this.successSurface,
      successOnSuccess: successOnSuccess ?? this.successOnSuccess,
      successPressed: successPressed ?? this.successPressed,
      successBorder: successBorder ?? this.successBorder,
      warningWarning: warningWarning ?? this.warningWarning,
      warningSurface: warningSurface ?? this.warningSurface,
      warningPressed: warningPressed ?? this.warningPressed,
      warningOnWarning: warningOnWarning ?? this.warningOnWarning,
      warningOnSurface: warningOnSurface ?? this.warningOnSurface,
      warningBorder: warningBorder ?? this.warningBorder,
      errorError: errorError ?? this.errorError,
      errorSurface: errorSurface ?? this.errorSurface,
      errorPressed: errorPressed ?? this.errorPressed,
    );
  }

  @override
  RamThemeColors lerp(ThemeExtension<RamThemeColors>? other, double t) {
    if (other is! RamThemeColors) {
      return this;
    }
    return RamThemeColors(
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      whiteBlack: Color.lerp(whiteBlack, other.whiteBlack, t)!,
      blackWhite: Color.lerp(blackWhite, other.blackWhite, t)!,
      blackWhiteOverlay: Color.lerp(
        blackWhiteOverlay,
        other.blackWhiteOverlay,
        t,
      )!,
      mainOverlay: Color.lerp(mainOverlay, other.mainOverlay, t)!,
      imageOverlay: Color.lerp(imageOverlay, other.imageOverlay, t)!,
      neutral: Color.lerp(neutral, other.neutral, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
      bgBg: Color.lerp(bgBg, other.bgBg, t)!,
      bgContainer: Color.lerp(bgContainer, other.bgContainer, t)!,
      bgContainerSection: Color.lerp(
        bgContainerSection,
        other.bgContainerSection,
        t,
      )!,
      bgBorderContainer: Color.lerp(
        bgBorderContainer,
        other.bgBorderContainer,
        t,
      )!,
      bgContainerDisable: Color.lerp(
        bgContainerDisable,
        other.bgContainerDisable,
        t,
      )!,
      bgBorderDisable: Color.lerp(bgBorderDisable, other.bgBorderDisable, t)!,

      textIconText: Color.lerp(textIconText, other.textIconText, t)!,
      textIconMidText: Color.lerp(textIconMidText, other.textIconMidText, t)!,
      textIconSubdued: Color.lerp(textIconSubdued, other.textIconSubdued, t)!,
      textIconOnOverlay: Color.lerp(
        textIconOnOverlay,
        other.textIconOnOverlay,
        t,
      )!,
      textIconDisable: Color.lerp(textIconDisable, other.textIconDisable, t)!,
      textIconError: Color.lerp(textIconError, other.textIconError, t)!,
      textIconPrimary: Color.lerp(textIconPrimary, other.textIconPrimary, t)!,
      textIconWarning: Color.lerp(textIconWarning, other.textIconWarning, t)!,
      errorOnError: Color.lerp(errorOnError, other.errorOnError, t)!,
      errorOnSurface: Color.lerp(errorOnSurface, other.errorOnSurface, t)!,
      errorBorder: Color.lerp(errorBorder, other.errorBorder, t)!,
      notificationNotification: Color.lerp(
        notificationNotification,
        other.notificationNotification,
        t,
      )!,
      elevationWeight1: Color.lerp(
        elevationWeight1,
        other.elevationWeight1,
        t,
      )!,
      elevationWeight2: Color.lerp(
        elevationWeight2,
        other.elevationWeight2,
        t,
      )!,
      staticHighlight: Color.lerp(staticHighlight, other.staticHighlight, t)!,

      skeletonBase: Color.lerp(skeletonBase, other.skeletonBase, t)!,
      skeletonHighlight: Color.lerp(
        skeletonHighlight,
        other.skeletonHighlight,
        t,
      )!,
      primaryPrimary: Color.lerp(primaryPrimary, other.primaryPrimary, t)!,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t)!,
      primarySurface: Color.lerp(primarySurface, other.primarySurface, t)!,
      primaryOnPrimary: Color.lerp(
        primaryOnPrimary,
        other.primaryOnPrimary,
        t,
      )!,
      primaryOnSurface: Color.lerp(
        primaryOnSurface,
        other.primaryOnSurface,
        t,
      )!,
      primaryBorder: Color.lerp(primaryBorder, other.primaryBorder, t)!,
      secondarySecondary: Color.lerp(
        secondarySecondary,
        other.secondarySecondary,
        t,
      )!,
      secondarySurface: Color.lerp(
        secondarySurface,
        other.secondarySurface,
        t,
      )!,
      secondaryPressed: Color.lerp(
        secondaryPressed,
        other.secondaryPressed,
        t,
      )!,
      secondaryOnSecondary: Color.lerp(
        secondaryOnSecondary,
        other.secondaryOnSecondary,
        t,
      )!,
      secondaryOnSurface: Color.lerp(
        secondaryOnSurface,
        other.secondaryOnSurface,
        t,
      )!,
      secondaryBorder: Color.lerp(secondaryBorder, other.secondaryBorder, t)!,
      successSuccess: Color.lerp(successSuccess, other.successSuccess, t)!,
      successOnSurface: Color.lerp(
        successOnSurface,
        other.successOnSurface,
        t,
      )!,
      successSurface: Color.lerp(successSurface, other.successSurface, t)!,
      successOnSuccess: Color.lerp(
        successOnSuccess,
        other.successOnSuccess,
        t,
      )!,
      successPressed: Color.lerp(successPressed, other.successPressed, t)!,
      successBorder: Color.lerp(successBorder, other.successBorder, t)!,
      warningWarning: Color.lerp(warningWarning, other.warningWarning, t)!,
      warningSurface: Color.lerp(warningSurface, other.warningSurface, t)!,
      warningPressed: Color.lerp(warningPressed, other.warningPressed, t)!,
      warningOnWarning: Color.lerp(
        warningOnWarning,
        other.warningOnWarning,
        t,
      )!,
      warningOnSurface: Color.lerp(
        warningOnSurface,
        other.warningOnSurface,
        t,
      )!,
      warningBorder: Color.lerp(warningBorder, other.warningBorder, t)!,
      errorError: Color.lerp(errorError, other.errorError, t)!,
      errorSurface: Color.lerp(errorSurface, other.errorSurface, t)!,
      errorPressed: Color.lerp(errorPressed, other.errorPressed, t)!,
    );
  }
}
