// import 'package:flutter/material.dart';

// enum MyaIconSize { xs, ss, s, m, l, xl, xxl }

// class MyaIcon extends StatefulWidget {
//   static const compType = 'myaIcon';
//   const MyaIcon({
//     super.key,
//     required this.iconKey,
//     this.size = MyaIconSize.m,
//     this.color,
//   });

//   final MyaIconSize size;
//   final Color? color;
//   final String iconKey;

//   @override
//   State<MyaIcon> createState() => _MyaIconState();
// }

// class _MyaIconState extends State<MyaIcon> {
//   late double iconSize;

//   @override
//   void initState() {
//     super.initState();

//     switch (widget.size) {
//       case (MyaIconSize.xs):
//         iconSize = 16;
//       case (MyaIconSize.ss): // semi-small
//         iconSize = 18;
//       case (MyaIconSize.s):
//         iconSize = 20;
//       case (MyaIconSize.m):
//         iconSize = 24;
//       case (MyaIconSize.l):
//         iconSize = 32;
//       case (MyaIconSize.xl):
//         iconSize = 40;
//       case (MyaIconSize.xxl):
//         iconSize = 48;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return UnconstrainedBox(
//       child: BaseImage(
//         imageKey: widget.iconKey,
//         width: iconSize,
//         height: iconSize,
//         color: widget.color,
//         placeHolderType: PlaceHolderType.icon,
//       ),
//     );
//   }
// }
