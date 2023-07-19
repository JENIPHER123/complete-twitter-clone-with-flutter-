import 'package:flutter/material.dart';

class SettingsAndPrivacy extends StatefulWidget {
  const SettingsAndPrivacy({super.key});

  @override
  State<SettingsAndPrivacy> createState() => _SettingsAndPrivacyState();
}

class _SettingsAndPrivacyState extends State<SettingsAndPrivacy> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('settings and privacy'),
      ),
    );
  }
}
