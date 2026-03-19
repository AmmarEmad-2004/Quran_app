import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/home/data/models/prayer_model.dart';

final List<PrayerModel> homePrayerTimes = [
  PrayerModel(
    name: 'الفجر',
    time: '5:15',
    image: AppImages.fajrIcon,
    gradientColor1: AppColors.lightGreen,
    gradientColor2: AppColors.darkGreen,
  ),
  PrayerModel(
    name: 'الشروق',
    time: '6:45',
    image: AppImages.shrouqIcon,
    gradientColor1: AppColors.lightGold,
    gradientColor2: AppColors.darkGold,
  ),
  PrayerModel(
    name: 'العصر',
    time: '3:45',
    image: AppImages.zuhrIandAsrcon,
    gradientColor1: AppColors.lightBeige,
    gradientColor2: AppColors.darkBeige,
  ),
  PrayerModel(
    name: 'المغرب',
    time: '6:15',
    image: AppImages.maghrebIcon,
    gradientColor1: AppColors.lightBlue,
    gradientColor2: AppColors.darkBlue,
  ),
  PrayerModel(
    name: 'العشاء',
    time: '7:45',
    image: AppImages.ishaaIcon,
    gradientColor1: AppColors.lightPurple,
    gradientColor2: AppColors.darkPurple,
  ),
];