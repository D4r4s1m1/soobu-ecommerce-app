import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'features/authentication/screens/login/login.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SoobuAppTheme.lightTheme,
      darkTheme: SoobuAppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}