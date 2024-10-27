import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  String dayFormatted = DateFormat('E', 'pt_BR').format(date);
  String monthFormatted = DateFormat('MMM', 'pt_BR').format(date);
  String numDayFormatted = DateFormat('d', 'pt_BR').format(date);

  String dateFormatted =
      "${dayFormatted.capitalize()} - ${numDayFormatted.capitalize()} ${monthFormatted.capitalize()}";

  return dateFormatted;
}

extension CapitalizeExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
