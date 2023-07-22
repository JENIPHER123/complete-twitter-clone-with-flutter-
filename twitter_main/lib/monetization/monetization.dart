import 'package:flutter/material.dart';

class Monetization extends StatefulWidget {
  const Monetization({super.key});

  @override
  State<Monetization> createState() => _MonetizationState();
}

class _MonetizationState extends State<Monetization> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('monetization page'),),);
  }
}