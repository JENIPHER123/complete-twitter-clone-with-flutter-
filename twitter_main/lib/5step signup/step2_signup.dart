import 'package:flutter/material.dart';

class Step2Signup extends StatefulWidget {
  const Step2Signup({super.key});

  @override
  State<Step2Signup> createState() => _Step2SignupState();
}

class _Step2SignupState extends State<Step2Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('step2 signup page'),
      ),
    );
  }
}
