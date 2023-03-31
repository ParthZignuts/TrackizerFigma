import '../../provider/provider.dart';
import '../view.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

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
    final calenderProvider = Provider.of<CalenderScreenProvider>(context);
    calenderProvider.getDatesWithDayNames();
    List<String> datesList = calenderProvider.dates;
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: AppColor.listTileDarkGrey,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24.0),
                  bottomLeft: Radius.circular(24.0)),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  const TitleRowForTitleAndSettingBtn(title: 'Calender'),
                  const CalenderTopTitle(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '3 subscriptions for today',
                          style: TextStyles.h3NormalWhite,
                        ),
                        DropDownList(calenderProvider: calenderProvider),
                      ],
                    ),
                  ),
                  ListViewOfDayAndDate(
                      datesList: datesList, calenderProvider: calenderProvider),
                ],
              ),
            ),
          ),
          SelectedDateDayAndTotalBudgetContainer(
              calenderProvider: calenderProvider),
          CalenderBottomSubsGridView(subscriptions: subscriptions, subscriptionsPrices: subscriptionsPrices)
        ],
      ),
    );
  }
}
