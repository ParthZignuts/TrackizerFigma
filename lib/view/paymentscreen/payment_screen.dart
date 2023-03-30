import 'package:lottie/lottie.dart';

import '../view.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: Center(
        child: Lottie.asset('assets/lottie/97039-oh-no.json'),
      ),
    );
  }
}
