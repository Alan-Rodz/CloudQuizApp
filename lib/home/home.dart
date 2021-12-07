import 'package:cloudquizapp/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:cloudquizapp/login/login.dart';
import 'package:cloudquizapp/topics/topics.dart';
import 'package:cloudquizapp/services/auth.dart';
import 'package:cloudquizapp/shared/error.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const TopicsScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
