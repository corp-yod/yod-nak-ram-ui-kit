import 'package:flutter/material.dart';

// =================================================================
// TRAVEL TOGETHER - FULL DESIGN SYSTEM (TEAL BASED)
// อ้างอิงตามชื่อตัวแปรเดิมทั้งหมด ห้ามขาดแม้แต่ตัวเดียว
// =================================================================

// -- Primary (หัวใจของแอป - Teal Journey)
const Color kColorPrimary10 = Color(0xff00201D);
const Color kColorPrimary20 = Color(0xff003732);
const Color kColorPrimary30 = Color(0xff004E48);
const Color kColorPrimary40 = Color(0xff00635C);
const Color kColorPrimary50 = Color(0xff00796B); // Pressed State
const Color kColorPrimary60 = Color(0xff00897B);
const Color kColorPrimary70 = Color(0xff009688); // Main Brand
const Color kColorPrimary80 = Color(0xff4DB6AC);
const Color kColorPrimary90 = Color(0xffB2DFDB);
const Color kColorPrimary95 = Color(0xffE0F2F1);
const Color kColorPrimary99 = Color(0xffF2FBFB);

// -- Secondary (Cool Slate - ปรับให้เข้ากับ Teal)
const Color kColorSecondary10 = Color(0xff191C1C);
const Color kColorSecondary20 = Color(0xff2D3131);
const Color kColorSecondary30 = Color(0xff444747);
const Color kColorSecondary40 = Color(0xff5B5F5E);
const Color kColorSecondary50 = Color(0xff747877);
const Color kColorSecondary60 = Color(0xff009688);
const Color kColorSecondary70 = Color(0xff009688);
const Color kColorSecondary80 = Color(0x33009688); // Opacity 20%
const Color kColorSecondary90 = Color(0xffE1E3E2);
const Color kColorSecondary95 = Color(0xffF0F1F0);
const Color kColorSecondary99 = Color(0xffFBFDFD);

// -- Success (Green Travel)
const Color kColorSuccess10 = Color(0xff00210B);
const Color kColorSuccess20 = Color(0xff053D13);
const Color kColorSuccess30 = Color(0xff0B521D);
const Color kColorSuccess40 = Color(0xff126325);
const Color kColorSuccess50 = Color(0xff2E7D32);
const Color kColorSuccess60 = Color(0xff388E3C);
const Color kColorSuccess70 = Color(0xff66BB6A);
const Color kColorSuccess80 = Color(0xff81C784);
const Color kColorSuccess90 = Color(0xffC8E6C9);
const Color kColorSuccess95 = Color(0xffE8F5E9);
const Color kColorSuccess99 = Color(0xffF1F8E9);

// -- Warning (Amber Alert)
const Color kColorWarning10 = Color(0xff281900);
const Color kColorWarning20 = Color(0xff452C00);
const Color kColorWarning30 = Color(0xff633F00);
const Color kColorWarning40 = Color(0xff825500);
const Color kColorWarning50 = Color(0xffFFA000);
const Color kColorWarning60 = Color(0xffFFB300);
const Color kColorWarning70 = Color(0xffFFC107);
const Color kColorWarning80 = Color(0xffFFD54F);
const Color kColorWarning90 = Color(0xffFFECB3);
const Color kColorWarning95 = Color(0xffFFF8E1);
const Color kColorWarning99 = Color(0xffFFFCF2);

// -- Danger (Soft Critical Red)
const Color kColorDanger10 = Color(0xff410002);
const Color kColorDanger20 = Color(0xff690005);
const Color kColorDanger30 = Color(0xff93000A);
const Color kColorDanger40 = Color(0xffB3261E);
const Color kColorDanger50 = Color(0xffD32F2F);
const Color kColorDanger60 = Color(0xffE53935);
const Color kColorDanger70 = Color(0xffEF5350);
const Color kColorDanger80 = Color(0xffE57373);
const Color kColorDanger90 = Color(0xffFFCDD2);
const Color kColorDanger95 = Color(0xffFFEBEE);
const Color kColorDanger99 = Color(0xffFFF8F8);

// -- Emerald (Deep Ocean)
const Color kColorEmerald10 = Color(0xff00201A);
const Color kColorEmerald20 = Color(0xff00382E);
const Color kColorEmerald30 = Color(0xff005043);
const Color kColorEmerald40 = Color(0xff00695C);
const Color kColorEmerald50 = Color(0xff00796B);
const Color kColorEmerald60 = Color(0xff00897B);
const Color kColorEmerald70 = Color(0xff26A69A);
const Color kColorEmerald80 = Color(0xff4DB6AC);
const Color kColorEmerald90 = Color(0xffB2DFDB);
const Color kColorEmerald95 = Color(0xffE0F2F1);
const Color kColorEmerald99 = Color(0xffF2FBFB);

