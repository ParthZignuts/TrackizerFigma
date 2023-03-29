import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import '../../provider/provider.dart';
import '../view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: Container(
        color: AppColor.bgBlack,
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    )),
              ),
              const BudgetSleekCircularSlider(),
              Row(
                children: const [
                  ActiveSubsContainer(
                      text1: 'Active Subs', text2: '12', color: AppColor.red),
                  ActiveSubsContainer(
                    text1: 'Highest Subs',
                    text2: '\$19.99',
                    color: AppColor.purple,
                  ),
                  ActiveSubsContainer(
                      text1: 'Lowest Subs',
                      text2: '\$5.99',
                      color: AppColor.deepBlue),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CupertinoSlidingSegmentedControl<int>(
                    backgroundColor: AppColor.black,
                    thumbColor: AppColor.bgBlack,
                    padding: const EdgeInsets.all(8),
                    groupValue: homeScreenProvider.groupValue,
                    children: const {
                      0: Text(
                        'Your subscriptions',
                        style: TextStyles.h2NormalWhite,
                      ),
                      1: Text(
                        'Upcoming Bills',
                        style: TextStyles.h2NormalWhite,
                      ),
                    },
                    onValueChanged: (value) {
                      homeScreenProvider.changeGroupValue(value!);
                    }),
              ),
              const SizedBox(height: 8.0,),
              showWidgetOnSwitchTab[homeScreenProvider.groupValue],
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColor.bgBlack,
        color: AppColor.darkGray,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home,color: AppColor.redAccent),
          Icon(Icons.menu,color: AppColor.redAccent),
          Icon(Icons.calendar_today_outlined,color: AppColor.redAccent),
          Icon(Icons.wallet_membership,color: AppColor.redAccent),
        ],
      ),
    );
  }
}
