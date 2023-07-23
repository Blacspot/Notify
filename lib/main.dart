import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:notify/UI/home_page.dart';
import 'package:notify/UI/theme.dart';
import 'package:notify/db/dbhelper.dart';
import 'package:notify/services/theme_services.dart';
import 'package:notify/UI/addtaskbar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      home: const HomePage(),
      routes: {"/addtaskbar": (context) => const AddTaskPage()},
    );
  }
}
