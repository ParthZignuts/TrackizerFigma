import 'package:trackizer/view/homescreen/home_screen.dart';

import '../view.dart';
import '../../provider/provider.dart';

// ignore: camel_case_types
class RegistrationScreen2 extends StatelessWidget {
  const RegistrationScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final passStrengthProvider = Provider.of<PasswordStrengthProvider>(context);
    double passStrength = passStrengthProvider.strength;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: AppColor.black,
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(8.0.sp),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png')),
                const Spacer(),
                CustomTextFormField(
                    controller: controller,
                    labelText: 'Email',
                    hintText: 'Enter Email'),

                const SizedBox(height: 16.0),

                PasswordTextFormField(passStrengthProvider: passStrengthProvider),
                 SizedBox(
                  height: 20.h,
                ),
                // The strength indicator bar
                PasswordStrenghtIndicator(passStrength: passStrength),
                const SizedBox(
                  height: 16,
                ),

                // The message about the strength of the entered password
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    passStrengthProvider.displayText,
                    style: TextStyles.h2NormalWhite,
                  ),
                ),

                const SizedBox(height: 16.0),
                CupertinoCustomButton(
                    color: Colors.redAccent,
                    btnTitle: 'Get Started ,it\'s Free',
                    onBtnPress: passStrength < 1 / 2
                        ? () => Get.snackbar(
                            'Failed', 'Please Enter Valid Credentials',
                            backgroundColor: AppColor.red)
                        : () => Get.offAll( const HomeScreen()),
                    textStyle: TextStyles.h2NormalWhite,
                    imgSrc: 'assets/images/pointing-to-right.png'),
                const Spacer(),
                 Text(
                  'Do You Have Alread an Account',
                  style: TextStyles.h2NormalWhite,
                ),
                CupertinoCustomButton(
                    color: AppColor.deepBlue,
                    btnTitle: 'Sign In',
                    onBtnPress: () => Get.offAll(const LoginScreen()),
                    textStyle: TextStyles.h2NormalWhite,
                    imgSrc: 'assets/images/signin.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
