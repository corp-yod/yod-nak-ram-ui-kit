// import 'package:flutter/material.dart';
// import 'package:yod_nak_ram_ui_kit/src/theme/colors/color_tokens.dart';

// class RamGradients {
//   // Private constructor to prevent instantiation
//   RamGradients._();

//   static const containerCommonPrimary = LinearGradient(
//     begin: Alignment(-1, -0.1),
//     end: Alignment(1.00, 0.10),
//     colors: [kColorPrimary90, kColorPrimary60],
//   );

//   static const containerCommonPoint = LinearGradient(
//     begin: Alignment(1.00, 0.10),
//     end: Alignment(-1, -0.1),
//     colors: [kColorPoints40, kColorPoints60],
//   );

//   static const containerCommonPrivilege = LinearGradient(
//     begin: Alignment(1.00, 0.10),
//     end: Alignment(-1, -0.1),
//     colors: [kColorPrivilege40, kColorPrivilege60],
//   );

//   static const containerCommonStore = LinearGradient(
//     begin: Alignment(-1, -0.1),
//     end: Alignment(1.00, 0.10),
//     colors: [kColorStore80, kColorStore60],
//   );

//   static const containerCommonEntertainment = LinearGradient(
//     begin: Alignment(-1, -0.1),
//     end: Alignment(1.00, 0.10),
//     colors: [kColorEntertainment90, kColorEntertainment60],
//   );

//   static const containerCommonFibre = LinearGradient(
//     begin: Alignment(-0.72, -0.69),
//     end: Alignment(0.72, 0.69),
//     colors: [kColorNeutral50, kColorNeutral15],
//   );

//   static const containerCommon3bbFibre = LinearGradient(
//     begin: Alignment(-1, -0.1),
//     end: Alignment(1.00, 0.10),
//     colors: [kColorGreen3bb70, kColorOrange3bb60],
//   );

//   static const containerCommonVb = LinearGradient(
//     end: Alignment(1, 0.87),
//     colors: [kColorWhite100, kColorVb60],
//   );

//   static const containerTierSerenade = LinearGradient(
//     begin: Alignment(0.99, -0.15),
//     end: Alignment(-0.99, 0.15),
//     colors: [
//       kColorPrivilege30,
//       kColorPrivilege60,
//       kColorPrivilege60,
//       kColorPrivilege30
//     ],
//   );

//   static const containerTierPlatinum = LinearGradient(
//     begin: Alignment(0.99, -0.15),
//     end: Alignment(-0.99, 0.15),
//     colors: [
//       kColorPlatinum80,
//       kColorPlatinum95,
//       kColorPlatinum95,
//       kColorPlatinum80
//     ],
//   );

//   static const containerTierGold = LinearGradient(
//     begin: Alignment(0.99, -0.15),
//     end: Alignment(-0.99, 0.15),
//     colors: [
//       kColorGold60,
//       kColorGold90,
//       kColorGold90,
//       kColorGold60,
//     ],
//   );

//   static const containerTierEmerald = LinearGradient(
//     begin: Alignment(0.99, -0.15),
//     end: Alignment(-0.99, 0.15),
//     colors: [
//       kColorEmerald60,
//       kColorEmerald90,
//       kColorEmerald90,
//       kColorEmerald60
//     ],
//   );

//   static const containerTierCustomer = LinearGradient(
//     begin: Alignment(0.99, -0.15),
//     end: Alignment(-0.99, 0.15),
//     colors: [
//       kColorAisCustomer60,
//       kColorAisCustomer90,
//       kColorAisCustomer90,
//       kColorAisCustomer60
//     ],
//   );

//   static const containerProductBestOffer = LinearGradient(
//     begin: Alignment(1.00, 0.00),
//     end: Alignment(-1, 0),
//     colors: [
//       kColorDanger60,
//       kColorEntertainment60,
//     ],
//   );

//   static const containerProductExclusive = LinearGradient(
//     begin: Alignment(1.00, -0.06),
//     end: Alignment(-1, 0.06),
//     colors: [kColorSecondary40, kColorSecondary70],
//   );
//   static const containerProductDelight = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorEntertainment60, kColorEntertainment50],
//   );

//   static const containerProductTrust = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorFibre60, kColorPrivilege50],
//   );

//   static const containerProductEase = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorFibre60, kColorSuccess60],
//   );

//   static const containerProductEmpower = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorPrimary60, kColorSuccess60],
//   );

