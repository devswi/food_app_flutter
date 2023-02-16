import 'package:flutter/material.dart';
import 'package:flutter_demo/main_layout.dart' as android_layout;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // navigator push key
  static final navigatorKey = GlobalKey<NavigatorState>();
  // primary color
  static const primaryColor = Color(0xFFF5CA48);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      // 隐藏 debug 标记
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade400,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const android_layout.MainLayout(),
    );
  }
}
