import 'package:flutter/material.dart';

const _color = <Color>[
  Color(0xffFFBB5C),
  Color(0xffD83F31),
  Color(0xff12486B),
  Color(0xff79AC78),
  Color(0xff618264),
  Color(0xff9ED2BE),
  Color(0xff9ED2BE),
  Color(0xffA0C49D),
  Color(0xffB3C890),
  Color(0xff537188),
  Color(0xffE8A0BF),
  Color(0xffBA90C6),
  Color(0xffC8DBBE),
  Color(0xffAC7088),
  Color(0xff576F72),
];

class AppTheme {
  int colorSelect;
  bool isDark;

  AppTheme({
    required this.colorSelect,
    this.isDark = false,
  })  : assert(colorSelect >= 0, 'don´t color selected "error"'),
        assert(colorSelect < _color.length - 1);

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light,
        colorSchemeSeed: _color[colorSelect],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
