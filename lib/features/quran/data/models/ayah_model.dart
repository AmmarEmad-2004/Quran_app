import 'package:hive_flutter/hive_flutter.dart';
part 'ayah_model.g.dart';

@HiveType(typeId: 1)
class AyahModel extends HiveObject{
  @HiveField(0)
  final String ayah;
  @HiveField(1)
  final int number;

  AyahModel({required this.ayah, required this.number});

 factory AyahModel.fromJson(Map<String, dynamic> json) {
    return AyahModel(
      ayah: json['text'],
      number: json['numberInSurah'],
    );
  }
}