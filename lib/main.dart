
import './view/view.dart';
import './provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PasswordStrengthProvider>( create: (context) => PasswordStrengthProvider()),
        ChangeNotifierProvider<HomeScreenProvider>( create: (context) => HomeScreenProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home:  const WelcomeScreen(),
        // home:  HomeScreen(),
      ),
    );
  }
}
