import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../provider/trackizerscreen/trackizer_screen_provider.dart';
import '../view.dart';

class AnimatedBottomNavigationbar extends StatelessWidget {
  final void Function(int value)? onTabTap;
 final  TrackizerScreenProvider trackizerProvider;
  const AnimatedBottomNavigationbar({
    required this.onTabTap,
    required this.trackizerProvider,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: trackizerProvider.tabIndex,
      backgroundColor: AppColor.bgBlack,
      color: AppColor.navigationbarColor,
      animationDuration: const Duration(milliseconds: 300),
      items: const [
        Icon(Icons.home, color: AppColor.redAccent),
        Icon(Icons.menu, color: AppColor.redAccent),
        Icon(Icons.calendar_today_outlined, color: AppColor.redAccent),
        Icon(Icons.wallet_membership, color: AppColor.redAccent),
      ],
      onTap: onTabTap!,
    );
  }
}
