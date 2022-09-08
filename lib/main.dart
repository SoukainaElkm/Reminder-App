import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:remind_me/app_themes.dart';
import 'package:remind_me/database_service/sql_service.dart';
import 'package:remind_me/screens/splash_screen.dart';
import 'package:remind_me/services/dark_theme_service.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SqlServices.initDatabase();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Title text',
      debugShowCheckedModeBanner: false,
      theme:AppThemes.lightMode,
      themeMode: ThemeService().theme,
      darkTheme: AppThemes.darkMode,
      home: SplashScreen(),
    );
  }
}