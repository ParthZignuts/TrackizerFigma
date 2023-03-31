
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
        SizedBox(width: MediaQuery.of(context).size.width * 0.1),
        Text(
          title,
          style: TextStyles.h2NormalGreyTitle,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColor.white,
            )),
      ],
    );
  }
}