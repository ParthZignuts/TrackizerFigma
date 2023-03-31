import 'package:dotted_border/dotted_border.dart';
import 'package:lottie/lottie.dart';
import 'package:trackizer/provider/provider.dart';

import '../view.dart';

class CategoriesListOfSpendingAndBudget extends StatelessWidget {
  const CategoriesListOfSpendingAndBudget({
    super.key,
    required this.subscriptionsTitle,
    required this.subscriptionsPrices,
    required this.subscriptionsSubTitle,
  });

  final List subscriptionsTitle;
  final List subscriptionsPrices;
  final List subscriptionsSubTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: subscriptionsTitle.length + 1,
        itemBuilder: (context, index) {
          if (index < subscriptionsTitle.length) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.listTileDarkGrey,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/images/1_$index.png',
                        color: AppColor.white,
                      ),
                      trailing: Text(
                        subscriptionsPrices[index],
                        style: TextStyles.h2NormalWhite,
                      ),
                      title: Text(
                        subscriptionsTitle[index],
                        style: TextStyles.h2NormalWhite,
                      ),
                      subtitle: Text(
                        subscriptionsSubTitle[index],
                        style: TextStyles.h3NormalLightWhite,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LinearProgressIndicator(
                        color: AppColor.cyan,
                        value: 0.2,
                        backgroundColor: AppColor.lightBlack,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () => Get.bottomSheet(
                Container(
                  color: AppColor.bgBlack,
                  child: Lottie.asset('assets/lottie/97039-oh-no.json'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  color: AppColor.lightWhite,
                  radius: const Radius.circular(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Card(
                      color: AppColor.bgBlack,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Add New Category  ',
                            style: TextStyles.h2NormalWhite,
                          ),
                          Image.asset('assets/images/Add.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
