import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/atoms/mya_button.dart';
import 'package:yod_nak_ram_ui_kit/src/components/atoms/ram_button_set.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_extention.dart';
import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';

class RamStickyButton extends StatelessWidget {
  static const compType = 'ramStickyButton';
  final bool? isDivider;
  final bool isShowContent;
  final bool isAvatar;
  // ram sticky content display
  final String? imageDisplay;
  final Color? imageColor;
  final String? iconTitleSuffixDisplay;
  final String? iconTitlePrefixDisplay;
  final bool? isIconTitlePrefixBtn;
  final Color? iconTitleSuffixButtonBorderColor;
  final Color? iconTitleSuffixButtonColor;
  final String? titleDisplay;
  final String? descriptionDisplay;
  final String? iconDescriptionSuffixDisplay;
  final String? iconDescriptionPrefixDisplay;
  final void Function()? onPressedIconTitleSuffixButton;
  // caption balance
  final String? caption;
  final String? balanceAmountText;
  final String? balanceUnitText;
  final String? additionalText;
  // icon balance
  final String? iconBalance;
  final bool iconBalancePadding;
  final Alignment? iconBalanceAlignment;
  final bool? iconBalanceButtonState;
  final void Function()? onPressedIconBalanceButton;
  // ram button set
  final MyaButtonSetPosition? positionBtn;
  final MyaButtonSetType? typeBtn;

  //btn reset
  final String? resetButtonText;
  final String? resetButtonIconPrefix;
  final String? resetButtonIconSuffix;
  final MyaButtonStyle? resetButtonStyle;
  final bool? stateResetButton;
  final void Function()? onPressedResetButton;
  //btn select
  final String? selectButtonText;
  final String? selectButtonIconPrefix;
  final String? selectButtonIconSuffix;
  final void Function()? onPressedSelectButton;
  final bool? stateSelectButton;
  final bool selectCountDown;
  final bool onKeyboard;
  final CrossAxisAlignment? alignment;
  final bool isIgnoreIconTitlePrefixColor;
  const RamStickyButton({
    super.key,
    this.isDivider = true,
    this.imageDisplay,
    this.iconTitleSuffixDisplay,
    this.iconTitlePrefixDisplay,
    this.isIconTitlePrefixBtn,
    this.iconTitleSuffixButtonBorderColor,
    this.iconTitleSuffixButtonColor,
    this.titleDisplay,
    this.descriptionDisplay,
    this.iconDescriptionSuffixDisplay,
    this.iconDescriptionPrefixDisplay,
    this.onPressedIconTitleSuffixButton,
    this.caption,
    this.balanceAmountText,
    this.balanceUnitText,
    this.iconBalance,
    this.iconBalanceButtonState,
    this.onPressedIconBalanceButton,
    this.positionBtn,
    this.typeBtn,
    this.resetButtonText,
    this.resetButtonIconPrefix,
    this.resetButtonIconSuffix,
    this.resetButtonStyle,
    this.stateResetButton,
    this.onPressedResetButton,
    this.selectButtonText,
    this.selectButtonIconPrefix,
    this.selectButtonIconSuffix,
    this.onPressedSelectButton,
    this.stateSelectButton,
    this.selectCountDown = false,
    this.isShowContent = true,
    this.additionalText,
    this.iconBalancePadding = true,
    this.iconBalanceAlignment,
    this.onKeyboard = false,
    this.isAvatar = true,
    this.imageColor,
    this.alignment,
    this.isIgnoreIconTitlePrefixColor = false,
  });

  @override
  Widget build(BuildContext context) {
    final RamThemeColors ramColors = context.ramThemeColors;
    final RamTextStyle ramTextStyle = context.ramTextStyle;
    final double bottomSafeArea = onKeyboard
        ? context.bottomSafeAreaWithKeyboard
        : context.bottomSafeArea;

    return Container(
      color: ramColors.bgContainer,
      padding: EdgeInsets.only(bottom: bottomSafeArea),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isDivider!)
            Divider(
              height: 1,
              thickness: 1,
              color: ramColors.bgBorderContainer,
            ),

          if (resetButtonText != null || selectButtonText != null)
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  kPadding7,
                  kPadding7,
                  kPadding7,
                  0,
                ),
                child: MyaButtonSet(
                  onPressedResetButton: onPressedResetButton,
                  onPressedSelectButton: onPressedSelectButton,
                  stateSelectButton: stateSelectButton,
                  position: positionBtn ?? MyaButtonSetPosition.horizontal,
                  resetButtonText: resetButtonText,
                  selectButtonText: selectButtonText,
                  resetButtonIconPrefix: resetButtonIconPrefix,
                  resetButtonIconSuffix: resetButtonIconSuffix,
                  resetButtonStyle: resetButtonStyle,
                  stateResetButton: stateResetButton,
                  selectButtonIconPrefix: selectButtonIconPrefix,
                  selectButtonIconSuffix: selectButtonIconSuffix,
                  type: typeBtn ?? MyaButtonSetType.primary,
                  selectCountDown: selectCountDown,
                  // selectCountdownModel: selectCountdownModel,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
