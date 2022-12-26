import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_project_demo/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static Route<void> route() =>
      MaterialPageRoute(builder: (_) => const LoginScreen());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/signin_balls.png'),
            ),
            const Text(
              'Sign in.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 50),
            const SocialButton(
              iconPath: 'assets/svgs/g_logo.svg',
              label: 'Continue with Google',
            ),
            const SizedBox(height: 20),
            const SocialButton(
              iconPath: 'assets/svgs/f_logo.svg',
              label: 'Continue with Facebook',
              horizontalPadding: 90,
            ),
            const SizedBox(height: 15),
            const Text(
              'or',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 15),
            BlocProvider(
              create: (context) {
                return LoginBloc(
                  authenticationRepository:
                      RepositoryProvider.of<AuthenticationRepository>(context),
                );
              },
              child: const LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}
