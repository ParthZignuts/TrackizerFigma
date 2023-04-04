
import '../view.dart';

class SubscriptionAllInfo extends StatelessWidget {
  const SubscriptionAllInfo({
    super.key,
    required this.subTitle,
    required this.title,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 300.w,
      child: ListTile(
        title: Text(
          title,
          style: TextStyles.h3NormalWhite,
        ),
        trailing: Text(
          subTitle,
          style: TextStyles.h2NormalGreyTitle,
        ),
      ),
    );
  }
}
