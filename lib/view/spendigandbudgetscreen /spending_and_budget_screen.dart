import '../view.dart';
// ignore: must_be_immutable
class SpendingAndBudgetScreen extends StatelessWidget {
   SpendingAndBudgetScreen({Key? key}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: SafeArea(
        child: Column(
          children: [
            const TitleRowForTitleAndSettingBtn(title: 'Spending & Budgets '),
            const SpendingAndBudgetSemiCircleGraph(),
            const BudgetOnTrackBtn(),
            CategoriesListOfSpendingAndBudget(
                subscriptionsTitle: subscriptionsTitle,
                subscriptionsPrices: subscriptionsPrices,
                subscriptionsSubTitle: subscriptionsSubTitle)
          ],
        ),
      ),
    );
  }
}
