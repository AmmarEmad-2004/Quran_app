 import 'package:quran_app/core/theme/app_colors.dart';
import 'package:quran_app/features/reminder/data/models/reminder_model.dart';

final List<ReminderModel> reminders = [
    ReminderModel(
      title: 'Fajr Prayer',
      time: '05:12 AM',
      catImage: 'Before sunrise',
      enabled: true, timeOfDay: '', repeat: '', isActive: false, color: AppColors.lightGreen,
    ),
    ReminderModel(
      title: 'Dhuhr Prayer',
      time: '12:33 PM',
      catImage: 'Afternoon prayer',
      enabled: true, timeOfDay: '', repeat: '', isActive: false, color: AppColors.lightGreen,
    ),
    ReminderModel(
      title: 'Asr Prayer',
      time: '03:45 PM',
      catImage: 'Late afternoon',
      enabled: false, timeOfDay: '', repeat: '', isActive: false, color: AppColors.lightGreen,
    ),
  ];