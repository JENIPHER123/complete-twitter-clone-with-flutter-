import 'package:flutter/material.dart';

class TwitterAdds extends StatefulWidget {
  const TwitterAdds({super.key});

  @override
  State<TwitterAdds> createState() => _TwitterAddsState();
}

class _TwitterAddsState extends State<TwitterAdds> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('twitter adds page'),
      ),
    );
  }
}
