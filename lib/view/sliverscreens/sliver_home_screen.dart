import '../../provider/provider.dart';
import '../view.dart';

class SliverHomeScreen extends StatelessWidget {
  const SliverHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    //It's For Showing list according to the Switching tabs
    List<Widget> showWidgetOnSwitchTab = [
      SubscriptionsitemsScrollView(
          subscriptions: subscriptions,
          subscriptionsPrices: subscriptionsPrices),
      const UpComingBillsListView(),
    ];

    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.bgBlack,
            expandedHeight: 340.h,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Column(
                  children: const [
                    TitleRowForTitleAndSettingBtn(title: ''),
                    BudgetSleekCircularSlider(),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
//
// Container(
// color: AppColor.bgBlack,
// child: SafeArea(
// child: Column(
// children: [
// Align(
// alignment: Alignment.topRight,
// child: IconButton(
// onPressed: () {},
// icon: const Icon(
// Icons.settings,
// color: Colors.white,
// )),
// ),
// const BudgetSleekCircularSlider(),
// Row(
// children: const [
// ActiveSubsContainer(
// text1: 'Active Subs', text2: '12',color: AppColor.red),
// ActiveSubsContainer(
// text1: 'Highest Subs', text2: '\$19.99',color: AppColor.purple),
// ActiveSubsContainer(
// text1: 'Lowest Subs', text2: '\$5.99',color: AppColor.deepBlue),
// ],
// ),
// SizedBox(
// width: 340.w,
// child: CupertinoSlidingSegmentedControlHomeScreen(homeScreenProvider: homeScreenProvider),
// ),
// const SizedBox(
// height: 8.0,
// ),
// showWidgetOnSwitchTab[homeScreenProvider.groupValue],
// ],
// ),
// ),
// ),