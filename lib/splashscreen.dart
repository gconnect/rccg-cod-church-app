import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/auth/auth_bloc.dart';
import 'package:rccg_cod/authentication/screen/signup.dart';
import 'package:rccg_cod/utils/constants.dart';

import 'dashboard/dashboard.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();      
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
      MaterialPageRoute(builder:(context) => const BlocNavigate()))); 
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              bodyBackgroundColor,
              bodyBackgroundColor,
              // Color.fromRGBO(9, 5, 26, 100)
              ], // Replace with your desired gradient colors
          ),
        ),
      child: const Center(
        child: Image(image: AssetImage("assets/images/logo.png")),
      ),
    );
  }
}

class BlocNavigate extends StatelessWidget {
  const BlocNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return const Dashboard();
        } else {
          return const SignupScreen();
        }
      },
    );
  }
}