import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:surah/surah_model.dart';

Future<List<SurahModel>> getSurah() async {
  var request =
      http.Request('GET', Uri.parse("http://api.alquran.cloud/v1/surah"));

  http.StreamedResponse response = await request.send();
  var responseString = await response.stream.bytesToString();
  final dataa = json.decode(responseString);
  List dataz = dataa['data'];
  if (response.statusCode == 200) {
    return dataz.map((data) => SurahModel.fromJson(data)).toList();
  } else {
    print(response.reasonPhrase);
  }

  return dataz.map((data) => SurahModel.fromJson(data)).toList();
}
