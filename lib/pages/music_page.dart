import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/controllers/music_page_c.dart';
import 'package:music/routes/params_name.dart';
import 'package:music/routes/route_name.dart';
import 'package:music/widgets/music_item.dart';
import 'package:music/widgets/music_player.dart';

class MusicPage extends StatelessWidget {
  // initial music page controller with tag
  final musicPageC = Get.put(MusicPageController(),
      tag: Get.parameters[ParamsName.searchKey] ?? '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: musicPageC.searchControl,
          focusNode: musicPageC.searchFielNode,
          onSubmitted: (value) {
            // handling no character search
            if (value.trim() != '') {
              Get.toNamed(
                '${RouteName.musicPage}/${Uri.encodeComponent(value.trim())}',
              );
            }
          },
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  musicPageC.searchControl.clear();
                },
              ),
              hintText: 'Search...',
              contentPadding: const EdgeInsets.all(10),
              enabledBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: Colors.purple,
                ),
              ),
              focusColor: Colors.amber),
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: musicPageC.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: musicPageC.musicList.isEmpty
                          ? Center(
                              child: Text('Not found'),
                            )
                          : ListView.builder(
                              itemCount: musicPageC.musicList.length,
                              itemBuilder: (context, i) => MusicItem(
                                music: musicPageC.musicList[i],
                                index: i,
                              ),
                            ),
                    ),
            ),
            MusicPlayer()
          ],
        ),
      ),
    );
  }
}
