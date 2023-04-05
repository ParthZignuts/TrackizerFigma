import 'package:provider/provider.dart';
import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class SelectedDateDayAndTotalBudgetContainer extends StatelessWidget {
  const SelectedDateDayAndTotalBudgetContainer({
    super.key,
    required this.calenderProvider,
  });

  final CalenderScreenProvider calenderProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(6.0.sp),
        child: Consumer<CalenderScreenProvider>(
          builder: (context, value, child) {
            return Column(
              children: [
                Row(
                  children: [
                    Text(
                      calenderProvider.selectedMonth,
                      style: TextStyles.h1BoldWhiteForPrice,
                    ),
                    const Spacer(),
                    Text(
                      '\$24.98 ',
                      style: TextStyles.h1BoldWhiteForPrice,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      calenderProvider.currentSelectedDateAndDay,
                      style: TextStyles.h2NormalWhite,
                    ),
                    const Spacer(),
                    Text(
                      'in upcoming bills',
                      style: TextStyles.h2NormalWhite,
                    ),
                  ],
                ),
              ],
            );
          },
        ));
  }
}
