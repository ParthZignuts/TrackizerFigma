
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
        padding: const EdgeInsets.only( left: 15.0, right: 10.0),
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
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.listTileDarkGrey,
                    borderRadius: BorderRadius.circular(24.0),

                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.only(top: 20.0, left: 15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Expanded(
                              child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child:
                                  Image.asset('assets/images/$index.png')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              subscriptions[index],
                              style: TextStyles.h1BoldWhite,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 15.0),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