//   static const containerProductCalm = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorFibre30, kColorSuccess80],
//   );

//   static const containerProductInspire = LinearGradient(
//     begin: Alignment(-1.00, 0.00),
//     end: Alignment(1, 0),
//     colors: [kColorSuccess80, kColorStore60],
//   );

//   static const containerProductStore = LinearGradient(
//     begin: Alignment(-0.96, 0.3),
//     end: Alignment(0.96, -0.30),
//     colors: [kColorPrimary95, kColorStore90],
//   );

//   static const containerProductFinance = LinearGradient(
//     begin: Alignment(-0.15, 1.00),
//     end: Alignment(1.00, 1.00),
//     colors: [kColorPrimary60, kColorEmerald70],
//   );

//   static const bgPrimaryDiagonalRight = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [kColorPrimary80, kColorPrimary99],
//   );

//   static const bgPrimaryDiagonalLeft = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [
//       kColorPrimary99,
//       kColorPrimary80,
//     ],
//   );

//   static const bgPrimaryVertical = LinearGradient(
//     begin: Alignment(0.00, -1.00),
//     end: Alignment(0, 1),
//     colors: [kColorPrimary99, kColorPrimary80],
//   );

//   static const bgGoldDiagonalLeft = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [kColorGold95, kColorGold60],
//   );

//   static const bgGoldDiagonalRight = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [kColorGold60, kColorGold95],
//   );

//   static const bgGoldVertical = LinearGradient(
//     begin: Alignment(0.00, -1.00),
//     end: Alignment(0, 1),
//     colors: [kColorGold95, kColorGold60],
//   );

//   static const bgCustomerDiagonalLeft = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [kColorAisCustomer95, kColorAisCustomer60],
//   );

//   static const bgCustomerDiagonalRight = LinearGradient(
//     begin: Alignment(0.98, -0.21),
//     end: Alignment(-0.98, 0.21),
//     colors: [kColorAisCustomer60, kColorAisCustomer95],
//   );

//   static const bgCustomerVertical = LinearGradient(
//     begin: Alignment(0.00, -1.00),
//     end: Alignment(0, 1),
//     colors: [kColorAisCustomer95, kColorAisCustomer60],
//   );

//   static const skeletonLight = LinearGradient(
//     begin: Alignment(0.97, -0.25),
//     end: Alignment(-0.97, 0.25),
//     colors: [kColorNeutral80, kColorNeutral90, kColorNeutral80],
//   );

//   static const skeletonDark = LinearGradient(
//     begin: Alignment(0.97, -0.25),
//     end: Alignment(-0.97, 0.25),
//     colors: [kColorNeutral35, kColorNeutral25, kColorNeutral35],
//   );

//   static LinearGradient forTestGradient(
//       BuildContext context, LinearGradient gradient) {
//     // สร้างรายการ Gradient ทั้งหมดในคลาส
//     final gradients = [
//       containerCommonPrimary,
//       containerCommonPoint,
//       containerCommonPrivilege,
//       containerCommonStore,
//       containerCommonEntertainment,
//       containerCommonFibre,
//       containerCommon3bbFibre,
//       containerCommonVb,
//       containerTierSerenade,
//       containerTierPlatinum,
//       containerTierGold,
//       containerTierEmerald,
//       containerTierCustomer,
//       containerProductBestOffer,
//       containerProductExclusive,
//       containerProductDelight,
//       containerProductTrust,
//       containerProductEase,
//       containerProductEmpower,
//       containerProductCalm,
//       containerProductInspire,
//       containerProductStore,
//       bgPrimaryDiagonalRight,
//       bgPrimaryDiagonalLeft,
//       bgPrimaryVertical,
//       bgGoldDiagonalLeft,
//       bgGoldDiagonalRight,
//       bgGoldVertical,
//       bgCustomerDiagonalLeft,
//       bgCustomerDiagonalRight,
//       bgCustomerVertical,
//       skeletonLight,
//       skeletonDark,
//     ];

//     // ตรวจสอบว่า gradient ที่ส่งเข้ามาตรงกับ gradient ใดในรายการ
//     for (final g in gradients) {
//       if (g.begin == gradient.begin &&
//           g.end == gradient.end &&
//           g.colors.length == gradient.colors.length &&
//           g.colors.every((color) => gradient.colors.contains(color))) {
//         return g; // คืนค่า gradient ที่ตรงกัน
//       }
//     }

//     throw ArgumentError('Gradient not found in RamGradients');
//   }
// }
