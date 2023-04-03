import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackizer/view/sliverscreens/sliver_home_screen.dart';

import './view/view.dart';
import './provider/provider.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PasswordStrengthProvider>(
            create: (context) => PasswordStrengthProvider()),
        ChangeNotifierProvider<HomeScreenProvider>(
            create: (context) => HomeScreenProvider()),
        ChangeNotifierProvider<TrackizerScreenProvider>(
            create: (context) => TrackizerScreenProvider()),
        ChangeNotifierProvider<CalenderScreenProvider>(
            create: (context) => CalenderScreenProvider()),
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Trackizer',
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            // home:  const WelcomeScreen(),
            // home:  const HomeScreen(),
            // home: const Trackizer(),
            // home: const DetailedSubscriptionScreen(imgScr: 'assets/images/0.png', subTitle: 'SpotiFy',subAmount: '\$23.3'),
            home: const SliverHomeScreen(),
          );
        },
      ),
    );
  }
}
