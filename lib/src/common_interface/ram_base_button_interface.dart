import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/components.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

typedef RamButtonCallback = void Function();

abstract class RamButtonBase extends StatefulWidget {
  const RamButtonBase({
    super.key,
    required this.label,
    this.onPressed,
    this.style = RamButtonStyle.filled,
    this.size = RamButtonSize.large,
    this.theme = RamButtonTheme.primary,
    this.prefixIconKey,
    this.suffixIconKey,
    this.minWidth,
    this.isDisabled = false,
    this.noLeftPadding = false,
    this.noRightPadding = false,
    this.isIgnorePrefixIconColor = false,
    this.isIgnoreSuffixIconColor = false,
  });

  final String label;
  final void Function()? onPressed;
  final RamButtonStyle style;
  final RamButtonSize size;
  final RamButtonTheme theme;
  final String? prefixIconKey;
  final String? suffixIconKey;
  final double? minWidth;
  final bool isDisabled;
  final bool noLeftPadding;
  final bool noRightPadding;
  final bool isIgnorePrefixIconColor;
  final bool isIgnoreSuffixIconColor;

  @override
  State<RamButtonBase> createState() => _RamButtonBaseState();
}

class _RamButtonBaseState extends State<RamButtonBase> {
  late final bool isLargeButton;
  bool isDisabled = false;
  bool isPressed = false;

  ButtonStyle getButtonStyle(BuildContext context) {
    final ramThemeColors = context.ramThemeColors;
    final ButtonStyle buttonStyle = _getButtonStyle(
      style: widget.style,
      isLargeButton: isLargeButton,
      width: widget.minWidth,
      colors: ramThemeColors,
      theme: widget.theme,
      noLeftPadding: widget.noLeftPadding,
      noRightPadding: widget.noRightPadding,
    );

    return buttonStyle;
  }

