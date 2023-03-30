import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../view.dart';

class AnimatedBottomNavigationbar extends StatelessWidget {
  final void Function(int value)? onTabTap;

  const AnimatedBottomNavigationbar({
    required this.onTabTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 0,
      backgroundColor: AppColor.bgBlack,
      color: AppColor.darkGray,
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
