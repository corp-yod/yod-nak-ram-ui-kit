import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/atoms/mya_icon.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

enum MyaButtonStyle { filled, tonalFilled, text, outlined, elevated }

enum MyaButtonSize { large, small }

enum MyaButtonTheme { primary, warning, error, success }

class MyaButton extends StatefulWidget {
  static const compType = 'myaButton';
  const MyaButton({
    super.key,
    required this.label,
    this.onPressed,
    this.style = MyaButtonStyle.filled,
    this.size = MyaButtonSize.large,
    this.theme = MyaButtonTheme.primary,
    this.prefixIconKey,
    this.suffixIconKey,
    this.minWidth,
    this.isDisabled = false,
    this.noLeftPadding = false,
    this.noRightPadding = false,
    this.prefixCountryCode,
    this.suffixCountryCode,
    this.isIgnorePrefixIconColor = false,
    this.isIgnoreSuffixIconColor = false,
  });

  final MyaButtonTheme theme;
  final MyaButtonStyle style;
  final MyaButtonSize size;
  final void Function()? onPressed;
  final String label;
  final String? prefixIconKey;
  final String? suffixIconKey;
  final double? minWidth;
  final bool isDisabled;
  final bool noLeftPadding;
  final bool noRightPadding;
  final String? prefixCountryCode;
  final String? suffixCountryCode;
  final bool isIgnorePrefixIconColor;
  final bool isIgnoreSuffixIconColor;

  @override
  State<MyaButton> createState() => MyaButtonState();
}

class MyaButtonState extends State<MyaButton> {
  late bool isLargeButton;
  bool isDisabled = false;
  bool isPressed = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    isLargeButton = widget.size == MyaButtonSize.large;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final RamTextStyle myaTextStyle = context.ramTextStyle;
    final RamThemeColors myaColors = context.ramThemeColors;

    // final String widgetKey = context.widgetKey;

    isDisabled = widget.isDisabled;

    final Set<WidgetState> states = isDisabled
        ? {WidgetState.disabled}
        : isPressed
        ? {WidgetState.pressed}
        : {};

    final ButtonStyle buttonStyle = _getButtonStyle(
      style: widget.style,
      isLargeButton: isLargeButton,
      width: widget.minWidth,
      colors: myaColors,
      theme: widget.theme,
      noLeftPadding: widget.noLeftPadding,
      noRightPadding: widget.noRightPadding,
    );

    final Color? foregroundColor = buttonStyle.foregroundColor!.resolve(states);

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
        label: 'myaButton',
        value: (!isDisabled).toString(),
        child: Opacity(
          opacity: isDisabled ? 0.5 : 1.0,
          child: ElevatedButton(
            onPressed: isDisabled ? null : widget.onPressed,
            style: buttonStyle,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.prefixIconKey != null ||
                    widget.prefixCountryCode != null)
                  Padding(
                    padding: EdgeInsets.only(
                      right: isLargeButton ? kGap6 : kGap4,
                    ),
                    // child: MyaIcon(
                    //   iconKey: widget.prefixIconKey!,
                    //   color: widget.isIgnorePrefixIconColor
                    //       ? null
                    //       : foregroundColor,
                    //   size: isLargeButton ? MyaIconSize.m : MyaIconSize.xs,
                    // ),
                  ),
                Flexible(
                  child: Text(
                    widget.label,
                    overflow: TextOverflow.ellipsis,
                    style: isLargeButton
                        ? myaTextStyle.bodyLargeExtraBold
                        : myaTextStyle.bodyMedium,
                  ),
                ),
                if (widget.suffixIconKey != null ||
                    widget.suffixCountryCode != null)
                  Padding(
                    padding: EdgeInsets.only(
                      left: isLargeButton ? kGap6 : kGap4,
                    ),
                    // child: MyaIcon(
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
  required MyaButtonStyle style,
  required bool isLargeButton,
  double? width,
  required RamThemeColors colors,
  required MyaButtonTheme theme,
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
    overlayColor: WidgetStateProperty.all(Colors.transparent),
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
    case (MyaButtonTheme.primary):
      switch (style) {
        case (MyaButtonStyle.filled):
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

        case (MyaButtonStyle.tonalFilled):
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

        case (MyaButtonStyle.outlined):
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
        case (MyaButtonStyle.text):
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
        case (MyaButtonStyle.elevated):
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
    case (MyaButtonTheme.warning):
      switch (style) {
        case (MyaButtonStyle.filled):
        case (MyaButtonStyle.tonalFilled): // Not available in design
        case (MyaButtonStyle.outlined): // Not available in design
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

        case (MyaButtonStyle.text):
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
        case (MyaButtonStyle.elevated):
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
    case (MyaButtonTheme.error):
      switch (style) {
        case (MyaButtonStyle.filled):
        case (MyaButtonStyle
            .tonalFilled): // Not available in design, default to filled
        case (MyaButtonStyle
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

        case (MyaButtonStyle.text):
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
        case (MyaButtonStyle.elevated):
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
    case (MyaButtonTheme.success):
      switch (style) {
        case (MyaButtonStyle.filled):
        case (MyaButtonStyle.tonalFilled): // Not available in design
        case (MyaButtonStyle.outlined): // Not available in design
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

        case (MyaButtonStyle.text):
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
        case (MyaButtonStyle.elevated):
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
