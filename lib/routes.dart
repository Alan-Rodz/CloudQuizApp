import 'package:cloudquizapp/about/about.dart';
import 'package:cloudquizapp/profile/profile.dart';
import 'package:cloudquizapp/login/login.dart';
import 'package:cloudquizapp/topics/topics.dart';
import 'package:cloudquizapp/home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
