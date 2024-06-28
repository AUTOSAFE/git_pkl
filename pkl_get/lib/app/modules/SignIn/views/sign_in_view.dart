import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sign_in_controller.dart';
import 'package:pkl_get/app/data/colors.dart';
import 'package:pkl_get/app/data/custombtn.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isObscure = true;
  bool? checked = false;

  @override
  Widget build(BuildContext context) {
    final SignInController _SignInController = Get.find();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/signin.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.05),
                Container(
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 1), // Garis hitam di pinggir
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      style: TextStyle(
                          color: AppColors.backgroundColor, fontSize: 18),
                      onChanged: _SignInController.setValueUsername,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis di dalam inputan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis saat fokus
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.black,
                        width: 1), // Garis hitam di pinggir
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextField(
                      obscureText: isObscure,
                      onChanged: _SignInController.setValuePassword,
                      style: TextStyle(
                          color: AppColors.backgroundColor, fontSize: 18),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis di dalam inputan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0), // Tanpa garis saat fokus
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: AppColors.backgroundColor, fontSize: 18),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                        fillColor: Colors
                            .transparent, // Warna latar belakang inputan transparan
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checked,
                            onChanged: (value) {
                              checked = value;
                            },
                          ),
                          Text(
                            "simpan saya",
                            style: TextStyle(
                                color: AppColors.backgroundColor, fontSize: 16),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/forgot');
                        },
                        child: Text(
                          "Lupa password?",
                          style: TextStyle(
                              color: AppColors.backgroundColor, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * .01),
                GestureDetector(
                  onTap: () {},
                  child: CustomBtn(
                    onPressed: _SignInController.login,
                    width: width * .9,
                    text: "LOGIN",
                    btnColor: AppColors.primaryColor,
                    btnTextColor: Colors.black,
                    elevation: 5, // Tambahkan elevasi di sini
                  ),
                ),
                SizedBox(height: height * .02),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/sign-up');
                  },
                  child: CustomBtn(
                    width: width * .9,
                    text: "Buat akun",
                    btnColor: AppColors.color,
                    btnTextColor: Colors.black,
                    elevation: 5, // Tambahkan elevasi di sini
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
