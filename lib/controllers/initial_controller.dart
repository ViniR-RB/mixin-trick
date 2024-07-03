import 'package:flutter/material.dart';

class InitialController {
  Future<void> getUsers(BuildContext context) async {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Usuários Buscados Com Sucesso "))),
    );
  }
}
