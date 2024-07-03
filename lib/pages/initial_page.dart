import 'package:flutter/material.dart';
import 'package:hello_mixin/controllers/initial_controller.dart';

class InitialPage extends StatelessWidget {
  final InitialController controller;
  const InitialPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Buscar Usuários"),
          onPressed: () {
            controller.getUsers(context);
          },
        ),
      ),
    );
  }
}
