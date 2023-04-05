import 'package:flutter/cupertino.dart';
import 'package:trackizer/view/widget/box_design.dart';
import '../view.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgBlack,
      body: Column(
        children: [
          SafeArea(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0.sp),
                  child: GestureDetector(
                      child: Image.asset('assets/images/left_arrow.png'),
                      onTap: () => Navigator.pop(context)),
                ),
                SizedBox(
                  width: 125.w,
                ),
                Center(
                    child: Text(
                  'Settings',
                  style: TextStyles.h2NormalGreyTitle,
                )),
              ],
            ),
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColor.bgBlack,
                radius: 40.0,
                child: Image.asset('assets/images/Avatar.png'),
              ),
              Text(
                'John Doe',
                style: TextStyles.h1BoldWhite,
              ),
              Text(
                'j.doe@gmail.com',
                style: TextStyles.h2NormalGreyTitle,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                onPressed: () {},
                child: const Text('Edit Profile'),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'General',
                          style: TextStyles.h2NormalWhite,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, left: 8.0.sp, right: 8.0.sp, bottom: 8.0.sp),
                    child: BoxContainer(
                        height: 120.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/1_2.png',
                                label_1: 'Security',
                              ),
                              child_2: const BoxText(label: 'FaceId'),
                            ),
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/cloud.png',
                                label_1: 'iCloud Sync',
                              ),
                              child_2: CupertinoSwitch(
                                thumbColor: AppColor.white,
                                onChanged: (value) => print(value),
                                value: false,
                                activeColor: AppColor.navigationbarColor,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'My subscriptions',
                          style: TextStyles.h2NormalWhite,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, left: 8.0.sp, right: 8.0.sp, bottom: 8.0.sp),
                    child: BoxContainer(
                        height: 175.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/sort.png',
                                label_1: 'Sorting',
                              ),
                              child_2: const BoxText(label: 'Date'),
                            ),
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/summery.png',
                                label_1: 'Summery',
                              ),
                              child_2: const BoxText(label: 'Average'),
                            ),
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/summery.png',
                                label_1: 'Default currency',
                              ),
                              child_2: const BoxText(label: 'USD (\$)'),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Appearance',
                          style: TextStyles.h2NormalWhite,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, left: 8.0.sp, right: 8.0.sp, bottom: 8.0.sp),
                    child: BoxContainer(
                        height: 175.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/sort.png',
                                label_1: 'App icon',
                              ),
                              child_2: const BoxText(label: 'Default'),
                            ),
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/summery.png',
                                label_1: 'Theme',
                              ),
                              child_2: const BoxText(label: 'Dark'),
                            ),
                            InnerBoxContainer(
                              child_1: const DesignLabel(
                                iconAsset: 'assets/images/summery.png',
                                label_1: 'Default currency',
                              ),
                              child_2: const BoxText(label: 'USD (\$)'),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
