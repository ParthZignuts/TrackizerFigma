import 'package:get/get.dart';
import '../view.dart';

class SubscriptionsitemsScrollView extends StatelessWidget {
  const SubscriptionsitemsScrollView({
    super.key,
    required this.subscriptions,
    required this.subscriptionsPrices,
  });

  final List subscriptions;
  final List subscriptionsPrices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: subscriptions.length,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(DetailedSubscriptionScreen(
                  imgScr: 'assets/images/$index.png',
                  subTitle: '${subscriptions[index]}',
                  subAmount: '${subscriptionsPrices[index]}'));
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.0.sp, right: 16.0.sp, top: 2.0.sp, bottom: 8.0.sp),
              child: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  color: AppColor.listTileDarkGrey,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: SizedBox(
                        height: 40.h,
                        width: 40.w,
                        child: Image.asset('assets/images/$index.png')),
                    title: Text(
                      subscriptions[index],
                      style: TextStyles.h2NormalWhite,
                    ),
                    trailing: Text(
                      subscriptionsPrices[index],
                      style: TextStyles.h2NormalWhite,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
