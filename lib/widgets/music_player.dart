import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/controllers/music_player_c.dart';
import 'package:music/fixtures/image_fix.dart';

class MusicPlayer extends StatelessWidget {
  final MusicPlayerController musicPlayerC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return musicPlayerC.isPlaying.value
          ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Colors.black),
                ],
              ),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 600),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          child: Image.network(
                            musicPlayerC.playedMusic.value.artworkUrl100 ??
                                ImageFix.albumDefault,
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              musicPlayerC.playedMusic.value.trackName ?? '-',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                            Text(
                              musicPlayerC.playedMusic.value.artistName ?? '-',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          musicPlayerC.isPaused.value
                              ? musicPlayerC.resume()
                              : musicPlayerC.pause();
                        },
                        icon: Icon(
                          musicPlayerC.isPaused.value
                              ? Icons.play_arrow_rounded
                              : Icons.pause_rounded,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
            )
          : Container();
    });
  }
}
