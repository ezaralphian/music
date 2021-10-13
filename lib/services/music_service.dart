import 'package:get/get_connect.dart';

class MusicService extends GetConnect {
  final url = 'https://itunes.apple.com/search?term=';
  Future<Response> getMusicList(searchKey) => get('$url$searchKey');
}
