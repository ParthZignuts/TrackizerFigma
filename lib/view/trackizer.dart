import 'package:trackizer/view/homescreen/home_screen.dart';
import '../provider/provider.dart';
import './view.dart';

class Trackizer extends StatelessWidget {
  Trackizer({Key? key}) : super(key: key);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final trackizerProvider = Provider.of<TrackizerScreenProvider>(context);
    return Scaffold(
      body: PageView(
          controller: trackizerProvider.pageController,
          children: const <Widget>[
            HomeScreen(),
            SpendingAndBudgetScreen(),
            CalenderScreen(),
            PaymentScreen(),
          ],
          onPageChanged: (int index) => {
                trackizerProvider.tabIndex = index,
                trackizerProvider.onTabChanged(),
              }),
      bottomNavigationBar: AnimatedBottomNavigationbar(
        onTabTap: (int index) {
          trackizerProvider.tabIndex = index;
          trackizerProvider.onTabChanged();
        },
        trackizerProvider: trackizerProvider,
      ),
    );
  }
}
