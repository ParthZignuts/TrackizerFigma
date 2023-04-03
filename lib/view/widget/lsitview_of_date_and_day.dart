import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class ListViewOfDayAndDate extends StatelessWidget {
  const ListViewOfDayAndDate({
    super.key,
    required this.datesList,
    required this.calenderProvider,
  });

  final CalenderScreenProvider calenderProvider;
  final List<String> datesList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: datesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: SizedBox(
              width: 60.w,
              child: GestureDetector(
                onTap: () {
                  calenderProvider.onTapChangeVisibility(index);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColor.listTileDarkGrey,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                          visible: calenderProvider.changeVisibility == index,
                          child: SizedBox(
                            height: 8.h,
                            width: 8.w,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColor.redAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )),
                      Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        children: datesList[index]
                            .split("")
                            .map((string) =>
                                Text(string, style: TextStyles.h2NormalWhite))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
