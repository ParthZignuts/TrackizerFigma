import '../view.dart';

class SpendingAndBudgetScreen extends StatelessWidget {
  const SpendingAndBudgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List subscriptionsTitle = [
      'Auto & Transport',
      'Entertainment',
      'Security',
    ];
    List subscriptionsSubTitle = [
      '\$375 left to spend',
      '\$375 left to spend',
      '\$375 left to spend',
    ];
    List subscriptionsPrices = [
      '\$25.99',
      '\$50.99',
      '\$5.99',
    ];
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                const Text(
                  'Spending & Budgets ',
                  style: TextStyles.h2NormalWhite,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: AppColor.white,
                    )),
              ],
            ),
            const SpendingAndBudgetSemiCircleGraph(),
            const BudgetOnTrackBtn(),
            CategoriesListOfSpendingAndBudget(
                subscriptionsTitle: subscriptionsTitle,
                subscriptionsPrices: subscriptionsPrices,
                subscriptionsSubTitle: subscriptionsSubTitle)
          ],
        ),
      ),
      // bottomNavigationBar: const AnimatedBottomNavigationbar(),
    );
  }
}
