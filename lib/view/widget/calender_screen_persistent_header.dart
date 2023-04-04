import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class CalenderScreenPersistentHeader extends SliverPersistentHeaderDelegate {
  CalenderScreenPersistentHeader({required this.calenderScreenProvider});

  final  CalenderScreenProvider calenderScreenProvider;
  List subscriptions = [
    'Spotify',
    'YouTube Premium',
    'Microsoft OneDrive',
    'NetFlix',
    'PhotoShop'
  ];
  List subscriptionsPrices = [
    '\$5.99',
    '\$18.99',
    '\$29.99',
    '\$35.99',
    '\$49.98'
  ];
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    return  Column(
      children: [
        SelectedDateDayAndTotalBudgetContainer(
            calenderProvider: calenderScreenProvider),
        CalenderBottomSubsGridView(
            subscriptions: subscriptions,
            subscriptionsPrices: subscriptionsPrices),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  double get maxExtent => 800.0;

  @override
  double get minExtent => 0.0;
}

