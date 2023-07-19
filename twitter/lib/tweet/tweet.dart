import 'package:flutter/material.dart';

class Tweet extends StatefulWidget {
  const Tweet({super.key});

  @override
  State<Tweet> createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('tweet page'),
      ),
    );
  }
}
