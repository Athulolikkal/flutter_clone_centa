import 'package:intl/intl.dart';

Future<String> parseDate(String dbDate) async {
  try {
    final dateAndTime = dbDate;
    DateTime dateTime = DateTime.parse(dateAndTime);
    String formattedDate = DateFormat("d MMMM y").format(dateTime);
    print("$formattedDate formated date");
    return formattedDate;
  } catch (e) {
    throw e;
  }
}

Future<List> updateTheCourseData(List courseList) async {
  try {
    for (var details in courseList) {
      details['date'] = await parseDate(details['date']);
    }
    return courseList;
  } catch (err) {
    throw err;
  }
}
