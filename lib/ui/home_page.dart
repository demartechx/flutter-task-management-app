import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/services/notification_services.dart';
import 'package:task_management/services/theme_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "Theme Data",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Get.isDarkMode ? Colors.red : Colors.amber,
            child: Text("Hi"),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          // print(Get.isDarkMode);
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
              title: "Theme changes",
              body: Get.isDarkMode
                  ? "Activated Light Theme"
                  : "Activated Dark Theme");

          notifyHelper.scheduledNotification(
            title: "Scheduled",
              body: "For five seconds",
              seconds: 5
          );
        },
        child: Icon(
          Get.isDarkMode ? Icons.nightlight_round : Icons.person,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
