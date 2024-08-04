import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color white = Color(0xffF8F8F8);
  static const Color black = Color(0xff242424);
  static const Color gold = Color(0xffFACC1D);



  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
          color: black,
      )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: lightPrimary,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),

    textTheme: TextTheme(
      headlineSmall: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: black),
      titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: black),
      ),
  );
    static ThemeData darkTheme = ThemeData();

}
// import 'package:flutter/material.dart';

// class AppTheme {
//   static const Color lightPrimary = Color(0xffB7935F);
//   static const Color darkPrimary = Color(0xff141A2E);
//   static const Color white = Color(0xffF8F8F8);
//   static const Color black = Color(0xff242424);
//   static const Color gold = Color(0xffFACC1D);

//   static ThemeData lightTheme = ThemeData(
//     primaryColor: lightPrimary,
//     appBarTheme: AppBarTheme(
//       backgroundColor: Colors.transparent,
//       centerTitle: true,
//       titleTextStyle: TextStyle(
//         fontSize: 30,
//         fontWeight: FontWeight.bold,
//           color: black,
//       )
//     ),
//     scaffoldBackgroundColor: Colors.transparent,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: lightPrimary,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.white,
//     ),
//     textTheme: TextTheme(
//       headlineSmall: TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.w400,
//           color: black,
//       ),
//       titleLarge: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.w400,
//         color: black,
//       ),
//     ),
//   );

//   static ThemeData darkTheme = ThemeData();



// }