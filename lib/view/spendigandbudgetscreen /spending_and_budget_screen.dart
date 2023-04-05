import '../view.dart';

class SpendingAndBudgetScreen extends StatelessWidget {
  const SpendingAndBudgetScreen({Key? key}) : super(key: key);

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
                subscriptionsTitle: Subscriptioninfo.spendingSubscriptionsTitle,
                subscriptionsPrices:
                    Subscriptioninfo.spendingSubscriptionsPrices,
                subscriptionsSubTitle:
                    Subscriptioninfo.spendingSubscriptionsSubTitle),
          ],
        ),
      ),
    );
  }
}
