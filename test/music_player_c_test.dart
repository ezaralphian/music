import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:music/controllers/music_player_c.dart';

void main() {
  group("Check music player controller", () {
    var musicPlayerC = Get.put(MusicPlayerController());

    test("Init music player controller", () {
      expect(musicPlayerC.isPlaying.value, equals(false));
      expect(musicPlayerC.isPaused.value, equals(false));
    });
    test("Init music player controller", () {
      expect(musicPlayerC.isPlaying.value, equals(false));
      expect(musicPlayerC.isPaused.value, equals(false));
    });
  });
}
