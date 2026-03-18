enum PrayerStatus { passed, current, upcoming }

class PrayerTimeModel {
  final String nameArabic;
  final String time;
  final String emoji;
  final PrayerStatus status;
  final String? subtitle; // e.g. "بعد ساعة و 15 دقيقة"
  final double? progressPercent; // for current prayer progress bar
  final bool alarmOn;

  const PrayerTimeModel({
    required this.nameArabic,
    required this.time,
    required this.emoji,
    required this.status,
    this.subtitle,
    this.progressPercent,
    this.alarmOn = true,
  });
}
