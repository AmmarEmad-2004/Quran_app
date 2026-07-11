import 'package:hive_flutter/hive_flutter.dart';
part 'surah_model.g.dart';

@HiveType(typeId: 0)
class SurahModel extends HiveObject {
  @HiveField(0)
  final int number;
  @HiveField(1)
  final String nameArabic;
  @HiveField(2)
  final String nameEnglish;
  @HiveField(3)
  final int ayatCount;
  @HiveField(4)
  final String type;

  SurahModel({
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
