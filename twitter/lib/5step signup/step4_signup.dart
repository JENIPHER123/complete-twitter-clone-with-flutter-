import 'package:flutter/material.dart';

class Step4Signup extends StatefulWidget {
  const Step4Signup({super.key});

  @override
  State<Step4Signup> createState() => _Step4SignupState();
}

class _Step4SignupState extends State<Step4Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('step4 signup page'),
      ),
    );
  }
}
