import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/auth/auth_bloc.dart';
import 'package:rccg_cod/authentication/screen/login.dart';

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
              (Route<dynamic> route) => false);
        }
      },
      buildWhen: ((previous, current) {
        if (current is AuthFailure) {
          return false;
        }
        return true;
      }),
      builder: (context, state) {
     return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () async {
                context
                    .read<AuthBloc>()
                    .add(AuthSignout());
              })
        ],
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.blue),
        title: Text((state as AuthSuccess).displayName!),
        ),
        body: Text("Hello World"),
      );
  });
  }
}