
import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/features/prayer/data/models/prayer_time_model.dart';

const List<PrayerTimeModel> prayerTimes = [
  PrayerTimeModel(
    nameArabic: 'الفجر',
    time: '5:15',
    emoji: AppImages.fajr,
    status: PrayerStatus.passed,
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'الظهر',
    time: '12:30',
    emoji: AppImages.azkarAfterPreying,
    status: PrayerStatus.current,
    subtitle: 'بعد ساعة و 15 دقيقة',
    progressPercent: 0.45,
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'العصر',
    time: '3:45',
    emoji: AppImages.asr,
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'المغرب',
    time: '6:15',
    emoji: AppImages.maghrebIcon,
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: true,
  ),
  PrayerTimeModel(
    nameArabic: 'العشاء',
    time: '7:45',
    emoji: AppImages.ishaaIcon,
    status: PrayerStatus.upcoming,
    subtitle: 'قادمة',
    alarmOn: true,
  ),
];