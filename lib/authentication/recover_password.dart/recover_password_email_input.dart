import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rccg_cod/authentication/recover_password.dart/email_otp.dart';
import 'package:rccg_cod/authentication/signup/signup_cubit.dart';
import 'package:rccg_cod/authentication/signup/signup_state.dart';
import 'package:rccg_cod/dash.dart';
import 'package:rccg_cod/dashboard/dashboard.dart';
import 'package:rccg_cod/utils/constants.dart';

class ReceoverPasswordEmailInput extends StatefulWidget {
  const ReceoverPasswordEmailInput({super.key});

  @override
  State<ReceoverPasswordEmailInput> createState() =>
      _ReceoverPasswordEmailInputState();
}

class _ReceoverPasswordEmailInputState
    extends State<ReceoverPasswordEmailInput> {
  // final _controller = AdvancedSegmentController('all');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bodyBackgroundColor,
          elevation: 0.0,
        ),
        backgroundColor: bodyBackgroundColor,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Stack(children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/logo.png"))),
              // SizedBox(height:120,),
              Container(
                  margin: EdgeInsets.only(top: 150),
                  child: const Text(
                    "Recover Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  )),
              // SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: SegmentedTabControl(
                  backgroundColor: Colors.grey.shade400,
                  indicatorColor: Colors.orange.shade200,
                  tabTextColor: Colors.black,
                  selectedTabTextColor: Colors.white,
                  tabs: const [
                    SegmentTab(
                      label: 'Email',
                      color: buttonColor,
                    ),
                    SegmentTab(
                      label: 'Phone Number',
                      // backgroundColor: buttonColor,
                      color: buttonColor,
                      selectedTextColor: Colors.white,
                    ),
                  ],
                ),
              ),
              // Sample pages
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // Column(children: [
                    //   _EmailInput(),
                    //   SizedBox(
                    //     height: 20,
                    //   ),
                    //   _ProceedEmailButton(),
                    // ]),
                    EmailOTP(),

                    Column(children: [
                      _PhoneInput(),
                      SizedBox(
                        height: 20,
                      ),
                      _ProceedPhoneButton(),
                    ]),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatefulWidget {
  @override
  State<_EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<_EmailInput> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      // buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        if (state is EmailInvalid) {
        } else if (state is EmailInvalid) {}
        return Container(
          margin: EdgeInsets.only(top: 120),
          child: TextField(
            key: const Key('signUpForm_emailInput_textField'),
            onChanged: (email) =>
                context.read<SignupCubit>().validateEmail(email),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Enter your registered email',
                labelText: "Email",
                prefixIcon: const Icon(Icons.mail),
                hintStyle: const TextStyle(color: Colors.blue),
                errorText:
                    state is EmailInvalid ? 'Invalid email format' : null),
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

class _PhoneInput extends StatefulWidget {
  @override
  State<_PhoneInput> createState() => _PhoneInputState();
}

class _PhoneInputState extends State<_PhoneInput> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      // buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        if (state is EmailInvalid) {
        } else if (state is EmailInvalid) {}
        return Container(
          margin: EdgeInsets.only(top: 120),
          child: TextField(
            key: const Key('signUpForm_phonenput_textField'),
            onChanged: (email) =>
                context.read<SignupCubit>().validateEmail(email),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Enter your registered phone number',
                labelText: "Phone number",
                prefixIcon: const Icon(Icons.phone),
                hintStyle: const TextStyle(color: Colors.blue),
                errorText:
                    state is EmailInvalid ? 'Invalid email format' : null),
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}

class _ProceedEmailButton extends StatelessWidget {
  const _ProceedEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.all(16.0), // Set button padding
        ),
        onPressed: () {
          // Handle login button press
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Dashboard()));
        },
        child: const Text(
          'Proceed',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ProceedPhoneButton extends StatelessWidget {
  const _ProceedPhoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.all(16.0), // Set button padding
        ),
        onPressed: () {
          // Handle login button press
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Dashboard()));
        },
        child: const Text(
          'Proceed',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
