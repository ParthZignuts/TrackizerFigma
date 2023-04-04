import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../view.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: SafeArea(
        child: Column(
          children: [
            const TitleRowForTitleAndSettingBtn(title: 'CreditCards'),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset('assets/images/Credit Cards.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.sp),
              child: Text(
                'Subscriptions',
                style: TextStyles.h1BoldWhite,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 45.w,
                        height: 45.h,
                        child: Image.asset('assets/images/$index.png'),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 80.h,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColor.listTileDarkGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                ),
                child: GestureDetector(
                  onTap: () => Get.bottomSheet(
                    Container(
                      color: AppColor.bgBlack,
                      child: Lottie.asset('assets/lottie/97039-oh-no.json'),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0.sp),
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          color: AppColor.lightWhite,
                          radius: const Radius.circular(16.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Add New Category  ',
                                      style: TextStyles.h2NormalWhite,
                                    ),
                                  ),
                                  Image.asset('assets/images/Add.png'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
