import 'package:get/get.dart';

import '../controllers/forgot_otp_controller.dart';

class ForgotOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotOtpController>(
      () => ForgotOtpController(),
    );
  }
}
