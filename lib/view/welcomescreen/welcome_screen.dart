import 'package:get/route_manager.dart';
import '../view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const bottomPadding =
      EdgeInsets.only(bottom: 15.0, left: 5.0, right: 5.0);
  static const buttonHeight = SizedBox(height: 12.0);


  Widget welcomeMessage() {
    return Text(
      'Congue malesuada in ac justo, a tristique \n leo massa. Arcu leo leo urna risus.',
      style: TextStyles.h2NormalWhite,
      textAlign: TextAlign.center,
    );
  }

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
              padding: bottomPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(child: Image.asset('assets/images/logo.png')),
                  const Spacer(),
                  welcomeMessage(),
                  buttonHeight,
                  CustomButtonWithIcon(
                      iconPath: 'assets/images/pointing-to-right.png',
                      color: AppColor.red,
                      title: 'Get Started',
                      onPressed: () => Get.offAll(const RegistrationScreen1()),
                      textStyle: TextStyles.h2BoldWhite),
                  buttonHeight,
                  CustomButtonWithIcon(
                      iconPath: 'assets/images/student.png',
                      color: AppColor.black,
                      title: 'I Have An Account',
                      onPressed: () => Get.offAll(const LoginScreen()),
                      textStyle: TextStyles.h2BoldWhite),
                ],
              ),
            )),
        // child:
      ),
    );
  }
}
