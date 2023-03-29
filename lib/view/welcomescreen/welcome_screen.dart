
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
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Congue malesuada in ac justo, a tristique \n      leo massa. Arcu leo leo urna risus.',
                    style: TextStyles.h2NormalWhite,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CupertinoCustomButton(imgSrc: 'assets/images/pointing-to-right.png',color: AppColor.red, btnTitle: 'Get Started', onBtnPress:()=>Get.to(const RegistrationScreen1()),textStyle: TextStyles.h2Bold),
                  const SizedBox(
                    height: 16,
                  ),
                  CupertinoCustomButton(imgSrc: 'assets/images/student.png',color: AppColor.black, btnTitle: 'I Have An Account', onBtnPress:()=>Get.to(const LoginScreen()),textStyle: TextStyles.h2Bold),

                ],
              ),
            )),
        // child:
      ),
    );
  }
}


