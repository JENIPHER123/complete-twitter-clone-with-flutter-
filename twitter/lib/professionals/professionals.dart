import 'package:flutter/material.dart';

class Professionals extends StatefulWidget {
  const Professionals({super.key});

  @override
  State<Professionals> createState() => _ProfessionalsState();
}

class _ProfessionalsState extends State<Professionals> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('professionals page'),
      ),
    );
  }
}
