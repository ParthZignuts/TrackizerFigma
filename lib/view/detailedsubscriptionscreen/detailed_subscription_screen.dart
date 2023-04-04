import 'package:lottie/lottie.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:trackizer/provider/provider.dart';

import '../view.dart';
import '../widget/dashed_seprator_line.dart';

class DetailedSubscriptionScreen extends StatelessWidget {
  const DetailedSubscriptionScreen(
      {Key? key,
      required this.imgScr,
      required this.subTitle,
      required this.subAmount})
      : super(key: key);

  final String imgScr;
  final String subTitle;
  final String subAmount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: SafeArea(
        child: Center(
          child: TicketWidget(
            isCornerRounded: true,
            width: 330.w,
            height: 620.h,
            color: AppColor.listTileDarkGrey,
            child: Column(
              children: [
                const TitleRowForTitleAndSettingBtn(title: 'Subscription Info'),
                Padding(
                  padding: EdgeInsets.only(top: 35.0.sp),
                  child: Column(
                    children: [
                      SizedBox(width: 100.w, child: Image.asset(imgScr)),
                    ],
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyles.h1BoldWhiteForPrice,
                ),
                Text(
                  ' $subAmount',
                  style: TextStyles.h2NormalWhite,
                ),
                const Spacer(),
                const DashedSepratorLine(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 13.0.sp,
                      left: 8.0.sp,
                      right: 8.0.sp,
                      bottom: 8.0.sp),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: AppColor.navigationbarColor,
                    ),
                    child: SizedBox(
                      height: 250.h,
                      child: Column(
                        children: [
                          SubscriptionAllInfo(
                              title: 'Name', subTitle: subTitle),
                          const SubscriptionAllInfo(
                              title: 'Description', subTitle: 'Music App'),
                          const SubscriptionAllInfo(
                              title: 'Category', subTitle: 'Entertainment'),
                          const SubscriptionAllInfo(
                              title: 'First Payment', subTitle: '08.02.20023'),
                          const SubscriptionAllInfo(
                              title: 'Reminder', subTitle: 'Never'),
                          const SubscriptionAllInfo(
                              title: 'Currency', subTitle: 'USD(\$)'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300.w,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          AppColor.navigationbarColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.bottomSheet(
                          Lottie.asset(
                            'assets/lottie/4964-check-mark-success-animation.json',
                            repeat: false,
                          ),
                        );
                      },
                      child: const Text('Save')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
