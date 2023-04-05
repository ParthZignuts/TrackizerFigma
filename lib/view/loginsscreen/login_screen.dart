import '../view.dart';
import '../../provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final passStrengthProvider =
        Provider.of<PasswordStrengthProvider>(context, listen: false);
    final loginProvider =
        Provider.of<LoginScreenProvider>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                CustomTextFormField(
                    controller: controller,
                    labelText: 'Email',
                    hintText: 'Enter Email'),
                const SizedBox(height: 16.0),
                PasswordTextFormField(
                    passStrengthProvider: passStrengthProvider),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 9.0.sp),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Consumer<LoginScreenProvider>(
                          builder: (context, value, child) {
                            return Checkbox(
                              value: loginProvider.rememberMe,
                              onChanged: (value) =>
                                  loginProvider.onRememberMeChanged(value!),
                              fillColor:
                                  MaterialStateProperty.all(AppColor.redAccent),
                            );
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyles.h2NormalWhite,
                        ),
                        const Spacer(),
                        Text(
                          'Forgot Password',
                          style: TextStyles.h2NormalWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                CustomButtonWithIcon(
                    color: Colors.redAccent,
                    title: 'Sign In',
                    onPressed: () => Get.offAll(const Trackizer()),
                    textStyle: TextStyles.h2NormalWhite,
                    iconPath: 'assets/images/pointing-to-right.png'),
                const Spacer(),
                Text(
                  'If You Don\'t Have An Account Yet?',
                  style: TextStyles.h2NormalWhite,
                ),
                CustomButtonWithIcon(
                    color: AppColor.deepBlue,
                    title: 'Sign Up',
                    onPressed: () => Get.offAll(const RegistrationScreen1()),
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
