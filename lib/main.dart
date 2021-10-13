import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:music/controllers/music_player_c.dart';
import 'package:music/pages/music_page.dart';
import 'package:music/routes/route_page.dart';
import 'package:music/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  // initial musicPlayer controller for further use
  final musicPlayer = Get.lazyPut(() => MusicPlayerController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      home: MusicPage(),
      getPages: RoutePage.pages,
    );
  }
}
