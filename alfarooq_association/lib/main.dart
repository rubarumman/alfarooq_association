import 'package:alfarooq_association/Controller/Login/login_controller.dart';
import 'package:alfarooq_association/Controller/Profile/profile_controller.dart';
import 'package:alfarooq_association/Controller/ProjectDetails/project_details_controller.dart';
import 'package:alfarooq_association/Controller/Projects/project_controller.dart';
import 'package:alfarooq_association/Controller/Register/register_Controller.dart';
import 'package:flutter/material.dart';
import 'package:alfarooq_association/View/Home/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';


SharedPreferences? prefs;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
            create: (_) => LoginController()),
        ChangeNotifierProvider<ProfileController>(
            create: (_) => ProfileController()),
        ChangeNotifierProvider<ProjectsController>(
            create: (_) => ProjectsController()),
        ChangeNotifierProvider<ProjectDetailsController>(
            create: (_) => ProjectDetailsController()),
             ChangeNotifierProvider<RegisterController>(
            create: (_) => RegisterController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "جمعية الفاروق الخيرية",
        theme: ThemeData(
          fontFamily: 'Cairo',
          primaryColor: Color(0xFF86AB59),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
