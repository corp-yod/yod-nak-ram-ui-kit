// import 'package:flutter/material.dart';
// import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';

// enum RamButtonIconStyle { filled, tonalFilled, iconOnly, outlined, elevated }

// enum RamButtonIconSize { large, small }

// enum RamButtonIconTheme { primary, warning, error, success, overlay }

// class RamButtonIcon extends StatefulWidget {
//   static const compType = 'ramButtonIcon';
//   const RamButtonIcon({
//     super.key,
//     required this.onPressed,
//     this.style = RamButtonIconStyle.filled,
//     this.size = RamButtonIconSize.large,
//     this.theme = RamButtonIconTheme.primary,
//     required this.iconKey,
//     this.isDisabled = false,
//     this.alignment = Alignment.center,
//   });

//   final RamButtonIconTheme theme;
//   final RamButtonIconStyle style;
//   final RamButtonIconSize size;
//   final void Function()? onPressed;
//   final String iconKey;
//   final AlignmentGeometry alignment;
//   final bool isDisabled;

//   @override
//   State<RamButtonIcon> createState() => _RamButtonIconState();
// }

// class _RamButtonIconState extends State<RamButtonIcon> {
//   late bool isLargeButton;
//   bool isDisabled = false;
//   bool isPressed = false;

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   void initState() {
//     isLargeButton = widget.size == RamButtonIconSize.large;

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final RamThemeColors ramColors = context.ramThemeColors;

//     // final widgetKey = context.widgetKey;

//     isDisabled = widget.isDisabled;

//     final Set<WidgetState> states = isDisabled
//         ? {WidgetState.disabled}
//         : isPressed
//         ? {WidgetState.pressed}
//         : {};

//     final ButtonStyle buttonStyle = _getIconButtonStyle(
//       style: widget.style,
//       isLargeButton: isLargeButton,
//       colors: ramColors,
//       theme: widget.theme,
//       alignment: widget.alignment,
//     );

//     final Color? foregroundColor = buttonStyle.foregroundColor!.resolve(states);

//     return GestureDetector(
//       //Need gesture detector because ChmIcon() does not inherit MaterialPropertyState, like Icon() in Flutter.
//       onTapDown: (_) {
//         setState(() {
//           isPressed = true;
//         });
//       },
//       onTapUp: (_) {
//         setState(() {
//           isPressed = false;
//         });
//       },
//       onTapCancel: () {
//         setState(() {
//           isPressed = false;
//         });
//       },
//       child: Opacity(
//         opacity: isDisabled ? 0.5 : 1.0,
//         child: SizedBox(
//           width: isLargeButton ? 48 : 36,
//           height: isLargeButton ? 48 : 36,
//           child: ElevatedButton(
//             onPressed: isDisabled ? null : widget.onPressed,
//             style: buttonStyle,
//             child: Icon(
//               // widget.iconKey,
//               Icons.add,
//               color: foregroundColor,
//               size: isLargeButton ? 24 : 18,
//             ),
//             // RamIcon(
//             //   key: ValueKey('$widgetKey/${RamIcon.compType}'),
//             //   iconKey: widget.iconKey,
//             //   color: foregroundColor,
//             //   size: isLargeButton ? RamIconSize.m : RamIconSize.s,
//             // ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ButtonStyle _getIconButtonStyle({
//   required RamButtonIconStyle style,
//   required bool isLargeButton,
//   required RamThemeColors colors,
//   required RamButtonIconTheme theme,
//   required AlignmentGeometry alignment,
// }) {
//   final commonButtonStyle = ButtonStyle(
//     padding: WidgetStateProperty.all(EdgeInsets.zero),
//     splashFactory: NoSplash.splashFactory,
//     overlayColor: WidgetStateProperty.all(Colors.transparent),
//     elevation: WidgetStateProperty.all(0),
//     animationDuration: Duration.zero,
//     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//     alignment: alignment,
//   );

//   final commonShape = RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(isLargeButton ? kRadius4 : kRadius3),
//   );

//   switch (theme) {
//     case (RamButtonIconTheme.primary):
//       switch (style) {
//         case (RamButtonIconStyle.filled):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .primaryOnPrimary; // Defer to the widget's default.
//               },
//             ),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.primaryPressed;
//               }
//               return colors.primaryPrimary; // Defer to the widget's default.
//             }),
//           );

//         case (RamButtonIconStyle.tonalFilled):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .secondaryOnSecondary; // Defer to the widget's default.
//               },
//             ),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.secondaryPressed;
//               }
//               return colors
//                   .secondarySecondary; // Defer to the widget's default.
//             }),
//           );

//         case (RamButtonIconStyle.outlined):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.resolveWith((states) {
//               return commonShape.copyWith(
//                 side: BorderSide(width: 1, color: colors.secondaryOnSurface),
//               );
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               return colors
//                   .secondaryOnSurface; // Defer to the widget's default.
//             }),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.secondaryPressed;
//               }
//               return colors.transparent; // Defer to the widget's default.
//             }),
//           );
//         case (RamButtonIconStyle.iconOnly):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 if (states.contains(WidgetState.pressed)) {
//                   return colors.secondaryPressed;
//                 }

//                 return colors
//                     .secondaryOnSecondary; // Defer to the widget's default.
//               },
//             ),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               return colors.transparent; // Defer to the widget's default.
//             }),
//           );
//         case (RamButtonIconStyle.elevated):
//           return commonButtonStyle.copyWith(
//             elevation: WidgetStateProperty.resolveWith<double?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return 0;
//               }
//               return 2;
//             }),
//             shape: WidgetStateProperty.all(commonShape),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .primaryOnPrimary; // Defer to the widget's default.
//               },
//             ),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.primaryPressed;
//               }
//               return colors.primaryPrimary; // Defer to the widget's default.
//             }),
//           );
//       }
//     case (RamButtonIconTheme.warning):
//       switch (style) {
//         case (RamButtonIconStyle.filled):
//         case (RamButtonIconStyle.tonalFilled): // Not available in design
//         case (RamButtonIconStyle.outlined): // Not available in design
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.warningPressed;
//               }
//               return colors.warningWarning; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .warningOnWarning; // Defer to the widget's default.
//               },
//             ),
//           );

//         case (RamButtonIconStyle.iconOnly):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               return colors.transparent; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 if (states.contains(WidgetState.pressed)) {
//                   return colors.warningPressed;
//                 }

//                 return colors
//                     .warningOnSurface; // Defer to the widget's default.
//               },
//             ),
//           );
//         case (RamButtonIconStyle.elevated):
//           return commonButtonStyle.copyWith(
//             elevation: WidgetStateProperty.resolveWith<double?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return 0;
//               }
//               return 2;
//             }),
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.warningPressed;
//               }
//               return colors.warningWarning; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .warningOnWarning; // Defer to the widget's default.
//               },
//             ),
//           );
//       }
//     case (RamButtonIconTheme.error):
//       switch (style) {
//         case (RamButtonIconStyle.filled):
//         case (RamButtonIconStyle
//             .tonalFilled): // Not available in design, default to filled
//         case (RamButtonIconStyle
//             .outlined): // Not available in design, default to filled
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.errorPressed;
//               }
//               return colors.errorError; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors.errorOnError; // Defer to the widget's default.
//               },
//             ),
//           );

//         case (RamButtonIconStyle.iconOnly):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               return colors.transparent; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 if (states.contains(WidgetState.pressed)) {
//                   return colors.errorPressed;
//                 }

//                 return colors.errorOnSurface; // Defer to the widget's default.
//               },
//             ),
//           );
//         case (RamButtonIconStyle.elevated):
//           return commonButtonStyle.copyWith(
//             elevation: WidgetStateProperty.resolveWith<double?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return 0;
//               }
//               return 2;
//             }),
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.errorPressed;
//               }
//               return colors.errorError; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors.errorOnError; // Defer to the widget's default.
//               },
//             ),
//           );
//       }
//     case (RamButtonIconTheme.success):
//       switch (style) {
//         case (RamButtonIconStyle.filled):
//         case (RamButtonIconStyle.tonalFilled): // Not available in design
//         case (RamButtonIconStyle.outlined): // Not available in design
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.successPressed;
//               }
//               return colors.successSuccess; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .successOnSuccess; // Defer to the widget's default.
//               },
//             ),
//           );

//         case (RamButtonIconStyle.iconOnly):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               return colors.transparent; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 if (states.contains(WidgetState.pressed)) {
//                   return colors.successPressed;
//                 }
//                 return colors
//                     .successOnSurface; // Defer to the widget's default.
//               },
//             ),
//           );
//         case (RamButtonIconStyle.elevated):
//           return commonButtonStyle.copyWith(
//             elevation: WidgetStateProperty.resolveWith<double?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return 0;
//               }
//               return 2;
//             }),
//             shape: WidgetStateProperty.all(commonShape),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.successPressed;
//               }
//               return colors.successSuccess; // Defer to the widget's default.
//             }),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors
//                     .successOnSuccess; // Defer to the widget's default.
//               },
//             ),
//           );
//       }
//     case (RamButtonIconTheme.overlay):
//       switch (style) {
//         case RamButtonIconStyle.tonalFilled:
//         case RamButtonIconStyle.iconOnly:
//         case RamButtonIconStyle.outlined:
//         case RamButtonIconStyle.elevated:
//         case (RamButtonIconStyle.filled):
//           return commonButtonStyle.copyWith(
//             shape: WidgetStateProperty.all(commonShape),
//             foregroundColor: WidgetStateProperty.resolveWith<Color?>(
//               // Color of text and icon
//               (Set<WidgetState> states) {
//                 return colors.white; // Defer to the widget's default.
//               },
//             ),
//             backgroundColor: WidgetStateProperty.resolveWith<Color?>((
//               Set<WidgetState> states,
//             ) {
//               if (states.contains(WidgetState.pressed)) {
//                 return colors.mainOverlay;
//               }
//               return colors.imageOverlay; // Defer to the widget's default.
//             }),
//           );
//       }
//   }
// }
