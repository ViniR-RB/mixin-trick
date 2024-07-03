import 'package:flutter/material.dart';
import 'package:hello_mixin/controllers/initial_controller.dart';
import 'package:hello_mixin/controllers/mixin_controller.dart';
import 'package:hello_mixin/pages/initial_page.dart';
import 'package:hello_mixin/pages/mixin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixin Poc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        /*   "/": (context) => InitialPage(
              controller: InitialController(),
            ), */
        "/": (context) => MixinPage(controller: MixinController())
      },
    );
  }
}
