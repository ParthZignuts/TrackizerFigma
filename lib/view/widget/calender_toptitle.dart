
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../view.dart';

class CalenderTopTitle extends StatelessWidget {
  const CalenderTopTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 0.0.sp,left: 12.0.sp,right: 16.0.sp,bottom: 0.0.sp),
      child: Column(
        children:  [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Subs',
                style: TextStyles.h1BoldWhiteTitle,
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Schedule',
                style: TextStyles.h1BoldWhiteTitle,
              )),
        ],
      ),
    );
  }
}