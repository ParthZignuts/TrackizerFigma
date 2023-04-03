import '../../provider/provider.dart';
import '../view.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate{




  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
  return  SizedBox(
    width: 340.w,
    child: CupertinoSlidingSegmentedControlHomeScreen(
        homeScreenProvider: homeScreenProvider),
  );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 100.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }

  
}