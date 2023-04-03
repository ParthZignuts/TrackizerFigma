import 'package:get/get.dart';

import '../view.dart';

class CalenderBottomSubsGridView extends StatelessWidget {
  const CalenderBottomSubsGridView({
    super.key,
    required this.subscriptions,
    required this.subscriptionsPrices,
  });

  final List subscriptions;
  final List subscriptionsPrices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only( left: 15.0.sp, right: 10.0.sp),
        child: GridView.builder(
          itemCount: subscriptions.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Get.to(DetailedSubscriptionScreen(imgScr: 'assets/images/$index.png', subTitle: '${subscriptions[index]}', subAmount: '${subscriptionsPrices[index]}'));
              },
              child: Padding(
                padding:  EdgeInsets.all(3.0.sp),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.listTileDarkGrey,
                    borderRadius: BorderRadius.circular(24.0),

                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                         EdgeInsets.only(top: 20.0.sp, left: 15.0.sp),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child:
                              Image.asset('assets/images/$index.png')),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 25.sp, left: 15.0.sp),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            subscriptions[index],
                            style: TextStyles.h2BoldWhite,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 4.sp, left: 15.0.sp),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            subscriptionsPrices[index],
                            style: TextStyles.h2NormalWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
