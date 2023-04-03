import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CalenderScreenProvider extends ChangeNotifier {
  List<String> dates = [];

  String selectedMonth = "January";

  int changeVisibility = 0;

  int monthValue = 1;

  String currentSelectedDateAndDay = '1 Jan';

  // This Method is Called to Update The Selected Month name
  void onDropDownItemChanged(String value) {
    selectedMonth = value;
    notifyListeners();
  }
//This Method is used to generate the Dates and Day by passing selected monthvalue
  List<String> getDatesWithDayNames() {
    // Create a DateTime object for the first day of the month
    DateTime firstDayOfMonth = DateTime(2023, monthValue, 1);

    // Determine the number of days in the month
    int daysInMonth = DateTime(2023, monthValue, 0).day;

    // Iterate over each day of the month and add the date with day name to the list
    for (int i = 0; i < daysInMonth; i++) {
      DateTime date = firstDayOfMonth.add(Duration(days: i));
      String dayName = DateFormat('EE').format(date);
      String dateWithDayName = ' ${date.day} $dayName';
      dates.add(dateWithDayName);
    }
    notifyListeners();
    return dates;
  }
//This Function will be used to change the currently selected values giving by getDatesWithDayNames
  void onTapChangeVisibility(int value) {
    updateCurrentSelectedDayAndDate(dates[value]);
    changeVisibility = value;
    notifyListeners();
  }

  void updateCurrentSelectedDayAndDate(String value) {
    currentSelectedDateAndDay = value;
    notifyListeners();
  }
}
