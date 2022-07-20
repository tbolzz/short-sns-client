import 'package:flutter/material.dart';

class Write extends StatelessWidget {
  const Write({Key? key}) : super(key: key);

  static Route get route => 
      MaterialPageRoute(builder: (_) => const Write());

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'write',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}