import 'package:flutter/material.dart';

class Step1Signup extends StatefulWidget {
  const Step1Signup({super.key});

  @override
  State<Step1Signup> createState() => _Step1SignupState();
}

class _Step1SignupState extends State<Step1Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('step1 signup page'),
      ),
    );
  }
}
