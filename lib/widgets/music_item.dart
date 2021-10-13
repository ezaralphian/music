import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/controllers/music_player_c.dart';
import 'package:music/fixtures/image_fix.dart';
import 'package:music/models/music_model.dart';

class MusicItem extends StatelessWidget {
  MusicItem({required this.music, required this.index});
  final MusicPlayerController musicPlayerC = Get.find();

  final Music music;
  final int index;

  bool isPlaying() {
    return musicPlayerC.isPlaying.value &&
        musicPlayerC.playedMusic.value.trackId == music.trackId;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => musicPlayerC.play(music),
      child: Obx(
        () => Container(
          child: Row(
            children: [
              Container(
                width: 20,
                child: Center(
                  child: isPlaying()
                      ? musicPlayerC.isLoading.value
                          ? SizedBox(
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                              ),
                              height: 15,
                              width: 15,
                            )
                          : Icon(Icons.graphic_eq_rounded, color: Colors.purple)
                      : Text(
                          '${index + 1}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    music.artworkUrl100 ?? ImageFix.albumDefault,
                    height: 55,
                    width: 55,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      music.trackName ?? '-',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: isPlaying() ? Colors.purple : Colors.black),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      music.artistName ?? '-',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      music.collectionName ?? '-',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
