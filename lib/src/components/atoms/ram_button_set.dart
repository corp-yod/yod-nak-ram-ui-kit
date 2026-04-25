import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/atoms/mya_button.dart';

enum MyaButtonSetPosition { horizontal, vertical }

enum MyaButtonSetType { primary, secondary, errorOutline }

class MyaButtonSet extends StatelessWidget {
  static const compType = 'myaButtonSet';
  final MyaButtonSetPosition position;
  final MyaButtonSize? buttonSize;
  final MyaButtonSetType type;
  final MainAxisSize? mainAxisSize;
  //reset button
  final String? resetButtonText;
  final String? resetButtonIconPrefix;
  final String? resetButtonIconSuffix;
  final MyaButtonStyle? resetButtonStyle;
  final bool? stateResetButton;
  final void Function()? onPressedResetButton;
  //select button
  final String? selectButtonText;
  final String? selectButtonIconPrefix;
  final String? selectButtonIconSuffix;
  final bool? stateSelectButton;
  final void Function()? onPressedSelectButton;
  // more than 3 buttons
  final String? moreButtonText;
  final String? moreButtonIconPrefix;
  final String? moreButtonIconSuffix;
  final bool? stateMoreButton;
  final void Function()? onPressedMoreButton;

  // button countdown
  final bool selectCountDown;
  // final MyaButtonCountdownModel? selectCountdownModel;
  const MyaButtonSet({
    super.key,
    required this.position,
    this.type = MyaButtonSetType.primary,
    this.resetButtonText,
    this.selectButtonText,
    this.onPressedResetButton,
    this.onPressedSelectButton,
    this.stateSelectButton,
    this.stateResetButton,
    // this.selectCountdownModel,
    this.selectCountDown = false,
    this.resetButtonIconPrefix,
    this.resetButtonIconSuffix,
    this.selectButtonIconPrefix,
    this.selectButtonIconSuffix,
    this.moreButtonText,
    this.moreButtonIconPrefix,
    this.moreButtonIconSuffix,
    this.stateMoreButton,
    this.onPressedMoreButton,
    this.resetButtonStyle,
    this.buttonSize,
    this.mainAxisSize,
  });

  @override
  Widget build(BuildContext context) {
    return (position == MyaButtonSetPosition.horizontal)
        ? Row(
            children: [
              if (resetButtonText != null)
                Expanded(
                  child: MyaButton(
                    theme: MyaButtonTheme.primary,
                    style: resetButtonStyle ?? MyaButtonStyle.outlined,
                    size: buttonSize ?? MyaButtonSize.large,
                    prefixIconKey: resetButtonIconPrefix,
                    suffixIconKey: resetButtonIconSuffix,
                    isDisabled: stateResetButton ?? false,
                    label: resetButtonText!,
                    onPressed: onPressedResetButton,
                  ),
                ),
              if (resetButtonText != null &&
                  (selectButtonText != null || selectCountDown))
                SizedBox(width: 16),
              if (selectButtonText != null)
                Expanded(
                  child: MyaButton(
                    theme: type == MyaButtonSetType.errorOutline
                        ? MyaButtonTheme.error
                        : MyaButtonTheme.primary,
                    style: (type == MyaButtonSetType.primary)
                        ? MyaButtonStyle.filled
                        : MyaButtonStyle.tonalFilled,
                    size: buttonSize ?? MyaButtonSize.large,
                    prefixIconKey: selectButtonIconPrefix,
                    suffixIconKey: selectButtonIconSuffix,
                    isDisabled: stateSelectButton ?? false,
                    label: selectButtonText!,
                    onPressed: onPressedSelectButton,
                  ),
                ),
            ],
          )
        : Column(
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            children: [
              if (selectButtonText != null)
                MyaButton(
                  theme: type == MyaButtonSetType.errorOutline
                      ? MyaButtonTheme.error
                      : MyaButtonTheme.primary,
                  style: (type == MyaButtonSetType.primary)
                      ? MyaButtonStyle.filled
                      : MyaButtonStyle.tonalFilled,
                  size: buttonSize ?? MyaButtonSize.large,
                  minWidth: MediaQuery.sizeOf(context).width,
                  prefixIconKey: selectButtonIconPrefix,
                  suffixIconKey: selectButtonIconSuffix,
                  isDisabled: stateSelectButton ?? false,
                  label: selectButtonText!,
                  onPressed: onPressedSelectButton,
                ),
              if (resetButtonText != null &&
                  (selectButtonText != null || selectCountDown))
                SizedBox(height: 12),
              if (resetButtonText != null)
                MyaButton(
                  theme: MyaButtonTheme.primary,
                  style: resetButtonStyle ?? MyaButtonStyle.outlined,
                  size: buttonSize ?? MyaButtonSize.large,
                  minWidth: MediaQuery.sizeOf(context).width,
                  prefixIconKey: resetButtonIconPrefix,
                  suffixIconKey: resetButtonIconSuffix,
                  isDisabled: stateResetButton ?? false,
                  label: resetButtonText!,
                  onPressed: onPressedResetButton,
                ),
              if (selectButtonText != null &&
                  resetButtonText != null &&
                  moreButtonText != null)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: MyaButton(
                    theme: MyaButtonTheme.primary,
                    style: MyaButtonStyle.text,
                    size: buttonSize ?? MyaButtonSize.large,
                    minWidth: MediaQuery.sizeOf(context).width,
                    prefixIconKey: moreButtonIconPrefix,
                    suffixIconKey: moreButtonIconSuffix,
                    isDisabled: stateMoreButton ?? false,
                    label: moreButtonText!,
                    onPressed: onPressedMoreButton,
                  ),
                ),
            ],
          );
  }
}
