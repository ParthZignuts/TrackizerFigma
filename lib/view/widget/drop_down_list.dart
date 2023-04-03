

import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class DropDownList extends StatelessWidget {
  const DropDownList({
    super.key,
    required this.calenderProvider,
  });

  final CalenderScreenProvider calenderProvider;

  @override
  Widget build(BuildContext context) {
    var items = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return Container(
      height: 40.h,
      decoration: const BoxDecoration(
        color: AppColor.darkGray,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),

      ),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding:  EdgeInsets.all(8.0.sp),
          child: DropdownButton(
              dropdownColor: AppColor.lightBlack,
              // Initial Value
              value: calenderProvider.selectedMonth,
              style: TextStyles.h2NormalBlack,
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyles.h3NormalWhite,
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                calenderProvider.onDropDownItemChanged(newValue!);
                calenderProvider.monthValue=items.indexOf(newValue)+1; //passing selected month index value from dropdown to change the Date and Day listview
                calenderProvider.dates.clear();  // For Clearing old generated data
                calenderProvider.getDatesWithDayNames(); // get updated month value
              }),
        ),
      ),
    );
  }
}
