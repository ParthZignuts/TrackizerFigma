import 'package:trackizer/view/homescreen/home_screen.dart';

import '../view.dart';
import '../../provider/provider.dart';

// ignore: camel_case_types
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue!;

        if (rememberMe) {
        } else {}
      });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final passStrengthProvider = Provider.of<PasswordStrengthProvider>(context);
    double passStrength = passStrengthProvider.strength;
    return Scaffold(
      body: Container(
        color: AppColor.black,
        child: SafeArea(
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

              PasswordTextFormField(passStrengthProvider: passStrengthProvider),
              const SizedBox(
                height: 16,
              ),
              // The strength indicator bar

              // The message about the strength of the entered password
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: _onRememberMeChanged,
                      fillColor: MaterialStateProperty.all(AppColor.redAccent),
                    ),
                    const Text('Remember Me',style: TextStyles.h2NormalWhite,),
                    const Spacer(),
                    const Text('Forgot Password',style:  TextStyles.h2NormalWhite,),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),

              CupertinoCustomButton(
                  color: Colors.redAccent,
                  btnTitle: 'Sign In',
                  onBtnPress: () => Get.to( HomeScreen()),
                  textStyle: TextStyles.h2NormalWhite,
                  imgSrc: 'assets/images/pointing-to-right.png'),
              const Spacer(),
              const Text(
                'If You Don\'t Have An Account Yet?',
                style: TextStyles.h2NormalWhite,
              ),
              CupertinoCustomButton(
                  color: AppColor.deepBlue,
                  btnTitle: 'Sign Up',
                  onBtnPress: () => Get.to(const RegistrationScreen1()),
                  textStyle: TextStyles.h2NormalWhite,
                  imgSrc: 'assets/images/signin.png'),
            ],
          ),
        ),
      ),
    );
  }
}
