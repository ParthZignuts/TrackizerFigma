import 'package:get/route_manager.dart';
import '../view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/images/Welcome Screen.png"),
                fit: BoxFit.fill)),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.sp,left: 5.0.sp,right: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Congue malesuada in ac justo, a tristique \n      leo massa. Arcu leo leo urna risus.',
                    style: TextStyles.h2NormalWhite,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CupertinoCustomButton(
                      imgSrc: 'assets/images/pointing-to-right.png',
                      color: AppColor.red,
                      btnTitle: 'Get Started',
                      onBtnPress: () => Get.offAll(const RegistrationScreen1()),
                      textStyle: TextStyles.h2BoldWhite),
                   SizedBox(
                    height: 8.h,
                  ),
                  CupertinoCustomButton(
                      imgSrc: 'assets/images/student.png',
                      color: AppColor.black,
                      btnTitle: 'I Have An Account',
                      onBtnPress: () => Get.offAll(const LoginScreen()),
                      textStyle: TextStyles.h2BoldWhite),
                ],
              ),
            )),
        // child:
      ),
    );
  }
}
