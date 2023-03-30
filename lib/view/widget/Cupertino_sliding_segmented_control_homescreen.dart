
import 'package:flutter/cupertino.dart';
import '../../provider/homescreen/home_screen_provider.dart';
import '../view.dart';

class CupertinoSlidingSegmentedControlHomeScreen extends StatelessWidget {
  const CupertinoSlidingSegmentedControlHomeScreen({
    super.key,
    required this.homeScreenProvider,
  });

  final HomeScreenProvider homeScreenProvider;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<int>(
        backgroundColor: AppColor.black,
        thumbColor: AppColor.bgBlack,
        padding: const EdgeInsets.all(8),
        groupValue: homeScreenProvider.groupValue,
        children: const {
          0: Text(
            'Your subscriptions',
            style: TextStyles.h2NormalWhite,
          ),
          1: Text(
            style: TextStyles.h2NormalWhite,
            'Upcoming Bills',
          ),
        },
        onValueChanged: (value) {
          homeScreenProvider.changeGroupValue(value!);
        });
  }
}
