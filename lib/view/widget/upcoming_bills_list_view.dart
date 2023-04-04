
import 'package:lottie/lottie.dart';
import '../view.dart';

class UpComingBillsListView extends StatelessWidget {
  const UpComingBillsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width:200.w,
              height: 200.h,
              child: Lottie.asset(
                  'assets/lottie/107612-bouncing-ball.json'),
            ),
             Text('No Any Pending Bills', style: TextStyles.h2NormalWhite),
          ],
        ),
      ),
    );
  }
}