import '../../provider/provider.dart';
import '../view.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body:SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColor.bgBlack,
              expandedHeight: 340.h,
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Column(
                    children: const [
                      TitleRowForTitleAndSettingBtn(title: ''),
                      BudgetSleekCircularSlider(),
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(

                delegate:
                HomeScreenPersistentHeader(homeScreenProvider: homeScreenProvider)),
          ],
        ),
      ),
    );
  }
}

