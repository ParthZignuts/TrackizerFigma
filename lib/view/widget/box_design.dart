import '../view.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({
    super.key,
    required this.child,
    required this.height,
  });

  Widget child;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 15),
      padding: const EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 0).w,
      height: height.h,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.pink,
          border: Border.all(color: AppColor.navigationbarColor, width: 2.3.w),
          borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}

class InnerBoxContainer extends StatelessWidget {
  InnerBoxContainer({
    super.key,
    required this.child_1,
    required this.child_2,
  });

  Widget child_1;
  Widget child_2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        child_1,
        child_2,
      ],
    );
  }
}

class BoxText extends StatelessWidget {
  const BoxText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyles.h2NormalWhite,
    );
  }
}

class DesignLabel extends StatelessWidget {
  DesignLabel({
    super.key,
    required this.iconAsset,
    required this.label_1,
  });

  final String iconAsset;
  final String label_1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 45.h,
            width: 50.w,
            margin: const EdgeInsets.only(right: 15, top: 10).r,
            padding: const EdgeInsets.all(15).w,
            decoration: BoxDecoration(
              color: AppColor.navigationbarColor,
              borderRadius: BorderRadius.circular(10).w,
            ),
            child: Image.asset(iconAsset),
          ),
          Text(
            label_1,
            style: TextStyles.h2NormalWhite,
          )
        ],
      ),
    );
  }
}
