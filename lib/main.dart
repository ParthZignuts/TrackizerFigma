


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
            create: (context) => CalenderScreenProvider()..getDatesWithDayNames()),
      ],
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Trackizer',
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            home:  const WelcomeScreen(),

          );
        },
      ),
    );
  }
}
