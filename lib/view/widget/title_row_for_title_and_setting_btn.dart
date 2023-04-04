import 'package:get/get.dart';
import '../view.dart';

class TitleRowForTitleAndSettingBtn extends StatelessWidget {
  final String title;

  const TitleRowForTitleAndSettingBtn({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 30.w),
        Text(
          title,
          style: TextStyles.h2NormalGreyTitle,
        ),
        IconButton(
            onPressed: () => Get.to(const SettingsScreen()),
            icon: const Icon(
              Icons.settings,
              color: AppColor.white,
            )),
      ],
    );
  }
}
