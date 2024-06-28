import 'package:pkl_get/app/data/colors.dart';
import 'package:pkl_get/app/data/custombtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Material(
                    elevation: 5.0, // Add elevation
                    shape:
                        const CircleBorder(), // Ensure the shadow follows the circular shape of the icon
                    child: const Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/forgot.png',
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: const Text(
                    'Lupa Password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Container(
                    width: width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna latar belakang putih
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.black,
                          width: 1), // Garis hitam di pinggir
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: TextField(
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
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: AppColors.backgroundColor, fontSize: 18),
                          fillColor: Colors
                              .transparent, // Warna latar belakang inputan transparan
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .02),
                Center(
                  child: Container(
                    width: width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna latar belakang putih
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.black,
                          width: 1), // Garis hitam di pinggir
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: TextField(
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
                          fillColor: Colors
                              .transparent, // Warna latar belakang inputan transparan
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .02),
                Center(
                  child: CustomBtn(
                    onPressed: () {
                      Get.toNamed('/forgot-otp');
                    },
                    width: width * .9,
                    text: "Reset Password",
                    btnColor: AppColors.primaryColor,
                    btnTextColor: Colors.black,
                    elevation: 4,
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