// -- Neutral (Surface Greyscale)
const Color kColorNeutral10 = Color(0xff191C1C);
const Color kColorNeutral15 = Color(0xff212424);
const Color kColorNeutral20 = Color(0xff2D3131);
const Color kColorNeutral25 = Color(0xff393D3C);
const Color kColorNeutral30 = Color(0xff444847);
const Color kColorNeutral35 = Color(0xff505453);
const Color kColorNeutral40 = Color(0xff5C5F5F);
const Color kColorNeutral45 = Color(0xff747877);
const Color kColorNeutral50 = Color(0xff8E9291);
const Color kColorNeutral55 = Color(0xff9EA2A1);
const Color kColorNeutral60 = Color(0xffB0B4B3);
const Color kColorNeutral65 = Color(0xffC1C7C6);
const Color kColorNeutral70 = Color(0xffD2D8D7);
const Color kColorNeutral75 = Color(0xffE1E3E2);
const Color kColorNeutral80 = Color(0xffEFF1F1);
const Color kColorNeutral85 = Color(0xffF4F5F5);
const Color kColorNeutral90 = Color(0xffF7F9F9);
const Color kColorNeutral95 = Color(0xffFAFAFA);
const Color kColorNeutral99 = Color(0xffFCFCFC);

// -- Black (Using standard RGBO)
const Color kColorBlack5 = Color.fromRGBO(0, 0, 0, 0.05);
const Color kColorBlack10 = Color.fromRGBO(0, 0, 0, 0.1);
const Color kColorBlack20 = Color.fromRGBO(0, 0, 0, 0.2);
const Color kColorBlack30 = Color.fromRGBO(0, 0, 0, 0.3);
const Color kColorBlack40 = Color.fromRGBO(0, 0, 0, 0.4);
const Color kColorBlack50 = Color.fromRGBO(0, 0, 0, 0.5);
const Color kColorBlack60 = Color.fromRGBO(0, 0, 0, 0.6);
const Color kColorBlack70 = Color.fromRGBO(0, 0, 0, 0.7);
const Color kColorBlack80 = Color.fromRGBO(0, 0, 0, 0.8);
const Color kColorBlack90 = Color.fromRGBO(0, 0, 0, 0.9);
const Color kColorBlack100 = Color.fromRGBO(0, 0, 0, 1.0);

// -- White (Using standard RGBO)
const Color kColorWhite0 = Color.fromRGBO(255, 255, 255, 0);
const Color kColorWhite5 = Color.fromRGBO(255, 255, 255, 0.05);
const Color kColorWhite10 = Color.fromRGBO(255, 255, 255, 0.1);
const Color kColorWhite20 = Color.fromRGBO(255, 255, 255, 0.2);
const Color kColorWhite30 = Color.fromRGBO(255, 255, 255, 0.3);
const Color kColorWhite40 = Color.fromRGBO(255, 255, 255, 0.4);
const Color kColorWhite50 = Color.fromRGBO(255, 255, 255, 0.5);
const Color kColorWhite60 = Color.fromRGBO(255, 255, 255, 0.6);
const Color kColorWhite70 = Color.fromRGBO(255, 255, 255, 0.7);
const Color kColorWhite80 = Color.fromRGBO(255, 255, 255, 0.8);
const Color kColorWhite90 = Color.fromRGBO(255, 255, 255, 0.9);
const Color kColorWhite100 = Color.fromRGBO(255, 255, 255, 1.0);



// -- Gold (Sand & Sun)
// const Color kColorGold10 = Color(0xff291D00);
// const Color kColorGold20 = Color(0xff473200);
// const Color kColorGold30 = Color(0xff664800);
// const Color kColorGold40 = Color(0xff855D00);
// const Color kColorGold50 = Color(0xffB88C14);
// const Color kColorGold60 = Color(0xffC99A1A);
// const Color kColorGold70 = Color(0xffD4AF37);
// const Color kColorGold80 = Color(0xffE7C467);
// const Color kColorGold90 = Color(0xffF7E09E);
// const Color kColorGold95 = Color(0xffFFEFC2);
// const Color kColorGold99 = Color(0xffFFFAE6);

