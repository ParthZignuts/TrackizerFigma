
import '../view.dart';
import '../../provider/provider.dart';

class RegistrationScreen2 extends StatelessWidget {
  const RegistrationScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final passStrengthProvider =
        Provider.of<PasswordStrengthProvider>(context, listen: false);
    double passStrength = passStrengthProvider.strength;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: AppColor.bgBlack,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0.sp),
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

                PasswordTextFormField(
                    passStrengthProvider: passStrengthProvider),
                SizedBox(
                  height: 20.h,
                ),
                // The strength indicator bar
                const PasswordStrenghtIndicator(),
                const SizedBox(
                  height: 16,
                ),

                // The message about the strength of the entered password
                Padding(
                  padding: EdgeInsets.only(left: 7.0.sp),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Consumer<PasswordStrengthProvider>(
                        builder: (context, value, child) {
                          return Text(
                            passStrengthProvider.displayText,
                            style: TextStyles.h2NormalWhite,
                          );
                        },
                      )),
                ),

                const SizedBox(height: 16.0),
                CustomButtonWithIcon(
                    color: Colors.redAccent,
                    title: 'Get Started ,it\'s Free',
                    onPressed: passStrength < 1 / 2
                        ? () => Get.snackbar(
                            'Failed', 'Please Enter Valid Credentials',
                            backgroundColor: AppColor.red)
                        : () => Get.offAll(const HomeScreen()),
                    textStyle: TextStyles.h2NormalWhite,
                    iconPath: 'assets/images/pointing-to-right.png'),
                const Spacer(),
                Text(
                  'Do You Have Alread an Account',
                  style: TextStyles.h2NormalWhite,
                ),
                CustomButtonWithIcon(
                    color: AppColor.deepBlue,
                    title: 'Sign In',
                    onPressed: () => Get.offAll(const LoginScreen()),
                    textStyle: TextStyles.h2NormalWhite,
                    iconPath: 'assets/images/signin.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
