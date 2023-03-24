import 'package:flutter/material.dart';
import 'screen/todolistscreen.dart';
import 'theme/text_theme.dart';
import 'theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      title: 'Flutter App',
      home: TodoListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
