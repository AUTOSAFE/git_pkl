import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final RxString username = ''.obs;
  final RxString password = ''.obs;
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  void setValueUsername(String val) {
    username.value = val;
  }

  void setValuePassword(String val) {
    password.value = val;
  }

  Future<void> saveCredentials() async {
    await secureStorage.write(key: 'username', value: username.value);
    await secureStorage.write(key: 'password', value: password.value);
  }

  Future<void> loadCredentials() async {
    username.value = await secureStorage.read(key: 'username') ?? '';
    password.value = await secureStorage.read(key: 'password') ?? '';
  }

  void login() {
    if (username.value == 'admin' && password.value == 'admin') {
      saveCredentials();
      Get.offAllNamed('/home');
    } else {
      Get.snackbar('GAGAL LOGIN', 'Username atau Password Salah');
    }
  }
}