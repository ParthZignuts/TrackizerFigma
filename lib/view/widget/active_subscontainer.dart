
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 50,
              decoration:  BoxDecoration(
                  border:Border(
                    top: BorderSide(
                      color: color,
                      width: 2,
                    ),
                  )
              ),
            ),
            Container(
              width:MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.1,
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
