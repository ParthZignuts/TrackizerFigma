
import 'package:lottie/lottie.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:trackizer/provider/provider.dart';

import '../view.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width:35.w),
                     Text(
                      'Subscrption Info',
                      style: TextStyles.h2NormalGreyTitle,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: AppColor.white,
                        )),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 35.0.sp),
                  child: Column(
                    children: [
                      SizedBox(
                          width:100.w,
                          child: Image.asset(imgScr)),
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
                Padding(
                  padding:  EdgeInsets.all(8.0.sp),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: AppColor.navigationbarColor,
                    ),
                    child: SizedBox(
                      height: 250.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 300.sp,
                            child: ListTile(
                              title:  Text(
                                'Name',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                subTitle,
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 40.h,
                            width: 300.sp,
                            child: ListTile(
                              title: Text(
                                'Description',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                'Music App',
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 40.h,
                            width: 300.sp,
                            child: ListTile(
                              title: Text(
                                'Category',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                'Entertainment',
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 40.h,
                            width: 300.w,
                            child: ListTile(
                              title: Text(
                                'First Payment',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                '08.02.20023',
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 40.h,
                            width: 300.w,
                            child: ListTile(
                              title: Text(
                                'Reminder',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                'Never',
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 40.h,
                            width: 300.w,
                            child: ListTile(
                              title: Text(
                                'Currency',
                                style: TextStyles.h3NormalWhite,
                              ),
                              trailing: Text(
                                'USD(\$)',
                                style: TextStyles.h2NormalGreyTitle,
                              ),
                            ),
                          ),
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
                          Lottie.asset('assets/lottie/4964-check-mark-success-animation.json',repeat: false,),
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
