import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:music/models/music_model.dart';
import 'package:music/routes/params_name.dart';
import 'package:music/services/music_service.dart';

class MusicPageController extends GetxController {
  var searchKey = (Get.parameters[ParamsName.searchKey] ?? '').toString();
  var searchFielNode = FocusNode();
  var searchControl = TextEditingController();

  var isLoading = true.obs;
  var musicList = List<Music>.empty().obs;

  //search music
  void getMusicList(searchKey) async {
    try {
      var response = await MusicService().getMusicList(searchKey);
      var music = MusicResult.fromJson(jsonDecode(response.body));
      musicList.assignAll(music.results);
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();

    //call get music list
    getMusicList(searchKey);

    //set search field with params
    searchControl.text = searchKey;

    //listener search field
    searchFielNode.addListener(() {
      //if search field not focus, the value will be replaced by params
      if (!searchFielNode.hasFocus) {
        searchControl.text = searchKey;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    searchControl.dispose();
  }
}
