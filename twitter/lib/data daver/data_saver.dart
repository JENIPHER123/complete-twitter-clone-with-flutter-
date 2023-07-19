import 'package:flutter/material.dart';

class DataSaver extends StatefulWidget {
  const DataSaver({super.key});

  @override
  State<DataSaver> createState() => _DataSaverState();
}

class _DataSaverState extends State<DataSaver> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('data saver page'),),);
  }
}