// -- Platinum (Silver Stone)
// const Color kColorPlatinum10 = Color(0xff191C1C);
// const Color kColorPlatinum20 = Color(0xff2D3131);
// const Color kColorPlatinum30 = Color(0xff444747);
// const Color kColorPlatinum40 = Color(0xff5B5F5F);
// const Color kColorPlatinum50 = Color(0xff757877);
// const Color kColorPlatinum60 = Color(0xff8E9291);
// const Color kColorPlatinum70 = Color(0xffA0A3A2);
// const Color kColorPlatinum80 = Color(0xffC4C7C6);
// const Color kColorPlatinum90 = Color(0xffE1E3E2);
// const Color kColorPlatinum95 = Color(0xffECEDEC);
// const Color kColorPlatinum99 = Color(0xffF7F8F8);

// -- Privilege (Amethyst - ปรับให้เข้ากับ Teal)
// const Color kColorPrivilege10 = Color(0xff210044);
// const Color kColorPrivilege20 = Color(0xff380071);
// const Color kColorPrivilege30 = Color(0xff4F009B);
// const Color kColorPrivilege40 = Color(0xff6A1B9A);
// const Color kColorPrivilege50 = Color(0xff7B1FA2);
// const Color kColorPrivilege60 = Color(0xff8E24AA);
// const Color kColorPrivilege70 = Color(0xff9C27B0);
// const Color kColorPrivilege80 = Color(0xffBA68C8);
// const Color kColorPrivilege90 = Color(0xffE1BEE7);
// const Color kColorPrivilege95 = Color(0xffF3EAFD);
// const Color kColorPrivilege99 = Color(0xffFAF6FE);

// -- Points (Berry Red)
// const Color kColorPoints10 = Color(0xff3E001D);
// const Color kColorPoints20 = Color(0xff640030);
// const Color kColorPoints30 = Color(0xff8B0044);
// const Color kColorPoints40 = Color(0xffAD1457);
// const Color kColorPoints50 = Color(0xffC2185B);
// const Color kColorPoints60 = Color(0xffD81B60);
// const Color kColorPoints70 = Color(0xffE91E63);
// const Color kColorPoints80 = Color(0xffF06292);
// const Color kColorPoints90 = Color(0xffF8BBD0);
// const Color kColorPoints95 = Color(0xffFFE4F7);
// const Color kColorPoints99 = Color(0xffFFF0FA);

// -- Store (Shopping Teal)
// const Color kColorStore10 = Color(0xff00201E);
// const Color kColorStore20 = Color(0xff003734);
// const Color kColorStore30 = Color(0xff004E4A);
// const Color kColorStore40 = Color(0xff00605A);
// const Color kColorStore50 = Color(0xff007971);
// const Color kColorStore60 = Color(0xff008981);
// const Color kColorStore70 = Color(0xff348E88);
// const Color kColorStore80 = Color(0xff6FB3AF);
// const Color kColorStore90 = Color(0xffB4DBD5);
// const Color kColorStore95 = Color(0xffDAEDEA);
// const Color kColorStore99 = Color(0xffF4F9F8);

// -- Entertainment (Warm Sunset)
// const Color kColorEntertainment10 = Color(0xff2E0F00);
// const Color kColorEntertainment20 = Color(0xff4E1E00);
// const Color kColorEntertainment30 = Color(0xff742F00);
// const Color kColorEntertainment40 = Color(0xff994000);
// const Color kColorEntertainment50 = Color(0xffBF360C);
// const Color kColorEntertainment60 = Color(0xffD84315);
// const Color kColorEntertainment70 = Color(0xffFF7043);
// const Color kColorEntertainment80 = Color(0xffFF8A65);
// const Color kColorEntertainment90 = Color(0xffFFCCBC);
// const Color kColorEntertainment95 = Color(0xffFFEEC6);
// const Color kColorEntertainment99 = Color(0xffFFF9EB);

// -- Star (Magic Yellow)
// const Color kColorStar10 = Color(0xff261A00);
// const Color kColorStar20 = Color(0xff412D00);
// const Color kColorStar30 = Color(0xff5D4200);
// const Color kColorStar40 = Color(0xff7A5700);
// const Color kColorStar50 = Color(0xffC49000);
// const Color kColorStar60 = Color(0xffE2A600);
// const Color kColorStar70 = Color(0xffFBC02D);
// const Color kColorStar80 = Color(0xffFDD835);
// const Color kColorStar90 = Color(0xffFFF176);
// const Color kColorStar95 = Color(0xffFFF1BA);
// const Color kColorStar99 = Color(0xffFFFAE6);

