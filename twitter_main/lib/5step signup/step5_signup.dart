import 'package:flutter/material.dart';

class Step5Signup extends StatefulWidget {
  const Step5Signup({super.key});

  @override
  State<Step5Signup> createState() => _Step5SignupState();
}

class _Step5SignupState extends State<Step5Signup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('step5 signup page'),
      ),
    );
  }
}
