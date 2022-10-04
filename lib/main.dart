import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/services/theme_services.dart';
import 'package:task_management/ui/home_page.dart';
import 'package:task_management/ui/theme.dart';

//https://www.youtube.com/watch?v=2L8maZUY2hU&list=PL3nPgdhXQtHdtSuguji1FGdWSuogd-glS&index=7

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeService().theme,
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: HomePage(),
    );
  }
}
