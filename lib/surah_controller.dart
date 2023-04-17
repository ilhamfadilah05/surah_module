// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SurahController extends GetxController {
  var title = "Daftar Surah".obs;

  void onTapSurah(String idSurah, String namaSurah) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('ayat', "");
    prefs.setString('idSurah', idSurah);
    prefs.setString('namaSurah', namaSurah);
  }
}
