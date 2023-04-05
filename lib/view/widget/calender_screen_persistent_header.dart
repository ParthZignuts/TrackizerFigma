import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class CalenderScreenPersistentHeader extends SliverPersistentHeaderDelegate {
  CalenderScreenPersistentHeader({required this.calenderScreenProvider});

  final CalenderScreenProvider calenderScreenProvider;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        SelectedDateDayAndTotalBudgetContainer(
            calenderProvider: calenderScreenProvider),
        CalenderBottomSubsGridView(
            subscriptions: Subscriptioninfo.subscriptions,
            subscriptionsPrices: Subscriptioninfo.subscriptionsPrices),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  double get maxExtent => 700.0;

  @override
  double get minExtent => 0.0;
}
