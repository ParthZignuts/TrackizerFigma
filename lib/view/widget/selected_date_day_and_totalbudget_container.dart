
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                calenderProvider.selectedValueOfMonth,
                style: TextStyles.h1BoldWhiteForPrice,
              ),
              Spacer(),
              const Text(
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
              const Text(
                'in upcoming bills',
                style: TextStyles.h2NormalWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}