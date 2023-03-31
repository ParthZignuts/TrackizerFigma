import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CalenderScreenProvider extends ChangeNotifier {
  String _selectedMonth = "January";

  int _changeVisibility=0;

  int _monthValue = 1;

  String _currentSelectedDateAndDay='1 Jan';

  String get currentSelectedDateAndDay => _currentSelectedDateAndDay;

  set currentSelectedDateAndDay(String value) {
    _currentSelectedDateAndDay = value;
  }

  int get changeVisibility => _changeVisibility;

  set changeVisibility(int value) {
    _changeVisibility = value;
  }



  int get monthValue => _monthValue;

  List<String> dates = [];

  set monthValue(int value) {
    _monthValue = value;
  }

  String get selectedValueOfMonth => _selectedMonth;

  set selectedValueOfMonth(String value) {
    _selectedMonth = value;
  }

  void onDropDownItemChanged(String value) {
    selectedValueOfMonth = value;
    notifyListeners();
  }

  List<String> getDatesWithDayNames() {
    // Create a DateTime object for the first day of the month
    DateTime firstDayOfMonth = DateTime(2023, _monthValue, 1);

    // Determine the number of days in the month
    int daysInMonth = DateTime(2023, _monthValue,0).day;

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

  void onTapChangeVisibility(int value){
    updateCurrentSelectedDayAndDate(dates[value]);
     _changeVisibility=value;
    notifyListeners();
  }

  void updateCurrentSelectedDayAndDate(String value){
    _currentSelectedDateAndDay= value;
    notifyListeners();
  }
}
