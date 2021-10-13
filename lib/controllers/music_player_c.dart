import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:music/models/music_model.dart';

class MusicPlayerController extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  var playedMusic = Music().obs;
  var isPlaying = false.obs;
  var isPaused = false.obs;
  var isLoading = false.obs;

  void play(Music music) async {
    isLoading(true);
    playedMusic(music);
    audioPlayer.stop();
    if (music.previewUrl != null) {
      int result = await audioPlayer.play(music.previewUrl!);
      isPaused(false);
      if (result == 1) {
        isPlaying(true);
      }
    }
    isLoading(false);
  }

  void pause() {
    audioPlayer.pause();
    isPaused(true);
  }

  void resume() {
    audioPlayer.resume();
    isPaused(false);
  }

  @override
  void onInit() {
    audioPlayer.onPlayerCompletion.listen((event) {
      isPlaying(false);
      isPaused(false);
    });
    super.onInit();
  }
}
