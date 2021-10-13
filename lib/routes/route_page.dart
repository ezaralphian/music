import 'package:get/get.dart';
import 'package:music/pages/music_page.dart';
import 'package:music/routes/params_name.dart';
import 'package:music/routes/route_name.dart';

class RoutePage {
  static final pages = [
    GetPage(name: RouteName.musicPage, page: () => MusicPage()),
    GetPage(
        name: '${RouteName.musicPage}/:${ParamsName.searchKey}',
        page: () => MusicPage()),
  ];
}
