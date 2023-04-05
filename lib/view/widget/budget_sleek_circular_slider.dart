import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../view.dart';

class BudgetSleekCircularSlider extends StatelessWidget {
  const BudgetSleekCircularSlider({
    super.key,
  });

  static final listOfColor=[
    AppColor.green,
    AppColor.darkPurple,
    AppColor.redAccent,
    AppColor.cyan,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225.h,
      child: SleekCircularSlider(
        innerWidget: (percentage) => centerDetails,
        appearance: CircularSliderAppearance(
            size: 290.sp,
            customWidths:
                CustomSliderWidths(handlerSize: 0, progressBarWidth: 10.0),
            customColors: CustomSliderColors(

              hideShadow: true,
              trackColors: listOfColor,
              progressBarColors: listOfColor,
              dotColor: Colors.white,
              trackColor: Colors.red,
              shadowMaxOpacity: 0.9,
            ),
            infoProperties: InfoProperties(bottomLabelText: 'See Your Budget')),
        initialValue: 5,
        onChange: (value) => () {},
      ),
    );
  }
}

Widget centerDetails = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
        height: 20.h,
        width: 130.w,
        child: Image.asset('assets/images/logo.png')),
    SizedBox(
      height: 15.h,
    ),
    Text(
      '\$1,235',
      style: TextStyles.h1BoldWhiteForPrice,
      textAlign: TextAlign.center,
    ),
    SizedBox(
      height: 12.h,
    ),
    Text(
      'This Month Bills',
      style: TextStyles.h2NormalWhite,
      textAlign: TextAlign.center,
    ),
    SizedBox(
      height: 15.h,
    ),
    SizedBox(
      child: ElevatedButton(
        onPressed: () => Get.to(const SpendingAndBudgetScreen()),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.deepBlue,
        ),
        child: Text(
          'See Your Budget',
          style: TextStyles.h3BoldWhite,
        ),
      ),
    ),
  ],
);
