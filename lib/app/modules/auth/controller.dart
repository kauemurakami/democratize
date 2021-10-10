import 'package:democratize_app/app/modules/auth/repository.dart';

import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthRepository repository;
  AuthController(this.repository);

  login(a) {
    print('login');
    return 'a';
  }

  signup(a) {
    print('cadastro');
    return 'a';
  }

  recoverypass(a) {
    print('recovery pass');
    return 'a';
  }
}
