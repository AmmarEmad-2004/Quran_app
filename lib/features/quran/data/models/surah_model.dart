class SurahModel {
  final int number;
  final String nameArabic;
  final String nameEnglish;
  final int ayatCount;
  final String type; 
 
  const SurahModel({
    required this.number,
    required this.nameArabic,
    required this.nameEnglish,
    required this.ayatCount,
    required this.type,
  });

  factory SurahModel.fromJson(Map<String, dynamic> json) {
    return SurahModel(
      number: json['number'],
      nameArabic: json['name'],
      nameEnglish: json['englishName'],
      ayatCount: json['numberOfAyahs'],
      type: json['revelationType'],
    );
  }
}