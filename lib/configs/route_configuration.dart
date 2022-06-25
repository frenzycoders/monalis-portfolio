import 'package:get/get_navigation/get_navigation.dart';
import 'package:monalisa/models/education_model.dart';
import 'package:monalisa/screens/home_screen.dart';
import 'package:monalisa/screens/splash_screen.dart';

class Configuration {
  static List<GetPage> routes = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
    GetPage(
      name: '/',
      page: () => SplashScreen(),
    )
  ];
  static String appName = 'Monalisa';

  static List<EducationModel> educations = [
    EducationModel(
      schoolName: 'UIC Chandigarh',
      degree: 'MCA',
      university: 'Chandigarh University',
      startAt: '31/12/2021',
      endAt: '31/06/2023',
      obtainedMarks: '80',
      located: 'Chandigarh Punjab',
    )
  ];

  static List<String> skills = [
    'Nodejs',
    'JavaScript',
    'python',
    'PHP',
    'Flutter',
    'Dart',
    'TypeScript',
    'C++',
    'C',
    'Java',
    'Mongodb',
    'socket.io'
  ];
}
