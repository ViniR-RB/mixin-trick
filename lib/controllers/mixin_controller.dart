import 'package:hello_mixin/core/helpers/messages.dart';

class MixinController with MessageControllerMixin {
  Future<void> getUsers() async {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) => showSnackBar("Usuários Buscados Com Sucesso"),
    );
  }
}
