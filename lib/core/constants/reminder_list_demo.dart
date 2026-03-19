import 'package:quran_app/core/constants/app_images.dart';
import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/reminder/data/models/reminder_model.dart';

final List<ReminderModel> reminders = [
  ReminderModel(
    title: 'صدقة يومية',
    time: DateTime(5, 2),
    catImage: AppImages.notificationIcon,
    enabled: true,
    repeat: 'Every day',
    color: AppColors.lightGreen,
  ),
  ReminderModel(
    title: 'قراءة الورد',
    time: DateTime(20, 0),
    catImage: AppImages.notificationIcon,
    enabled: true,
    repeat: 'Mon, Wed, Fri',
    color: AppColors.lightBeige,
  ),
  ReminderModel(
    title: 'صلاة الضحى',
    time: DateTime(22, 30),
    catImage: AppImages.notificationIcon,
    enabled: false,
    repeat: 'Weekdays',
    color: AppColors.lightBlue,
  ),
  ReminderModel(
    title: 'أذكار الصباح',
    time: DateTime(22, 30),
    catImage: AppImages.notificationIcon,
    enabled: false,
    repeat: 'Weekdays',
    color: AppColors.lightPurple,
  ),
  ReminderModel(
    title: 'أذكار المساء',
    time: DateTime(22, 30),
    catImage: AppImages.notificationIcon,
    enabled: false,
    repeat: 'Weekdays',
    color: AppColors.lightPink,
  ),
];
