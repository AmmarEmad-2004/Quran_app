
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';

const List<PrayerTimeModel> prayerTimes = [
  PrayerTimeModel(
    nameArabic: 'الفجر',
    time: '5:15',
    emoji: '🌅',
    status: PrayerStatus.passed,
    alarmOn: false,
  ),
  PrayerTimeModel(
    nameArabic: 'الشروق',
    time: '6:45',
    emoji: '☀️',
    status: PrayerStatus.passed,
    alarmOn: false,
  ),
  PrayerTimeModel(
    nameArabic: 'الظهر',
    time: '12:30',
    emoji: '🌤',
    status: PrayerStatus.current,
    subtitle: 'بعد ساعة و 15 دقيقة',
    progressPercent: 0.45,
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'العصر',
    time: '3:45',
    emoji: '🌥',
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'المغرب',
    time: '6:15',
    emoji: '🏙',
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'العشاء',
    time: '7:45',
    emoji: '🌙',
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: false,
  ),
];