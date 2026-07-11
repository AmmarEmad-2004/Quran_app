class AyahModel {
  final String ayah;
  final int number;

 const AyahModel({required this.ayah, required this.number});

 factory AyahModel.fromJson(Map<String, dynamic> json) {
    return AyahModel(
      ayah: json['text'],
      number: json['numberInSurah'],
    );
  }
}