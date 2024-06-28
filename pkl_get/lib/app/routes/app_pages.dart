import 'package:get/get.dart';
import 'package:pkl_get/app/modules/navbar/navbar.dart';

import '../modules/SignIn/bindings/sign_in_binding.dart';
import '../modules/SignIn/views/sign_in_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/berita/binding/berita_binding.dart';
import '../modules/berita/screen/home_berita.dart';
import '../modules/forgot/bindings/forgot_binding.dart';
import '../modules/forgot/views/forgot_view.dart';
import '../modules/forgot_otp/bindings/forgot_otp_binding.dart';
import '../modules/forgot_otp/views/forgot_otp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/menu_lainnya/bindings/menu_lainnya_binding.dart';
import '../modules/menu_lainnya/views/menu_lainnya_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/report/bindings/report_binding.dart';
import '../modules/report/views/report_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NAVBAR(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT,
      page: () => const ForgotView(),
      binding: ForgotBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_OTP,
      page: () => const ForgotOtpView(),
      binding: ForgotOtpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.BERITA,
      page: () => const HomeBerita(),
      binding: BeritaBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MENU_LAINNYA,
      page: () => MenuLainnyaView(),
      binding: MenuLainnyaBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => const ReportView(),
      binding: ReportBinding(),
    ),
  ];
}
