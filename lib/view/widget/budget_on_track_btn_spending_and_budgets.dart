import '../view.dart';

class BudgetOnTrackBtn extends StatelessWidget {
  const BudgetOnTrackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 12.0.sp, right: 12.0.sp, bottom: 8.0.sp, top: 8.0.sp),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.bgBlack,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: AppColor.lightWhite),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Budget Are On Track ',
                style: TextStyles.h2NormalWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
