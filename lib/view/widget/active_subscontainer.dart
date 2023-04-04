
import '../view.dart';

class ActiveSubsContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;

  const ActiveSubsContainer(
      {super.key, required this.text1, required this.text2,required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(bottom: 8.0.sp),
        child: Column(
          children: [
            Container(
              width: 50.w,
              decoration:  BoxDecoration(
                  border:Border(
                    top: BorderSide(
                      color: color,
                      width: 2.w,
                    ),
                  )
              ),
            ),
            Container(
              width:100.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: AppColor.lightBlack,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text1,
                    style: TextStyles.h2NormalWhite,
                  ),
                  Text(
                    text2,
                    style: TextStyles.h2NormalWhite,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
