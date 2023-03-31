
import '../view.dart';

class CalenderTopTitle extends StatelessWidget {
  const CalenderTopTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
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