
import '../view.dart';
import '../../provider/provider.dart';

// ignore: camel_case_types
class RegistrationScreen1 extends StatelessWidget {
  const RegistrationScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logo.png')),
              const Spacer(),
              CupertinoCustomButton(
                  imgSrc: 'assets/images/apple-logo.png',
                  color: AppColor.lightBlack,
                  btnTitle: 'Sign Up With Apple',
                  onBtnPress: () {},
                  textStyle: TextStyles.h2NormalWhite),
              CupertinoCustomButton(
                  imgSrc: 'assets/images/google.png',
                  color: AppColor.white,
                  btnTitle: 'Sign Up With Google',
                  onBtnPress: () {},
                  textStyle: TextStyles.h2NormalBlack),
              CupertinoCustomButton(
                  imgSrc: 'assets/images/facebook.png',
                  color: AppColor.blue,
                  btnTitle: 'Sign Up With Facebook',
                  onBtnPress: () {},
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
              CupertinoCustomButton(
                  imgSrc: 'assets/images/gmail.png',
                  color: AppColor.redAccent,
                  btnTitle: 'Sign Up With Email',
                  onBtnPress: () => Get.offAll(const RegistrationScreen2()),
                  textStyle: TextStyles.h2NormalBlack),
               Text(
                'By registering, you agree to our Terms of Use. Learn\n            how we collect, use and share your data.',
                style: TextStyles.h2NormalWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
