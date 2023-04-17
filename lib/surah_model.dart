class SurahModel {
  int? number;
  String? nameAR;

  SurahModel({this.number, this.nameAR});

  factory SurahModel.fromJson(Map<String, dynamic> js) {
    return SurahModel(
      number: js['number'],
      nameAR: js['name'],
    );
  }
}
