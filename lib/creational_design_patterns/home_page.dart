
import 'package:flutter/material.dart';
import 'abstract_factory/ui/abstract_factory.dart';
import 'factory_method/ui/factory_method_page.dart';
import 'prototype/ui/prototype_page.dart';
import 'singleton/ui/singleton_page.dart';
import 'builder/ui/builder_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Button(text: 'Factory Method', page: FactoryMethodPage()),
            _Button(text: 'Abstract Factory', page: AbstractFactoryPage()),
            _Button(text: 'Builder', page: BuilderPage()),
            _Button(text: 'Prototype', page: PrototypePage()),
            _Button(text: 'Singleton', page: SingletonPage()),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.text,
    required this.page,
  });
  final String text;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Text(text),
      ),
    );
  }
}
