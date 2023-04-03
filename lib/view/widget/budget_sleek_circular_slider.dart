import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../view.dart';

class BudgetSleekCircularSlider extends StatelessWidget {
  const BudgetSleekCircularSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 285.h,
      child: SleekCircularSlider(
        innerWidget: (percentage) => centerDetails,
        appearance: CircularSliderAppearance(
            size: 290.sp,
            customWidths:
                CustomSliderWidths(handlerSize: 0, progressBarWidth: 10.0),
            customColors: CustomSliderColors(
              progressBarColors: [
                AppColor.red,
                AppColor.purple,
                AppColor.deepBlue
              ],
              dotColor: Colors.white,
              trackColor: Colors.red,
              shadowMaxOpacity: 10.0,
            ),
            infoProperties: InfoProperties(bottomLabelText: 'See Your Budget')),
        initialValue: 5,
        onChange: (value) => (){},
      ),
    );
  }
}

Widget centerDetails = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
        height: 35.h,
        width: 250.w,
        child: Image.asset('assets/images/logo.png')),
     SizedBox(
      height: 16.h,
    ),
     Text(
      '\$1,235',
      style: TextStyles.h1BoldWhiteForPrice,
    ),
     SizedBox(
      height: 16.h,
    ),
     Text(
      'This Month Bills',
      style: TextStyles.h2NormalWhite,
    ),
     SizedBox(
      height: 16.h,
    ),
    ElevatedButton(
      onPressed: () => Get.to(const SpendingAndBudgetScreen()),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.deepBlue,
      ),
      child:  Text(
        'See Your Budget',
        style: TextStyles.h1BoldWhite,
      ),
    ),
  ],
);
