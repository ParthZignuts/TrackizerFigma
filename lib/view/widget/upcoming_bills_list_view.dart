
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
              width:200,
              height: 200,
              child: Lottie.asset(
                  'assets/lottie/107612-bouncing-ball.json'),
            ),
            const Text('No Any Pending Bills', style: TextStyles.h2NormalWhite),
          ],
        ),
      ),
    );
  }
}