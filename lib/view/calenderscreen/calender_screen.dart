import '../../provider/provider.dart';
import '../view.dart';
import '../widget/calender_screen_persistent_header.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calenderProvider = Provider.of<CalenderScreenProvider>(context);
    List<String> datesList = calenderProvider.dates;

    return Scaffold(
        backgroundColor: AppColor.bgBlack,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: AppColor.bgBlack,
                expandedHeight: 380.h,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Container(
                        height: 380.h,
                        decoration: const BoxDecoration(
                          color: AppColor.listTileDarkGrey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(24.0),
                              bottomLeft: Radius.circular(24.0)),
                        ),
                        child: SafeArea(
                          child: Column(
                            children: [
                              const TitleRowForTitleAndSettingBtn(
                                  title: 'Calender'),
                              const CalenderTopTitle(),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 12.0.sp, right: 8.0.sp),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3 subscriptions for today',
                                      style: TextStyles.h3NormalWhite,
                                    ),
                                    DropDownList(
                                        calenderProvider: calenderProvider),
                                  ],
                                ),
                              ),
                              ListViewOfDayAndDate(
                                  datesList: datesList,
                                  calenderProvider: calenderProvider),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: CalenderScreenPersistentHeader(
                    calenderScreenProvider: calenderProvider),
              ),
            ],
          ),
        ));
  }
}
