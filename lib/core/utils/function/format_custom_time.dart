import 'package:intl/intl.dart';

String formatCustomTime(DateTime dateTime) {
  String time = DateFormat('hh:mm a', 'en').format(dateTime);

  return time
      .replaceAll('AM', 'ص')
      .replaceAll('PM', 'م');
}