  @override
  void initState() {
    isLargeButton = widget.size == RamButtonSize.large;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ramTextStyle = context.ramTextStyle;
    final String widgetKey = context.widget.key.toString();

    isDisabled = widget.isDisabled;

    final Set<WidgetState> states = isDisabled
        ? {WidgetState.disabled}
        : isPressed
        ? {WidgetState.pressed}
        : {};

    final Color? foregroundColor = getButtonStyle(
      context,
    ).foregroundColor!.resolve(states);

    return GestureDetector(
      //Need gesture detector because ChmIcon() does not inherit MaterialPropertyState, like Icon() in Flutter.
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Semantics(
        label: 'ramButton',
        value: (!isDisabled).toString(),
        child: Opacity(
          opacity: isDisabled ? 0.5 : 1.0,
          child: ElevatedButton(
            onPressed: isDisabled ? null : widget.onPressed,
            style: getButtonStyle(context),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.prefixIconKey != null)
                  Padding(
                    padding: EdgeInsets.only(
                      right: isLargeButton ? kGap6 : kGap4,
                    ),
                    // child: MyaIcon(
                    //   key: ValueKey(
                    //     '$widgetKey/${MyaIcon.compType}/prefixIcon',
                    //   ),
                    //   iconKey: widget.prefixIconKey!,
                    //   color: widget.isIgnorePrefixIconColor
                    //       ? null
                    //       : foregroundColor,
                    //   size: isLargeButton ? MyaIconSize.m : MyaIconSize.xs,
                    // ),
                  ),
                Flexible(
                  child: Text(
                    key: ValueKey('$widgetKey/labelText'),
                    widget.label,
                    overflow: TextOverflow.ellipsis,
                    style: isLargeButton
                        ? ramTextStyle.bodyLargeExtraBold.copyWith(
                            color: widget.style == RamButtonStyle.outlined
                                ? foregroundColor
                                : null,
                          )
                        : ramTextStyle.bodyMedium.copyWith(
                            color: widget.style == RamButtonStyle.outlined
                                ? foregroundColor
                                : null,
                          ),
                  ),
                ),
                if (widget.suffixIconKey != null)
                  Padding(
                    padding: EdgeInsets.only(
                      left: isLargeButton ? kGap6 : kGap4,
                    ),
                    // child: MyaIcon(
                    //   key: ValueKey(
                    //     '$widgetKey/${MyaIcon.compType}/suffixIcon',
                    //   ),
                    //   iconKey: widget.suffixIconKey!,
                    //   color: widget.isIgnoreSuffixIconColor
                    //       ? null
                    //       : foregroundColor,
                    //   size: isLargeButton ? MyaIconSize.m : MyaIconSize.xs,
                    // ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ButtonStyle _getButtonStyle({
  required RamButtonStyle style,
  required bool isLargeButton,
  double? width,
  required RamThemeColors colors,
  required RamButtonTheme theme,
  bool noLeftPadding = false,
  bool noRightPadding = false,
}) {
  final commonButtonStyle = ButtonStyle(
    padding: WidgetStateProperty.all(
      EdgeInsets.only(
        left: noLeftPadding
            ? 0
            : isLargeButton
            ? kPadding7
            : kPadding6,
        top: 0,
        right: noRightPadding
            ? 0
            : isLargeButton
            ? kPadding7
            : kPadding6,
        bottom: 0,
      ),
    ),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    splashFactory: NoSplash.splashFactory,
    overlayColor: WidgetStateProperty.all(colors.transparent),
    elevation: WidgetStateProperty.all(0),
    animationDuration: Duration.zero,
    fixedSize: WidgetStateProperty.all(
      Size.fromHeight(isLargeButton ? 48 : 32),
    ),
    minimumSize: WidgetStateProperty.all(
      Size(
        width ?? (isLargeButton ? 100 : 66),
        0,
      ), // +8 as actual size is smaller. Root cause tbd.
    ),
  );

  final commonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(isLargeButton ? kRadius4 : kRadius3),
  );

  switch (theme) {
    case (RamButtonTheme.primary):
      switch (style) {
        case (RamButtonStyle.filled):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .primaryOnPrimary; // Defer to the widget's default.
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.primaryPressed;
              }
              return colors.primaryPrimary; // Defer to the widget's default.
            }),
          );

        case (RamButtonStyle.tonalFilled):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .secondaryOnSecondary; // Defer to the widget's default.
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.secondaryPressed;
              }
              return colors
                  .secondarySecondary; // Defer to the widget's default.
            }),
          );

        case (RamButtonStyle.outlined):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.resolveWith((states) {
              return commonShape.copyWith(
                side: BorderSide(width: 1, color: colors.secondaryOnSurface),
              );
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return colors
                  .secondaryOnSurface; // Defer to the widget's default.
            }),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.secondaryPressed;
              }
              return colors.transparent; // Defer to the widget's default.
            }),
          );
        case (RamButtonStyle.text):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return colors.primaryPressed;
                }
                return colors
                    .primaryOnSurface; // Defer to the widget's default.
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return colors.transparent; // Defer to the widget's default.
            }),
          );
        case (RamButtonStyle.elevated):
          return commonButtonStyle.copyWith(
            elevation: WidgetStateProperty.resolveWith<double?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return 0;
              }
              return 2;
            }),
            shape: WidgetStateProperty.all(commonShape),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .primaryOnPrimary; // Defer to the widget's default.
              },
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.primaryPressed;
              }
              return colors.primaryPrimary; // Defer to the widget's default.
            }),
          );
      }
    case (RamButtonTheme.warning):
      switch (style) {
        case (RamButtonStyle.filled):
        case (RamButtonStyle.tonalFilled): // Not available in design
        case (RamButtonStyle.outlined): // Not available in design
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.warningPressed;
              }
              return colors.warningWarning; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .warningOnWarning; // Defer to the widget's default.
              },
            ),
          );

        case (RamButtonStyle.text):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return colors.transparent; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return colors.warningPressed;
                }
                return colors
                    .warningOnSurface; // Defer to the widget's default.
              },
            ),
          );
        case (RamButtonStyle.elevated):
          return commonButtonStyle.copyWith(
            elevation: WidgetStateProperty.resolveWith<double?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return 0;
              }
              return 2;
            }),
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.warningPressed;
              }
              return colors.warningWarning; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .warningOnWarning; // Defer to the widget's default.
              },
            ),
          );
      }
    case (RamButtonTheme.error):
      switch (style) {
        case (RamButtonStyle.filled):
        case (RamButtonStyle
            .tonalFilled): // Not available in design, default to filled
        case (RamButtonStyle
            .outlined): // Not available in design, default to filled
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.errorPressed;
              }
              return colors.errorError; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors.errorOnError; // Defer to the widget's default.
              },
            ),
          );

        case (RamButtonStyle.text):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return colors.transparent; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return colors.errorPressed;
                }
                return colors.textIconError; // Defer to the widget's default.
              },
            ),
          );
        case (RamButtonStyle.elevated):
          return commonButtonStyle.copyWith(
            elevation: WidgetStateProperty.resolveWith<double?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return 0;
              }
              return 2;
            }),
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.errorPressed;
              }
              return colors.errorError; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors.errorOnError; // Defer to the widget's default.
              },
            ),
          );
      }
    case (RamButtonTheme.success):
      switch (style) {
        case (RamButtonStyle.filled):
        case (RamButtonStyle.tonalFilled): // Not available in design
        case (RamButtonStyle.outlined): // Not available in design
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.successPressed;
              }
              return colors.successSuccess; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .successOnSuccess; // Defer to the widget's default.
              },
            ),
          );

        case (RamButtonStyle.text):
          return commonButtonStyle.copyWith(
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              return colors.transparent; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return colors.successPressed;
                }
                return colors
                    .successOnSurface; // Defer to the widget's default.
              },
            ),
          );
        case (RamButtonStyle.elevated):
          return commonButtonStyle.copyWith(
            elevation: WidgetStateProperty.resolveWith<double?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return 0;
              }
              return 2;
            }),
            shape: WidgetStateProperty.all(commonShape),
            backgroundColor: WidgetStateProperty.resolveWith<Color?>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.pressed)) {
                return colors.successPressed;
              }
              return colors.successSuccess; // Defer to the widget's default.
            }),
            foregroundColor: WidgetStateProperty.resolveWith<Color?>(
              // Color of text and icon
              (Set<WidgetState> states) {
                return colors
                    .successOnSuccess; // Defer to the widget's default.
              },
            ),
          );
      }
  }
}
