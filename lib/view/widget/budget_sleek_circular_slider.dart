import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../view.dart';

class BudgetSleekCircularSlider extends StatelessWidget {
  const BudgetSleekCircularSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      innerWidget: (percentage) => logoImage,
      appearance: CircularSliderAppearance(
          size: 300,
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
      onChange: (value) => print(value),
    );
  }
}

Widget logoImage = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset('assets/images/logo.png'),
    const SizedBox(
      height: 16,
    ),
    const Text(
      '\$1,235',
      style: TextStyles.h1BoldWhiteForPrice,
    ),
    const SizedBox(
      height: 16,
    ),
    const Text(
      'This Month Bills',
      style: TextStyles.h2NormalWhite,
    ),
    const SizedBox(
      height: 16,
    ),
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.deepBlue,
      ),
      child: const Text(
        'See Your Budget',
        style: TextStyles.h1BoldWhite,
      ),
    ),
  ],
);
