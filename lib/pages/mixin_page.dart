import 'package:flutter/material.dart';
import 'package:hello_mixin/controllers/mixin_controller.dart';
import 'package:hello_mixin/core/helpers/messages.dart';

class MixinPage extends StatefulWidget {
  final MixinController controller;
  const MixinPage({super.key, required this.controller});

  @override
  State<MixinPage> createState() => _MixinPageState();
}

class _MixinPageState extends State<MixinPage> with MessageViewMixin {
  late final MixinController controller;

  @override
  void initState() {
    controller = widget.controller;
    messageListener(controller);
    super.initState();
  }

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
            controller.getUsers();
          },
        ),
      ),
    );
  }
}
