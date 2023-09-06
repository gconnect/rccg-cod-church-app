import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/login/login_cubit.dart';
import 'package:rccg_cod/authentication/screen/signup.dart';
import '../../utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../signup/signup_cubit.dart';
import '../signup/signup_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  'assets/images/logo.png', // Replace with your logo image path
                  width: 150.0, // Adjust the width as needed
                  height: 150.0, // Adjust the height as needed
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 24, left: 24),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                )),
            Row(
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(top: 24, left: 24),
                    child: Text(
                      "Don’t have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.left,
                    )),
                TextButton(
                  onPressed: () {},
                  child: const Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Text("Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold))),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _EmailInput(),
                  const SizedBox(height: 20.0),
                  const _Password(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          // Handle "Forgot Password" button press
                        },
                        child: const Text('Forgot Password?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        padding:
                            const EdgeInsets.all(16.0), // Set button padding
                      ),
                      onPressed: () {
                        // Handle login button press
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Center(
                      child: Text(
                        '------------ Or ----------',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          backgroundColor:
                              buttonColor // Set button padding
                          ),
                      onPressed: () {
                        // Handle "Login with Google" button press
                      },
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Login with Google'),
                            SizedBox(
                              width: 10,
                            ),
                            //
                            SvgPicture(SvgAssetLoader("assets/images/google_logo.svg"))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      // buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        if (state is EmailInvalid) {
        } else if (state is EmailInvalid) {}
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) =>
              context.read<SignupCubit>().validateEmail(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.white)),
              prefixIcon: const Icon(Icons.mail),
              hintText: 'Enter your email',
              labelText: "Email",
              hintStyle: const TextStyle(color: Colors.blue),
              errorText: state is EmailInvalid ? 'Invalid email format' : null),
          style: const TextStyle(color: Colors.white),
        );
      },
    );
  }
}

class _Password extends StatelessWidget {
  const _Password({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      // buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        if (state is EmailInvalid) {
        } else if (state is EmailInvalid) {}
        return TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              enabled: true,
              labelText: "Password",
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {},
              ),
              hintText: 'Enter your password',
              hintStyle: const TextStyle(color: Colors.blue),
              labelStyle: const TextStyle(decorationColor: Colors.white),
              errorText: state is EmailInvalid ? 'Invalid email format' : null),
          style: const TextStyle(color: Colors.white),
        );
      },
    );
  }
}
