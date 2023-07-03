import 'package:flutter/material.dart';

class SingletonPage extends StatelessWidget {
  const SingletonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Singleton')),
      body: const Column(children: []),
    );
  }
}