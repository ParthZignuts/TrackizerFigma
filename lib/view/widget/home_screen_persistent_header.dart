import '../../provider/homescreen/home_screen_provider.dart';
import '../view.dart';

class HomeScreenPersistentHeader extends SliverPersistentHeaderDelegate {
  HomeScreenPersistentHeader({required this.homeScreenProvider});

  final HomeScreenProvider homeScreenProvider;
  static List subscriptions = [
    'Spotify',
    'YouTube Premium',
    'Microsoft OneDrive',
    'NetFlix',
    'PhotoShop'
  ];
  static List subscriptionsPrices = [
    '\$5.99',
    '\$18.99',
    '\$29.99',
    '\$35.99',
    '\$49.98'
  ];

  List<Widget> showWidgetOnSwitchTab = [
    SubscriptionsitemsScrollView(
        subscriptions: subscriptions,
        subscriptionsPrices: subscriptionsPrices),
    const UpComingBillsListView(),
  ];

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Column(
      children: [
        Row(
          children: const [
            ActiveSubsContainer(
                text1: 'Active Subs', text2: '12', color: AppColor.red),
            ActiveSubsContainer(
                text1: 'Highest Subs',
                text2: '\$19.99',
                color: AppColor.purple),
            ActiveSubsContainer(
                text1: 'Lowest Subs',
                text2: '\$5.99',
                color: AppColor.deepBlue),
          ],
        ),
        SizedBox(
          width: 340.w,
          child: CupertinoSlidingSegmentedControlHomeScreen(
              homeScreenProvider: homeScreenProvider),
        ),
        showWidgetOnSwitchTab[homeScreenProvider.groupValue],
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
