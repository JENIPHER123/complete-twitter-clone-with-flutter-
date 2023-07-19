import 'package:flutter/material.dart';

class Step3Signup extends StatefulWidget {
  const Step3Signup({super.key});

  @override
  State<Step3Signup> createState() => _Step3SignupState();
}

class _Step3SignupState extends State<Step3Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('step3 signup page'),
      ),
    );
  }
}
