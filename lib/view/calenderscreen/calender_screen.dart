import 'package:lottie/lottie.dart';

import '../view.dart';
class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: Center(
        child: Lottie.asset('assets/lottie/41546-man-working-in-laptop.json'),
      ),
    );
  }
}
