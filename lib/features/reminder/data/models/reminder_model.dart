class ReminderModel {
  final String title;
  final String time;
  final String catImage;
  final bool enabled;

  ReminderModel({
    required this.title,
    required this.time,
    required this.catImage,
    required this.enabled,
  });

  ReminderModel copyWith({
    String? title,
    String? time,
    String? catImage,
    bool? enabled,
  }) {
    return ReminderModel(
      title: title ?? this.title,
      time: time ?? this.time,
      catImage: catImage ?? this.catImage,
      enabled: enabled ?? this.enabled,
    );
  }
}