import '../view.dart';
import '../../provider/provider.dart';

class RegistrationScreen1 extends StatelessWidget {
  const RegistrationScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.bgBlack,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0.sp),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png')),
                const Spacer(),
                CustomButtonWithIcon(
                    iconPath: 'assets/images/Apple.png',
                    color: AppColor.lightBlack,
                    title: 'Sign Up With Apple',
                    onPressed: () {},
                    textStyle: TextStyles.h2NormalWhite),
                CustomButtonWithIcon(
                    iconPath: 'assets/images/google.png',
                    color: AppColor.white,
                    title: 'Sign Up With Google',
                    onPressed: () {},
                    textStyle: TextStyles.h2NormalBlack),
                CustomButtonWithIcon(
                    iconPath: 'assets/images/facebook.png',
                    color: AppColor.blue,
                    title: 'Sign Up With Facebook',
                    onPressed: () {},
                    textStyle: TextStyles.h2NormalWhite),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or',
                    style: TextStyles.h2NormalWhite,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonWithIcon(
                    iconPath: 'assets/images/gmail.png',
                    color: AppColor.redAccent,
                    title: 'Sign Up With Email',
                    onPressed: () => Get.offAll(const RegistrationScreen2()),
                    textStyle: TextStyles.h2NormalBlack),
                Text(
                  'By registering, you agree to our Terms of Use. Learn\nhow we collect, use and share your data.',
                  style: TextStyles.h2NormalWhite,
                  textAlign:TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
