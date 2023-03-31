import '../../provider/calenderscreen/calenderscreen_provider.dart';
import '../view.dart';

class ListViewOfDayAndDate extends StatelessWidget {
  ListViewOfDayAndDate({
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
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
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
                    children: [
                      Visibility(
                          visible: calenderProvider.changeVisibility == index,
                          child: SizedBox(
                            height: 10,
                            width: 10,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: AppColor.redAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )),
                      Wrap(
                        runSpacing: 30,
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
